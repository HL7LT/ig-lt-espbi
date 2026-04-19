# ESPBI Implementation Guide

## Introduction and Purpose

This Implementation Guide is the FHIR R5 rewrite of the national Lithuanian ESPBI
dataset, originally authored in Simplifier
(<https://simplifier.net/espbi-is-fhir5>). Its aims are:

- consistent, high-quality structured data capture across healthcare providers,
- alignment with the shared HL7 LT building blocks (`LTBase`, `LTLifestyle`,
  `LTVitalSigns`, `LTLab`) and the EU EHDS base so that ESPBI resources compose
  naturally with the other national and European IGs.

## Scope

Covers both ESPBI document-level profiles under `!Dokumentai/` (E-forms —
E003, E014, E027, EVAI01, …) and the resource-level profiles under
`!Resursai/` (Patient, Practitioner, Observation, …), plus the eLAB
laboratory workflow under `eLAB/`.

## Goal

Adopt the ESPBI resources to HL7 LT and EU EHDS foundations so that
conformance against `ESPBI` implies conformance against the relevant
HL7 LT base profile.

## Migration Plan

The migration from Simplifier JSON into FSH under `input/fsh`, and the
subsequent harmonisation with the other HL7 LT IGs, is organised into
four phases.

### Phase 0 — Planning and documentation **(done)**

- Scope documented here and in `input/migration.md`.
- Target folder layout under `input/fsh` established
  (`Dokumentai/`, `Resursai/`, `eLAB/`, `terminology/`, …).
- Guide compiled before and after the first migration increment.

### Phase 1 — Initial FSH migration **(done)**

- Simplifier JSON (`simplifier/`) converted to FSH using the TermX Chef
  (GoFSH-backed) pipeline documented in `input/migration.md`; output for
  Phase 1's scope lives on `release-0.1.0`.
- Pre-existing hand-authored FSH under `Dokumentai/`, `Resursai/`, and
  `eLAB/` was rewritten to remove the 4,129 malformed profile-metadata
  rules (`* url = …` → `* ^url = …`, `* status = "draft"` → `* ^status = #draft`,
  filename-derived `Id:` directives normalised to URL-derived ids).
  Structural duplicates (four eLAB Profile pairs, eleven URL-tail Id
  collisions, one orphan Parent reference) were merged or renamed. See
  `fix1.md` for the full narrative.
- `sushi .` now compiles with **0 errors** and one pre-existing
  configuration warning.

### Phase 2 — Migration design (re-parent to HL7 LT base profiles) **(current)**

The ESPBI FSH tree today contains 1,162 profiles. 63 of them declare a
FHIR core resource as their `Parent:`; the other ~1,100 parent from
internal ESPBI "domain" profiles (`LtEspbiObservationDomain`,
`LtEspbiCompositionDomain`, `LtEspbiListDomain`, …) which in turn
parent from the 63 root profiles.

Because this hierarchy is narrow at the top (one `LtEspbiObservation`
root fans out into 662 `LtEspbiObservationDomain` descendants), **the
migration is done at the roots**: re-parenting the ~30 roots that have
an HL7 LT equivalent makes the entire descendant tree inherit the LT
constraints for free.

#### Preference

- **Prefer `LTBase`.** Any ESPBI root whose current parent is a FHIR
  core resource must switch to the corresponding `LTBase` profile when
  one exists.
- **Fall back to specialty LT IGs** (`LTLab`, `LTVitalSigns`,
  `LTLifestyle`) when `LTBase` does not cover the resource but a
  specialty IG does.
- **Keep the FHIR core parent** only when no HL7 LT or EU sibling IG
  profiles the resource (e.g. `Bundle`, `Binary`, administrative /
  financial resources).

#### Root re-parenting map

**`LTBase` (`lt.hl7.fhir.base`, canonical `https://hl7.lt/fhir/base`)** —
28 root profiles move here:

| ESPBI root                                | Current `Parent:`            | New `Parent:`             | LTBase profile id          |
|-------------------------------------------|------------------------------|---------------------------|----------------------------|
| `LtEspbiPatient`, `ElabPatient`           | `Patient`                    | `PatientLt`               | `patient-lt`               |
| `LtEspbiPractitioner`, `ElabPractitioner` | `Practitioner`               | `PractitionerLt`          | `practitioner-lt`          |
| `LtEspbiPractitionerRole`, `ElabPractitionerRole`, `LtEspbiPractitionerRoleSpecialUser` | `PractitionerRole` | `PractitionerRoleLt`   | `practitioner-role-lt`     |
| `LtEspbiOrganization`, `ElabOrganization` | `Organization`               | `OrganizationLt`          | `organization-lt`          |
| `LtEspbiLocation`                         | `Location`                   | `LocationLt`              | `location-lt`              |
| `LtEspbiEncounter`                        | `Encounter`                  | `EncounterLt`             | `encounter-lt`             |
| `LtEspbiEpisodeOfCare`                    | `EpisodeOfCare`              | `EpisodeOfCareLt`         | `episode-of-care-lt`       |
| `LtEspbiCondition`                        | `Condition`                  | `ConditionLt`             | `condition-lt`             |
| `LtEspbiObservation`, `ElabObservationBase` | `Observation`              | `ObservationLt`           | `observation-lt`           |
| `LtEspbiProcedure`                        | `Procedure`                  | `ProcedureLt`             | `procedure-lt`             |
| `LtEspbiDiagnosticReport`                 | `DiagnosticReport`           | `DiagnosticReportLt`      | `diagnostic-report-lt`     |
| `LtEspbiDocumentReference`, `ElabDocumentReference` | `DocumentReference` | `DocumentReferenceLt`    | `document-reference-lt`    |
| `LtEspbiComposition`                      | `Composition`                | `CompositionLt`           | `composition-lt`           |
| `ElabCompositionE200`                     | `Composition`                | `LaboratoryCompositionLt` | `laboratory-composition-lt`|
| `LtEspbiServiceRequest`, `ElabServiceRequest` | `ServiceRequest`         | `ServiceRequestLt`        | `service-request-lt`       |
| `LtEspbiCarePlan`                         | `CarePlan`                   | `CarePlanLt`              | `care-plan-lt`             |
| `LtEspbiRelatedPerson`                    | `RelatedPerson`              | `RelatedPersonLt`         | `related-person-lt`        |
| `LtEspbiGoal`                             | `Goal`                       | `GoalLt`                  | `goal-lt`                  |
| `LtEspbiImagingStudy`                     | `ImagingStudy`               | `ImagingStudyLt`          | `imaging-study-lt`         |
| `ElabHealthcareService`                   | `HealthcareService`          | `HealthcareServiceLt`     | `healthcare-service-lt`    |

Secondary candidate (`ElabDiagnosticReport` currently on `DiagnosticReport`) may
alternatively parent from `laboratory-report-lt` in LTBase — to be confirmed
during implementation.

**`LTLab` (`lt.hl7.fhir.lab`, canonical `https://hl7.lt/fhir/lab`)** —
2 root profiles move here:

| ESPBI root                    | Current `Parent:` | New `Parent:`  | LTLab profile id |
|-------------------------------|-------------------|----------------|------------------|
| `LtEspbiSpecimen`, `ElabSpecimen` | `Specimen`    | `SpecimenLtLab`| `specimen-lt-lab`|

**Remain on FHIR core** (no HL7 LT or EU equivalent profile today) —
33 roots:

`LtEspbiAdverseEvent`, `LtEspbiAllergyIntolerance`, `LtEspbiBinary`,
`ElabBundleE200`, `LtEspbiChargeItem`, `LtEspbiCommunication`,
`LtEspbiConsent`, `LtEspbiCoverage`, `LtEspbiCoverageEligibilityRequest`,
`LtEspbiCoverageEligibilityResponse`, `LtEspbiDevice`,
`LtEspbiDeviceDispense`, `LtEspbiDeviceRequest`, `LtEspbiDeviceUsage`,
`LtEspbiImmunization`, `LtEspbiImmunizationEvaluation`,
`LtEspbiImmunizationRecommendation`, `LtEspbiIngredient`, `LtEspbiList`,
`LtEspbiMedication`, `LtEspbiMedicationAdministration`,
`LtEspbiMedicationDispense`, `LtEspbiMedicationKnowledge`,
`LtEspbiMedicationRequest`, `LtEspbiMedicationStatement`,
`LtEspbiProvenance`, `ElabProvenance`, `LtEspbiQuestionnaire`,
`LtEspbiQuestionnaireResponse`, `LtEspbiSubstance`, `LtEspbiTask`,
`LtEspbiVisionPrescription`.

These are candidates for future LTBase additions if a shared profile
proves useful across IGs, but they are out of scope for Phase 3 as
configured today.

#### Cascade scope

Re-parenting the ~30 roots above pulls along, via the internal "domain"
profiles, the following descendant counts (measured by `Parent:`
declarations in `input/fsh/`):

| Root / domain                   | Direct descendants | Transitive fan-out                      |
|---------------------------------|-------------------:|-----------------------------------------|
| `LtEspbiObservation` (→ observation-lt)   | 12 direct + 662 via `LtEspbiObservationDomain` | 674 profiles |
| `LtEspbiComposition` (→ composition-lt)   |  2 direct + 46 via `LtEspbiCompositionDomain`  |  48 profiles |
| `LtEspbiList` (→ list — no LTBase)         |  2 direct + 44 via `LtEspbiListDomain`         |  46 profiles |
| `LtEspbiProcedure` (→ procedure-lt)       | 15 via `LtEspbiProcedureDomain`                 |  15 profiles |
| `LtEspbiDocumentReference` (→ document-reference-lt) | 10 direct      |  10 profiles |
| `LtEspbiCondition` (→ condition-lt)       |  2 direct + 10 via `LtEspbiConditionDeathCauseDomain` | 12 profiles |
| `LtEspbiDiagnosticReport` (→ diagnostic-report-lt) | 7 via `LtEspbiDiagnosticReportDomain` |   7 profiles |
| `LtEspbiProvenance` (→ provenance-lt n/a) |  6 direct                                      |   6 profiles |
| `LtEspbiServiceRequest` (→ service-request-lt) |  5 direct                                  |   5 profiles |
| `LtEspbiCarePlan` (→ care-plan-lt)        |  2 via `LtEspbiCarePlanDomain`                 |   2 profiles |
| …other single-parent roots…               | 1–2 each                                       |  ~20 profiles |

Total ≈ **850 profiles inherit LT constraints transitively** from the
≈ 30 single-file root re-parentings.

### Phase 3 — Implementation

The implementation will land in small, reviewable increments. Each
increment:

1. Picks **one** resource-type cluster (e.g. Patient, Observation,
   Composition).
2. Verifies the target LT profile exists in the declared dependency
   (`sushi-config.yaml`'s listed version) and that its required
   constraints are compatible with the ESPBI profile's existing
   differential. If a conflict is found — for example an ESPBI-fixed
   value that LTBase forbids — the conflict is resolved on the ESPBI
   side by relaxing the rule or documented as a divergence before the
   re-parenting happens.
3. Changes `Parent: <FhirCore>` → `Parent: <LtBaseProfileName>` on the
   root ESPBI profile (single line per file).
4. Runs `sushi .`; any new errors from the tighter base profile are
   fixed in the same increment (typically: element paths that LTBase
   slices differently, or terminology bindings that LTBase has
   strengthened).
5. Runs `java -jar ../publisher.jar -ig .` for a full IG build when the
   increment touches a root profile with heavy fan-out (Observation,
   Composition) to catch validation issues the SUSHI pass does not.
6. Commits with a message naming the cluster, the number of re-parented
   profiles, and the error delta.

Proposed order (cheap wins first, heaviest fan-out last):

1. **Administrative resources** — Patient, Practitioner, PractitionerRole, Organization, Location, RelatedPerson, HealthcareService, EpisodeOfCare. Low cardinality and no descendant fan-out. ~11 files.
2. **Clinical singletons** — Condition, Procedure, Goal, DiagnosticReport, DocumentReference. ~17 files direct, ~7 via ConditionDeathCauseDomain.
3. **Document carriers** — Composition, ServiceRequest, CarePlan, Encounter. ~55 files including domain descendants.
4. **Observation** (largest fan-out) — `LtEspbiObservation` → `observation-lt`. 674 profiles inherit. This is the risky one; expect ≥1 round of post-reparenting fixes for tighter vital-signs / lab / lifestyle bindings that LTBase profiles may have brought in via slicing.
5. **Specimen** — ESPBI Specimen roots re-parent to LTLab. ~2 files.
6. **Laboratory composition** — `ElabCompositionE200` → `laboratory-composition-lt`. 1 file.
7. **Imaging** — `LtEspbiImagingStudy` → `imaging-study-lt`. 1 file (+ any downstream eLAB imaging references).

At the end of Phase 3 the IG should still compile with 0 errors; any
increase is rolled back within the same increment and documented as a
divergence requiring LTBase coordination.

## Current Phase

**Phase 2 complete** — re-parenting map locked in above.
**Phase 3 in progress** — implementation will proceed cluster by
cluster as described in the phase order.

Additional context documents:

- `input/migration.md` — narrative of the Simplifier JSON → FSH
  conversion, bucket counts, observed problems.
- `fix1.md` — metadata-rule rewrite + duplicate merge that took the
  first compile from 4,129 → 0 errors.
- `update1.md` — summary of what changed in the Phase 2 planning pass.
