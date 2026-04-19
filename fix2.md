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
| 2 | `clinical-singletons` |     7 | ⏳ pending          | — |
| 3 | `document-carriers`   |     6 | ⏳ pending          | — |
| 4 | `observation`         |     2 | ⏳ pending (674-profile cascade) | — |
| 5 | `specimen`            |     2 | ⏳ pending          | — |
| 6 | `imaging`             |     1 | ⏳ pending          | — |

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
