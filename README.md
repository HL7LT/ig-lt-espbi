# Lithuanian ESPBI Implementation Guide (ig-lt-espbi)

FHIR R5 Implementation Guide for the Lithuanian national e-health system
(**ESPBI IS**). Covers both the document-level E-forms (E003, E014,
E027, EVAI01, …) and the underlying resource-level profiles (Patient,
Practitioner, Observation, …), plus the eLAB laboratory workflow.

Rewrite of <https://simplifier.net/espbi-is-fhir5>, restructured to
align with the shared HL7 LT building blocks.

| | |
|---|---|
| **Canonical** | `http://esveikata.lt/fhir/espbi` |
| **Package id** | `lt.esveikata.fhir.espbi` |
| **FHIR version** | R5 (5.0.0) |
| **Current version** | `0.0.1` (draft) |
| **Publisher** | Registrų centras |
| **License** | MIT (see [LICENSE](LICENSE)) |

## Status

Active migration from Simplifier JSON to FSH. `sushi .` compiles with
**0 errors** as of PR #1. See [input/migration.md](input/migration.md)
for the full migration narrative and the current phase plan in
[input/pagecontent/index.md](input/pagecontent/index.md).

## Build

Requires [SUSHI](https://fshschool.org/docs/sushi/) and — for full IG
generation — the HL7 FHIR IG Publisher.

```bash
# FSH → FHIR JSON (fast, for local iteration):
sushi .

# Full IG site (writes to ./output):
java -jar ../publisher.jar -ig .

# Convenience scripts:
./_genonce.sh         # single IG build
./_gencontinuous.sh   # rebuild on file changes
./_updatePublisher.sh # fetch the latest publisher.jar
```

## Project structure

Historical Simplifier layout, preserved to make migration diffable:

- **`input/fsh/Resursai/`** — resource-level profiles grouped by FHIR
  resource type (`Patient/`, `Observation/`, `Practitioner/`, …).
- **`input/fsh/Dokumentai/`** — document-level profiles grouped by
  E-form code (`E003/`, `E014/`, `E027-VA/`, `EVAI01/`, …).
- **`input/fsh/eLAB/`** — laboratory workflow profiles, extensions,
  CodeSystems, and ValueSets.
- **`input/fsh/terminology/`** — shared CodeSystem / ValueSet
  definitions not specific to a single E-form.
- **`input/fsh/examples/`** — example Instances.
- **`input/fsh/rulesets/`** — shared `RuleSet:` and `Invariant:` blocks.
- **`input/fsh/alias-*.fsh`**, **`Aliases.fsh`** — canonical URL aliases.
- **`input/pagecontent/`** — narrative IG pages (Markdown).
- **`simplifier/`** — original Simplifier JSON sources (tracked for
  reference; not part of the FSH build).
- **`scripts/`** — migration tooling (Simplifier → FSH via TermX Chef;
  mechanical FSH fix-ups).

Generated output (`fsh-generated/`, `output/`, `input-cache/`, `temp/`,
`template/`) is gitignored.

## Dependencies (FHIR packages)

Declared in `sushi-config.yaml`:

- `lt.hl7.fhir.base` — [LTBase](https://github.com/HL7LT/ig-lt-base) —
  common Lithuanian profiles for Patient, Practitioner, Observation, …
- `lt.hl7.fhir.lifestyle` — [LTLifestyle](https://github.com/HL7LT/ig-lt-lifestyle)
- `lt.hl7.fhir.vitalsigns` — [LTVitalSigns](https://github.com/HL7LT/ig-lt-vitalsigns)
- `lt.hl7.fhir.lab` — [LTLab](https://github.com/HL7LT/ig-lt-lab)
- `lt.hl7.fhir.eu` — HL7 Europe snapshot
- `hl7.fhir.eu.base-r5` — EU base profiles

**Do not reorder** dependencies in `sushi-config.yaml` — order affects
FHIR package resolution.

## Migration tooling

Two scripts in `scripts/`:

- **`migrate-simplifier-with-chef.sh`** — converts JSON under
  `simplifier/` to FSH via a locally-running
  [TermX Chef](https://github.com/kodality/termx-chef) (GoFSH-backed)
  container. Classifies each resource by `resourceType` / `kind` /
  `baseDefinition` into seven ordered buckets (terminology-cs → vs →
  datatypes → extensions → generic → dependent → compositions) and
  writes output to `input/fsh/migrated/<bucket>/<id>.fsh`. Output is
  gitignored on `main`; retained on `release-*` branches as a
  historical snapshot. See [input/migration.md](input/migration.md).

- **`fix-profile-metadata-rules.py`** — idempotent rewrite of profile
  metadata rules (`* url = …` → `* ^url = …`, etc.) and invalid `Id:`
  directives across the existing FSH tree. Takes `--dry-run`. See
  [fix1.md](fix1.md) for details and numbers (4,129 → 0 SUSHI errors).

## Branches and releases

| Branch | Purpose |
|---|---|
| `main` | latest reviewed state; compiles with 0 SUSHI errors |
| `release-0.1.0` | snapshot including the `input/fsh/migrated/` GoFSH output from the first migration pass (218 files) |
| `release-0.2.0` | post-fix-PR#1 snapshot (0 errors) |

## Reference documentation

- **[input/pagecontent/index.md](input/pagecontent/index.md)** — IG
  introduction + phase-by-phase migration plan (Phase 2 re-parenting
  map, Phase 3 order).
- **[input/migration.md](input/migration.md)** — Simplifier JSON → FSH
  migration narrative, bucket counts, GoFSH problems observed,
  post-conversion review checklist.
- **[fix1.md](fix1.md)** — mechanical metadata-rule repair +
  duplicate-merge that took the first compile from 4,129 → 0 errors.
- **[update1.md](update1.md)** — Phase 2 design summary (re-parent
  ESPBI roots to HL7 LT base profiles).
- **[migration.md](migration.md)** — machine-generated per-run log
  from the Simplifier migration script.

## Naming conventions

ESPBI uses the `LtEspbi*` prefix historically. The HL7 LT workspace-wide
convention favours a `*LtEspbi` / `*-lt-espbi` suffix, being rolled out
as part of Phase 3; where profile and file names still use the prefix
form, they will be migrated alongside the re-parenting work described
in `index.md`.
