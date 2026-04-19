Over the last few working sessions I migrated the national ESPBI
dataset from the Simplifier project
(<https://simplifier.net/espbi-is-fhir5>) into the new HL7 LT FHIR
repository at <https://github.com/HL7LT/ig-lt-espbi>. This note
summarises how we approached it, the current state, and my
recommendations for next steps.

## Methodology

We worked the migration in three phases, each landed as a separate
pull request and snapshotted on its own `release-x.y.z` branch so
every intermediate state is reproducible. The ground rules were:

- Use **FHIR Shorthand (FSH)** and the **SUSHI** compiler for every
  artefact — no hand-maintained JSON going forward.
- Drive the conversion through well-known open-source tooling
  (GoFSH + fsh-sushi via TermX Chef) rather than ad-hoc regexes.
- Keep the Implementation Guide compilable with **0 SUSHI errors**
  before each merge.
- After every phase, publish a short markdown report into the repo
  describing what changed, what was observed, and what is still open.

## Step 1 — Migrate Simplifier JSON to FSH

Converted 1,151 FHIR JSON resources under `simplifier/` into FSH using
TermX Chef (an HTTP wrapper around GoFSH). The script is reusable
with a `--dry-run` option and classifies each file automatically so
we did not need per-file handling.

Output is preserved as a historical snapshot on release-0.1.0.

Links:

- Methodology and observed problems:
  <https://github.com/HL7LT/ig-lt-espbi/blob/main/input/migration.md>
- Snapshot of the generated FSH output (including the files that
  triggered downstream errors, e.g. the lab nomenclature CodeSystem):
  <https://github.com/HL7LT/ig-lt-espbi/tree/release-0.1.0/input/fsh/migrated>

## Step 2 — Fix compilation errors

After Step 1, the existing hand-authored FSH that had been imported
from earlier attempts produced **4,129 SUSHI errors**. The dominant
cause was a malformed profile-metadata pattern repeated across
~1,150 files (`* url = …` used as an element rule instead of the
caret syntax `* ^url = …`; `status` assigned as a string instead of
a code; invalid `Id:` values like `foo.structuredefinition`).

The fix landed in two passes:

1. A scripted mechanical rewrite across 1,151 files.
2. A short manual pass to resolve structural duplicates (four eLAB
   Profile pairs, eleven URL-tail Id collisions, one orphan Parent).

Outcome: **4,129 → 0 errors** (–99.6%).

Links:

- Full report (per-pattern counts, before/after tables, residual items):
  <https://github.com/HL7LT/ig-lt-espbi/blob/main/fix1.md>
- Clean-state snapshot:
  <https://github.com/HL7LT/ig-lt-espbi/tree/release-0.2.0>

## Step 3 — Adopt HL7 LT base profiles (LTBase) across ESPBI

With the IG compiling cleanly we moved ESPBI onto the shared HL7 LT
foundation. The ESPBI tree has 63 "root" profiles whose `Parent:` was
a bare FHIR core resource; everything else cascades from those roots
through internal ESPBI "domain" profiles (one profile,
`LtEspbiObservationDomain`, has 662 descendants).

We re-parented 31 roots (the ones with an HL7 LT equivalent) to their
`LTBase` / `LTLab` counterparts in six reviewable clusters. About
**770 profiles now transitively inherit HL7 LT base constraints** as a
result of ~30 single-line edits. Throughout, `sushi .` kept compiling
with **0 errors**.

The remaining 33 ESPBI roots stay on bare FHIR for now — no LTBase
equivalent exists today (Bundle, Binary, AllergyIntolerance,
AdverseEvent, Consent, Coverage, Device*, Medication*, Immunization*,
Provenance, Questionnaire*, Communication, List, ChargeItem, Task,
VisionPrescription, Ingredient, Substance). They are candidates for
a future LTBase addition if cross-IG usage emerges.

Links:

- Cluster-by-cluster report with before/after tables:
  <https://github.com/HL7LT/ig-lt-espbi/blob/main/fix2.md>
- Updated IG narrative (phase tracker + re-parenting map +
  achieved-results section):
  <https://github.com/HL7LT/ig-lt-espbi/blob/main/input/pagecontent/index.md>
- Snapshot after Step 3:
  <https://github.com/HL7LT/ig-lt-espbi/tree/release-0.3.0>

## Tooling produced during this work

All three scripts are idempotent, reusable, and documented:

- **`scripts/migrate-simplifier-with-chef.sh`** — classifies and
  converts Simplifier JSON to FSH via a locally-running TermX Chef
  (GoFSH) container. Seven ordered buckets, dry-run mode, machine
  log.
- **`scripts/fix-profile-metadata-rules.py`** — rewrites malformed
  profile metadata rules across any FSH tree; 4,129 → 0 errors in
  one pass.
- **`scripts/reparent-to-ltbase.py`** — deterministic re-parenting
  driver with a baked-in mapping; refuses to modify files whose
  current `Parent:` does not match the expected value, so it is safe
  to re-run.

Repository README and IG pagecontent have been updated so anyone new
can reproduce the compile locally with a single `sushi .` or the
full IG build via `java -jar ../publisher.jar -ig .`.

## Recommendations

1. **QA is not yet clean.** `sushi .` reports 0 errors, but the full
   IG Publisher run (`output/qa.html`) currently reports **2,333
   errors and 3,161 warnings**. The majority (~2,150 errors) are
   URL-canonical mismatches that have since been addressed by
   realigning the IG canonical (merged into `main`); a fresh QA run is
   required to confirm the new floor. Findings, remaining items, and
   prioritised actions are captured in
   <https://github.com/HL7LT/ig-lt-espbi/blob/main/todo.md>.

2. **The IG is too large to publish as a single artefact.** The tree
   contains on the order of **42,000 files** once generated output is
   included, covering both document-level E-forms (46 codes) and
   resource-level profiles (1,162 StructureDefinitions). A single IG
   publisher run takes tens of minutes on a developer laptop; the
   rendered IG site is hard to navigate for a reader looking for a
   specific E-form; and review/validation cycles scale linearly with
   file count. I recommend **splitting ESPBI into several smaller IGs**,
   one per coherent domain (e.g. `ig-lt-espbi-patient-admin`,
   `ig-lt-espbi-dokumentai-clinical`, `ig-lt-espbi-elab`,
   `ig-lt-espbi-medication`, etc.), each depending on `LTBase`. Benefits:

   - Each IG site becomes human-readable (50–200 artefacts vs. ~1,200).
   - Incremental publishing: changes to one E-form do not force the
     entire ESPBI to rebuild.
   - Independent versioning aligned with the corresponding business
     domain.
   - Faster feedback: a cluster build runs in minutes, not tens of
     minutes.

3. **Hardware for full IG compilation.** The IG Publisher's full run
   with terminology expansion is currently the bottleneck. I have
   already raised the local build timeout to 20 minutes (`fsh.ini`
   `[FSH] timeout = 1200`), but a long-term split (recommendation 2)
   or a dedicated CI runner with ≥8 GB heap will be needed to keep
   build times sustainable as ESPBI grows.

4. **Follow-up technical debt** (all captured in `todo.md`):
   - 15 profiles use the obsolete R4 extension
     `structuredefinition-implements` — a one-line delete per file.
   - ~1,470 warnings propagate from `LTBase` experimental ValueSet
     bindings; suppress short-term via `ignoreWarnings.txt`, ask
     LTBase upstream to remove the `experimental` flag long-term.
   - 62 extensions declare `Context: Element` which is too broad —
     needs modelling judgement to narrow each.
   - 171 profiles lack a `Description:` field.
   - 950 profiles lack examples — content deliverable, not a
     compile blocker.

## Current status

| Milestone                                    | Status |
|----------------------------------------------|--------|
| Simplifier JSON → FSH migration              | done   |
| `sushi .` compiles with 0 errors             | done   |
| Re-parent ESPBI roots to LTBase / LTLab      | done   |
| Canonical URL alignment with IG canonical    | done   |
| IG Publisher full-QA clean                   | open   |
| Split into smaller IGs                       | open / recommended |

Happy to walk through any of the reports above on a call, or to open
a follow-up work plan for the split-IG proposal.

Best regards,
Igor
