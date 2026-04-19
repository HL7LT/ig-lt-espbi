# Lithuanian ESPBI Implementation Guide (ig-lt-espbi)

FHIR R5 Implementation Guide for the Lithuanian national e-health system
(**ESPBI IS**). Covers both the document-level E-forms (E003, E014,
E027, EVAI01, …) and the underlying resource-level profiles (Patient,
Practitioner, Observation, …), plus the eLAB laboratory workflow.

Rewrite of <https://simplifier.net/espbi-is-fhir5>, restructured to
align with the shared HL7 LT building blocks.

| | |
|---|---|
| **Canonical** | `http://esveikata.lt/fhir` |
| **Package id** | `lt.esveikata.fhir` |
| **FHIR version** | R5 (5.0.0) |
| **Current version** | `0.0.1` (draft) |
| **Publisher** | Registrų centras |
| **License** | MIT (see [LICENSE](LICENSE)) |

## Status

Migration from Simplifier JSON to FSH is complete. `sushi .` compiles
with **0 errors** on `main`. 31 ESPBI root profiles were re-parented
to their HL7 LT base equivalents in Phase 3; approximately **770
profiles now transitively inherit `LTBase` / `LTLab` constraints**.

The full IG Publisher run still reports outstanding findings captured
in [todo.md](todo.md) — see also
[overview-of-migration-process.md](overview-of-migration-process.md)
for the high-level summary and recommendations (including the proposal
to split this IG into smaller domain IGs). Detailed per-phase reports
live in [fix1.md](fix1.md) (metadata-rule repair),
[fix2.md](fix2.md) (LTBase re-parenting), and the phase tracker in
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

Build knobs relevant to this IG:

- [`ig.ini`](ig.ini) — IG Publisher entry point (points at the
  generated `ImplementationGuide-*.json`, template reference).
- [`fsh.ini`](fsh.ini) — `[FSH] timeout = 1200` (seconds). Gives the
  SUSHI step 20 minutes for full-tree rebuilds of the ~1,150 ESPBI
  FSH profiles.
- [`sushi-config.yaml`](sushi-config.yaml) — SUSHI config (id,
  canonical, dependencies, menu, parameters). **Do not reorder** the
  `dependencies:` block.
- [`.claude/settings.json`](.claude/settings.json) — permissions
  allowlist for Claude Code users and matching 20-minute Bash
  timeout.

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

Three scripts in `scripts/`, each idempotent (safe to re-run) and with
`--dry-run` where applicable:

- **`migrate-simplifier-with-chef.sh`** — converts JSON under
  `simplifier/` to FSH via a locally-running
  [TermX Chef](https://github.com/kodality/termx-chef) (GoFSH-backed)
  container. Classifies each resource by `resourceType` / `kind` /
  `baseDefinition` into seven ordered buckets (terminology-cs → vs →
  datatypes → extensions → generic → dependent → compositions) and
  writes output to `input/fsh/migrated/<bucket>/<id>.fsh`. Output is
  gitignored on `main`; retained on `release-0.1.0` as a historical
  snapshot. See [input/migration.md](input/migration.md).

- **`fix-profile-metadata-rules.py`** — rewrite of profile metadata
  rules (`* url = …` → `* ^url = …`, `* status = "draft"` →
  `* ^status = #draft`, etc.) and invalid `Id:` directives across the
  existing FSH tree. See [fix1.md](fix1.md) for numbers (4,129 → 0
  SUSHI errors across 1,151 files).

- **`reparent-to-ltbase.py`** — deterministic re-parenting driver
  with a baked-in mapping. Switches a root ESPBI profile's `Parent:`
  from a FHIR core resource to its `LTBase` / `LTLab` equivalent;
  refuses to modify a file whose current `Parent:` does not match the
  expected value, so stale mappings cannot silently overwrite
  reviewed files. Supports `--list`, `--cluster=<name>`,
  `--cluster=all`. See [fix2.md](fix2.md).

## Branches and releases

| Branch | Purpose |
|---|---|
| `main` | latest reviewed state; compiles with 0 SUSHI errors |
| `release-0.1.0` | snapshot with the `input/fsh/migrated/` GoFSH output from the first migration pass (218 files) |
| `release-0.2.0` | post-fix-#1 clean-state snapshot (0 SUSHI errors after the metadata-rule repair) |
| `release-0.3.0` | post-Phase-3 snapshot: 31 ESPBI roots re-parented to `LTBase` / `LTLab`; IG canonical aligned to `http://esveikata.lt/fhir` |

## Reference documentation

- **[overview-of-migration-process.md](overview-of-migration-process.md)** — high-level summary of the three-phase
  migration, tooling, and recommendations (including the proposal to
  split ESPBI into smaller domain IGs).
- **[input/pagecontent/index.md](input/pagecontent/index.md)** — IG
  introduction, phase tracker, achieved-results section,
  re-parenting map, Phase 3 order.
- **[input/migration.md](input/migration.md)** — Simplifier JSON →
  FSH migration narrative, bucket counts, GoFSH problems observed,
  post-conversion review checklist.
- **[fix1.md](fix1.md)** — mechanical metadata-rule repair +
  duplicate-merge (4,129 → 0 SUSHI errors).
- **[update1.md](update1.md)** — Phase 2 design pass summary.
- **[fix2.md](fix2.md)** — Phase 3 re-parenting report, cluster by
  cluster.
- **[todo.md](todo.md)** — outstanding IG Publisher QA findings and
  prioritised action list.
- **[migration.md](migration.md)** — machine-generated per-run log
  from the Simplifier migration script.

## Naming conventions

ESPBI uses the `LtEspbi*` prefix historically. The HL7 LT
workspace-wide convention favours a `*LtEspbi` / `*-lt-espbi` suffix.
Profile and file names that still use the prefix form are candidates
for a future rename sweep.
