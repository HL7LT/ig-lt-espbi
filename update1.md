# update1 — Phase 2 design pass

Documents what changed in the planning round that locked in the ESPBI →
HL7 LT re-parenting strategy. No profiles were modified; all output of
this round is analysis and documentation.

## Summary

- **`input/pagecontent/index.md`** rewritten: phase tracker updated
  (Phases 0 and 1 marked done), Phase 2 filled in with the full
  re-parenting map and cascade analysis, Phase 3 ordered by risk.
- **`update1.md`** (this file) added.

## Analysis performed

Surveyed the ESPBI FSH tree and the sibling HL7 LT IGs to decide where
each ESPBI root profile should hang.

### ESPBI profile shape

- Total profiles on `main`: **1,162** across `input/fsh/{Dokumentai,Resursai,eLAB}/`.
- **63 root profiles** declare a FHIR core resource as their `Parent:`
  (enumerated by a small Python walker over all `.fsh` files, skipping
  `migrated/`, `examples/`, `rulesets/`, `profiles/`).
- The remaining ~1,100 profiles parent from ESPBI-internal "domain"
  profiles, which themselves parent from the 63 roots. Dominant
  cascades:

  | Domain profile                        | Descendants |
  |---------------------------------------|------------:|
  | `LtEspbiObservationDomain`            |         662 |
  | `LtEspbiCompositionDomain`            |          46 |
  | `LtEspbiListDomain`                   |          44 |
  | `LtEspbiProcedureDomain`              |          15 |
  | `LtEspbiConditionDeathCauseDomain`    |          10 |
  | `LtEspbiDiagnosticReportDomain`       |           7 |
  | `LtEspbiCarePlanDomain`               |           2 |

  Re-parenting a single root therefore pulls along hundreds of
  descendants transitively, which is why the strategy focuses on the
  63 roots rather than the 1,100 leaves.

### Sibling IG inventory

Confirmed from `/Users/igor/source/hl7lt/ig-lt-*/input/fsh/profiles/`:

| IG            | Profiles | Relevant to ESPBI re-parenting |
|---------------|---------:|---------------------------------|
| LTBase        |       27 | 20 different resource types    |
| LTLab         |       35 | `SpecimenLtLab` + specialty tests |
| LTLifestyle   |       21 | Not used by ESPBI root profiles |
| LTVitalSigns  |        0 | Terminology only                |
| EU (`Hl7Eu`)  |        0 | Terminology only; EU base-r5 has the structural profiles |

LTBase covers the overwhelming majority of ESPBI's administrative and
common-clinical root profiles. LTLab covers Specimen. LTVitalSigns and
LTLifestyle do not contribute `Parent:` targets — they contribute
terminology and specialty observation profiles that individual ESPBI
leaf observations may bind to once Phase 3 is further along.

### Mapping decision

Classified the 63 roots into three buckets:

- **28 roots → LTBase** (covers every root whose current parent is a
  FHIR core resource that LTBase also profiles — Patient, Practitioner,
  PractitionerRole, Organization, Location, Encounter, EpisodeOfCare,
  Condition, Observation, Procedure, DiagnosticReport, DocumentReference,
  Composition, ServiceRequest, CarePlan, RelatedPerson, Goal, ImagingStudy,
  HealthcareService).
- **2 roots → LTLab** (`LtEspbiSpecimen` and `ElabSpecimen` →
  `specimen-lt-lab`).
- **33 roots stay on FHIR core** (no HL7 LT profile exists today for
  resources such as Bundle, Binary, AllergyIntolerance, AdverseEvent,
  Consent, Coverage, Device, Medication, Immunization, Provenance,
  Questionnaire, ChargeItem, Task, VisionPrescription, Ingredient,
  Substance, Communication, List). These are flagged in the plan as
  candidates for a future LTBase addition; they do not move in Phase 3.

## What Phase 3 will actually edit

One-line `Parent:` change per root file. For an ESPBI profile that
reads

```fsh
Profile: LtEspbiPatient
Parent: Patient
…
```

the change is simply

```fsh
Profile: LtEspbiPatient
Parent: PatientLt
…
```

No rewrite of the differential is planned; the only downstream edits
are reactive fixes for cases where LTBase tightens a binding or slices
an element differently and SUSHI flags the resulting conflict.

## Risks identified

- **`LtEspbiObservation` → `observation-lt`** cascades into 674 profiles
  in one step. Expect SUSHI to surface constraint conflicts that did
  not exist against bare `Observation`. Budgeted as the heaviest
  cluster in the Phase 3 order.
- **`laboratory-report-lt`** might be the right target for
  `ElabDiagnosticReport` instead of `diagnostic-report-lt`; decision
  deferred to when that increment lands so the actual fields can be
  compared.
- **Version pinning** — `sushi-config.yaml` currently declares
  `lt.hl7.fhir.base: current`. If a Phase 3 increment depends on a
  specific LTBase feature, that increment should also pin a concrete
  LTBase version.

## Files changed in this pass

- `input/pagecontent/index.md` — rewritten
- `update1.md` — new

No FSH files were edited. `sushi .` was not re-run (nothing changed that
would affect compilation).
