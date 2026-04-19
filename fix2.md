# fix2: Phase 3 — re-parent ESPBI roots to HL7 LT base profiles

Applying the re-parenting plan from `input/pagecontent/index.md`:
ESPBI profiles whose current `Parent:` is a FHIR core resource switch
to the corresponding HL7 LT base profile (`LTBase`, with `LTLab` as the
specialty fallback for Specimen). Each cluster is landed as one
commit; `sushi .` is re-run after every cluster to catch constraint
conflicts early.

Driver: [`scripts/reparent-to-ltbase.py`](scripts/reparent-to-ltbase.py)
— deterministic mapping baked in, refuses to modify files whose
current `Parent:` does not match the expected FHIR core value, and
supports `--dry-run` / `--list` / `--cluster=<name>` / `--cluster=all`.

Usage:

```bash
scripts/reparent-to-ltbase.py --list
scripts/reparent-to-ltbase.py --cluster=admin --dry-run
scripts/reparent-to-ltbase.py --cluster=admin
sushi .
```

## Progress

| # | Cluster               | Files | Status              | SUSHI after |
|---|-----------------------|------:|---------------------|-------------|
| 1 | `admin`               |    13 | ✅ done             | **0 errors** |
| 2 | `clinical-singletons` |     7 | ✅ done             | **0 errors** |
| 3 | `document-carriers`   |     6 | ✅ done             | **0 errors** |
| 4 | `observation`         |     2 | ✅ done (674-profile cascade) | **0 errors** |
| 5 | `specimen`            |     2 | ✅ done             | **0 errors** |
| 6 | `imaging`             |     1 | ✅ done             | **0 errors** |

## Cluster 1 — Administrative resources (done)

13 root ESPBI profiles re-parented from bare FHIR resources to the
corresponding `…Lt` profile in LTBase. Low risk — these resources have
no internal domain descendants, so the blast radius is exactly the 13
files listed.

| File                                                                                             | Before                     | After                 |
|--------------------------------------------------------------------------------------------------|----------------------------|-----------------------|
| `input/fsh/Resursai/Patient/LtPatient.StructureDefinition.fsh`                                   | `Patient`                  | `PatientLt`           |
| `input/fsh/eLAB/Patient_eLAB.StructureDefinition.fsh`                                            | `Patient`                  | `PatientLt`           |
| `input/fsh/Resursai/Practitioner/LtPractitioner.fsh`                                             | `Practitioner`             | `PractitionerLt`      |
| `input/fsh/eLAB/Practitioner_eLAB.StructureDefinition.fsh`                                       | `Practitioner`             | `PractitionerLt`      |
| `input/fsh/Resursai/PractitionerRole/LtPractitionerRole.fsh`                                     | `PractitionerRole`         | `PractitionerRoleLt`  |
| `input/fsh/Resursai/PractitionerRole/LtEspbiPractitionerRoleSpecialUser.StructureDefinition.fsh` | `PractitionerRole`         | `PractitionerRoleLt`  |
| `input/fsh/eLAB/PractitionerRole_eLAB.StructureDefinition.fsh`                                   | `PractitionerRole`         | `PractitionerRoleLt`  |
| `input/fsh/Resursai/Organization/LtOrganization.fsh`                                             | `Organization`             | `OrganizationLt`      |
| `input/fsh/eLAB/Organization_eLAB.StructureDefinition.fsh`                                       | `Organization`             | `OrganizationLt`      |
| `input/fsh/Resursai/Location/LtLocation.StructureDefinition.fsh`                                 | `Location`                 | `LocationLt`          |
| `input/fsh/Resursai/RelatedPerson/LtRelatedPerson.StructureDefinition.fsh`                       | `RelatedPerson`            | `RelatedPersonLt`     |
| `input/fsh/eLAB/HealthcareService_eLAB.StructureDefinition.fsh`                                  | `HealthcareService`        | `HealthcareServiceLt` |
| `input/fsh/Resursai/EpisodeOfCare/LtEpisodeOfCare.StructureDefinition.fsh`                       | `EpisodeOfCare`            | `EpisodeOfCareLt`     |

**Result:** `sushi .` compiles with **0 errors** (1 pre-existing
warning). No conflicts surfaced from the LTBase tightening.

## Cluster 2 — Clinical singletons (done)

7 root profiles re-parented. Fan-out inherited by their ESPBI
descendants:

- `LtEspbiCondition` → `ConditionLt`: pulls `LtEspbiConditionDeathCauseDomain`
  (10 descendants) and `LtEspbiConditionDeathDomain` (1) along for the
  ride, so ~12 profiles now conform to `ConditionLt`.
- `LtEspbiDiagnosticReport` → `DiagnosticReportLt`: pulls
  `LtEspbiDiagnosticReportDomain` (7 descendants) — 8 profiles total.
- `LtEspbiDocumentReference` → `DocumentReferenceLt`: 10 direct
  descendants.
- `LtEspbiProcedure` → `ProcedureLt`: pulls `LtEspbiProcedureDomain`
  (15 descendants) — 16 profiles total.
- `LtEspbiGoal` → `GoalLt`: singleton.

| File                                                                       | Before                | After                  |
|----------------------------------------------------------------------------|-----------------------|------------------------|
| `input/fsh/Resursai/Condition/LtCondition.StructureDefinition.fsh`         | `Condition`           | `ConditionLt`          |
| `input/fsh/Resursai/Procedure/LtProcedure.StructureDefinition.fsh`         | `Procedure`           | `ProcedureLt`          |
| `input/fsh/Resursai/Goal/LtGoal.StructureDefinition.fsh`                   | `Goal`                | `GoalLt`               |
| `input/fsh/Resursai/DiagnosticReport/LtDiagnosticReport.StructureDefinition.fsh` | `DiagnosticReport` | `DiagnosticReportLt`   |
| `input/fsh/eLAB/DiagnosticReport_eLAB.StructureDefinition.fsh`             | `DiagnosticReport`    | `DiagnosticReportLt`   |
| `input/fsh/Resursai/DocumentReference/LtDocumentReference.StructureDefinition.fsh` | `DocumentReference` | `DocumentReferenceLt`  |
| `input/fsh/eLAB/DocumentReference_eLAB.StructureDefinition.fsh`            | `DocumentReference`   | `DocumentReferenceLt`  |

Note: `ElabDiagnosticReport` targets `DiagnosticReportLt` for
symmetry with the generic report profile. `LaboratoryReportLt` (a
more specific LTBase profile) was considered but not chosen — the
pre-existing `ElabDiagnosticReport` differential does not yet match
the laboratory-report shape, so aligning to it would require
simultaneous structural changes. Deferred to a future increment.

**Result:** `sushi .` compiles with **0 errors**. Approximately **55
ESPBI profiles** now conform to LTBase via cluster 2 (7 roots + 48
transitively-inheriting descendants).

## Cluster 3 — Document carriers (done)

6 root profiles. The heaviest fan-out in this cluster is
`LtEspbiComposition`:

- `LtEspbiComposition` → `CompositionLt`: pulls
  `LtEspbiCompositionDomain` (46 descendants) and
  `LtEspbiCompositionDiagnostics` (2) along — ≈ **48 profiles**
  inherit.
- `ElabCompositionE200` → `LaboratoryCompositionLt`: the one case in
  Phase 3 where we chose a specialty LTBase profile (the laboratory
  composition) over the generic one — this is the right fit for an
  eLAB E200 envelope.
- `LtEspbiServiceRequest` → `ServiceRequestLt`: 5 direct descendants.
- `LtEspbiCarePlan` → `CarePlanLt`: 2 via `LtEspbiCarePlanDomain`.
- `LtEspbiEncounter` → `EncounterLt`: 2 direct descendants.

| File                                                                   | Before                | After                      |
|------------------------------------------------------------------------|-----------------------|----------------------------|
| `input/fsh/Resursai/Composition/LtComposition.fsh`                     | `Composition`         | `CompositionLt`            |
| `input/fsh/eLAB/Composition_E200_eLAB.StructureDefinition.fsh`         | `Composition`         | `LaboratoryCompositionLt`  |
| `input/fsh/Resursai/ServiceRequest/LtServiceRequest.StructureDefinition.fsh` | `ServiceRequest` | `ServiceRequestLt`         |
| `input/fsh/eLAB/ServiceRequest_eLAB.StructureDefinition.fsh`           | `ServiceRequest`      | `ServiceRequestLt`         |
| `input/fsh/Resursai/CarePlan/LtCarePlan.StructureDefinition.fsh`       | `CarePlan`            | `CarePlanLt`               |
| `input/fsh/Resursai/Encounter/LtEncounter.StructureDefinition.fsh`     | `Encounter`           | `EncounterLt`              |

**Result:** `sushi .` compiles with **0 errors**. Approximately **61
ESPBI profiles** now conform to LTBase via cluster 3 (6 roots + 55
transitively-inheriting descendants).

## Cluster 4 — Observation (done, heaviest cascade)

The risky step: `LtEspbiObservation` has 12 direct descendants and
`LtEspbiObservationDomain` (a child of `LtEspbiObservation`) has 662
descendants. Re-parenting two files propagates `ObservationLt`'s
constraints through **674 ESPBI profiles**.

| File                                                              | Before          | After            |
|-------------------------------------------------------------------|-----------------|------------------|
| `input/fsh/Resursai/Observation/LtObservation.StructureDefinition.fsh` | `Observation`  | `ObservationLt`  |
| `input/fsh/eLAB/ObservationBase_eLAB.StructureDefinition.fsh`     | `Observation`   | `ObservationLt`  |

**Result:** `sushi .` compiles with **0 errors**. The Phase 2
design's noted risk — "expect ≥1 round of post-reparenting fixes for
tighter vital-signs / lab / lifestyle bindings" — did not
materialise. `ObservationLt` in the current LTBase build is
constraint-compatible with every downstream ESPBI Observation
profile; no conflict fix-ups were needed.

## Cluster 5 — Specimen (done)

The only cluster that targets `LTLab` rather than `LTBase`, since
LTBase does not profile Specimen.

| File                                                              | Before        | After            |
|-------------------------------------------------------------------|---------------|------------------|
| `input/fsh/Resursai/Specimen/LtSpecimen.StructureDefinition.fsh`  | `Specimen`    | `SpecimenLtLab`  |
| `input/fsh/eLAB/Specimen_eLAB.StructureDefinition.fsh`            | `Specimen`    | `SpecimenLtLab`  |

**Result:** `sushi .` compiles with **0 errors**.

## Cluster 6 — Imaging (done)

| File                                                                          | Before         | After            |
|-------------------------------------------------------------------------------|----------------|------------------|
| `input/fsh/Resursai/ImagingStudy/LtImagingStudy.StructureDefinition.fsh`      | `ImagingStudy` | `ImagingStudyLt` |

**Result:** `sushi .` compiles with **0 errors**.

## Summary

31 root files re-parented across 6 clusters. `sushi .` compiles with
**0 errors** at every increment, and **0 errors** at the end of Phase 3.
Approximately **~770 ESPBI profiles now transitively inherit HL7 LT
constraints**:

- 13 admin roots (low fan-out)
- 7 clinical-singleton roots + ~48 domain descendants
- 6 document-carrier roots + ~55 domain descendants
- 2 Observation roots + 672 via `LtEspbiObservationDomain` and direct
  children
- 2 Specimen roots (→ LTLab)
- 1 Imaging root

33 ESPBI roots remain on FHIR core as documented in the Phase 2 plan
— no LTBase / LTLab equivalent exists today for them (Bundle, Binary,
AllergyIntolerance, AdverseEvent, Consent, Coverage, Device*,
Medication*, Immunization*, Provenance, Questionnaire*, Communication,
List, ChargeItem, Task, VisionPrescription, Ingredient, Substance).
These stay as-is until the corresponding LTBase profiles are authored
or until we decide they belong only in ESPBI.

## How to re-apply / verify

```bash
# Quick inventory:
scripts/reparent-to-ltbase.py --list

# Verify nothing drifted — a fully-applied tree reports changed=0
# for every cluster (all lines "already-done"):
scripts/reparent-to-ltbase.py --cluster=all

# Full compile check:
sushi .
```
