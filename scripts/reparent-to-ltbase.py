#!/usr/bin/env python3
"""Apply Phase 3 re-parenting: switch a root ESPBI profile's `Parent:`
from a FHIR core resource to its HL7 LT base equivalent.

Drives a cluster-at-a-time migration as planned in
`input/pagecontent/index.md`. Each cluster is invoked with
`--cluster=<name>`; the mapping is baked into this file so every
invocation is deterministic and replayable.

Usage:
    scripts/reparent-to-ltbase.py --list
    scripts/reparent-to-ltbase.py --cluster=admin [--dry-run]
    scripts/reparent-to-ltbase.py --cluster=all [--dry-run]

The script only ever touches `Parent:` lines. It refuses to modify a
file whose current `Parent:` does not match the expected FHIR core
value (to avoid re-applying a stale mapping to an already-migrated
file).
"""
from __future__ import annotations
import argparse, re, sys
from pathlib import Path

# Cluster → [(file, expected current Parent, new Parent), …]
CLUSTERS: dict[str, list[tuple[str, str, str]]] = {
    "admin": [
        ("input/fsh/Resursai/Patient/LtPatient.StructureDefinition.fsh",                    "Patient",            "PatientLt"),
        ("input/fsh/eLAB/Patient_eLAB.StructureDefinition.fsh",                             "Patient",            "PatientLt"),
        ("input/fsh/Resursai/Practitioner/LtPractitioner.fsh",                              "Practitioner",       "PractitionerLt"),
        ("input/fsh/eLAB/Practitioner_eLAB.StructureDefinition.fsh",                        "Practitioner",       "PractitionerLt"),
        ("input/fsh/Resursai/PractitionerRole/LtPractitionerRole.fsh",                      "PractitionerRole",   "PractitionerRoleLt"),
        ("input/fsh/Resursai/PractitionerRole/LtEspbiPractitionerRoleSpecialUser.StructureDefinition.fsh", "PractitionerRole", "PractitionerRoleLt"),
        ("input/fsh/eLAB/PractitionerRole_eLAB.StructureDefinition.fsh",                    "PractitionerRole",   "PractitionerRoleLt"),
        ("input/fsh/Resursai/Organization/LtOrganization.fsh",                              "Organization",       "OrganizationLt"),
        ("input/fsh/eLAB/Organization_eLAB.StructureDefinition.fsh",                        "Organization",       "OrganizationLt"),
        ("input/fsh/Resursai/Location/LtLocation.StructureDefinition.fsh",                  "Location",           "LocationLt"),
        ("input/fsh/Resursai/RelatedPerson/LtRelatedPerson.StructureDefinition.fsh",        "RelatedPerson",      "RelatedPersonLt"),
        ("input/fsh/eLAB/HealthcareService_eLAB.StructureDefinition.fsh",                   "HealthcareService",  "HealthcareServiceLt"),
        ("input/fsh/Resursai/EpisodeOfCare/LtEpisodeOfCare.StructureDefinition.fsh",        "EpisodeOfCare",      "EpisodeOfCareLt"),
    ],
    "clinical-singletons": [
        ("input/fsh/Resursai/Condition/LtCondition.StructureDefinition.fsh",                "Condition",          "ConditionLt"),
        ("input/fsh/Resursai/Procedure/LtProcedure.StructureDefinition.fsh",                "Procedure",          "ProcedureLt"),
        ("input/fsh/Resursai/Goal/LtGoal.StructureDefinition.fsh",                          "Goal",               "GoalLt"),
        ("input/fsh/Resursai/DiagnosticReport/LtDiagnosticReport.StructureDefinition.fsh",  "DiagnosticReport",   "DiagnosticReportLt"),
        ("input/fsh/eLAB/DiagnosticReport_eLAB.StructureDefinition.fsh",                    "DiagnosticReport",   "DiagnosticReportLt"),
        ("input/fsh/Resursai/DocumentReference/LtDocumentReference.StructureDefinition.fsh","DocumentReference",  "DocumentReferenceLt"),
        ("input/fsh/eLAB/DocumentReference_eLAB.StructureDefinition.fsh",                   "DocumentReference",  "DocumentReferenceLt"),
    ],
    "document-carriers": [
        ("input/fsh/Resursai/Composition/LtComposition.fsh",                                "Composition",        "CompositionLt"),
        ("input/fsh/eLAB/Composition_E200_eLAB.StructureDefinition.fsh",                    "Composition",        "LaboratoryCompositionLt"),
        ("input/fsh/Resursai/ServiceRequest/LtServiceRequest.StructureDefinition.fsh",      "ServiceRequest",     "ServiceRequestLt"),
        ("input/fsh/eLAB/ServiceRequest_eLAB.StructureDefinition.fsh",                      "ServiceRequest",     "ServiceRequestLt"),
        ("input/fsh/Resursai/CarePlan/LtCarePlan.StructureDefinition.fsh",                  "CarePlan",           "CarePlanLt"),
        ("input/fsh/Resursai/Encounter/LtEncounter.StructureDefinition.fsh",                "Encounter",          "EncounterLt"),
    ],
    "observation": [
        ("input/fsh/Resursai/Observation/LtObservation.StructureDefinition.fsh",            "Observation",        "ObservationLt"),
        ("input/fsh/eLAB/ObservationBase_eLAB.StructureDefinition.fsh",                     "Observation",        "ObservationLt"),
    ],
    "specimen": [
        ("input/fsh/Resursai/Specimen/LtSpecimen.StructureDefinition.fsh",                  "Specimen",           "SpecimenLtLab"),
        ("input/fsh/eLAB/Specimen_eLAB.StructureDefinition.fsh",                            "Specimen",           "SpecimenLtLab"),
    ],
    "imaging": [
        ("input/fsh/Resursai/ImagingStudy/LtImagingStudy.StructureDefinition.fsh",          "ImagingStudy",       "ImagingStudyLt"),
    ],
}

PARENT = re.compile(r"^Parent:\s*(\S+)\s*$")


def apply_cluster(name: str, dry: bool) -> tuple[int, int]:
    rows = CLUSTERS[name]
    changed = 0
    skipped = 0
    for rel, expected, new in rows:
        p = Path(rel)
        if not p.exists():
            print(f"  MISS {rel} (file not found)")
            skipped += 1
            continue
        lines = p.read_text(encoding="utf-8").splitlines(keepends=True)
        found = None
        for i, raw in enumerate(lines):
            m = PARENT.match(raw.rstrip("\r\n"))
            if m:
                found = (i, m.group(1))
                break
        if found is None:
            print(f"  MISS {rel} (no Parent: line)")
            skipped += 1
            continue
        idx, current = found
        if current == new:
            print(f"  already-done {rel}")
            skipped += 1
            continue
        if current != expected:
            print(f"  SKIP {rel} (expected Parent:{expected}, got Parent:{current})")
            skipped += 1
            continue
        eol = lines[idx][len(lines[idx].rstrip("\r\n")):]
        lines[idx] = f"Parent: {new}{eol}"
        if not dry:
            p.write_text("".join(lines), encoding="utf-8")
        print(f"  {rel}: Parent: {current} -> {new}")
        changed += 1
    return changed, skipped


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--cluster", default="admin")
    ap.add_argument("--list", action="store_true")
    ap.add_argument("--dry-run", action="store_true")
    args = ap.parse_args()

    if args.list:
        for name, rows in CLUSTERS.items():
            print(f"{name:20s}  {len(rows)} file(s)")
        return 0

    targets = list(CLUSTERS) if args.cluster == "all" else [args.cluster]
    total_changed = total_skipped = 0
    for c in targets:
        if c not in CLUSTERS:
            print(f"unknown cluster: {c}", file=sys.stderr)
            return 2
        print(f"=== cluster: {c} ({len(CLUSTERS[c])} targets) ===")
        ch, sk = apply_cluster(c, args.dry_run)
        print(f"    changed={ch} skipped={sk}")
        total_changed += ch
        total_skipped += sk
    print(f"total: changed={total_changed} skipped={total_skipped}" + (" (dry-run)" if args.dry_run else ""))
    return 0


if __name__ == "__main__":
    sys.exit(main())
