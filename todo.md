# todo — IG Publisher QA findings

Based on the QA run that produced [`output/qa.html`](output/qa.html)
(compact form in [`output/qa-eslintcompact.txt`](output/qa-eslintcompact.txt)).
**`sushi .` on its own still compiles with 0 errors** — these come
from the full IG Publisher run, which applies stricter validation.

> **Canonical URL mismatches fixed.** The ~2,150 URL-mismatch errors
> (including the `ttp://` typo and the stray external resources) that
> dominated the original QA run have been resolved upstream and are
> no longer tracked here. A fresh `qa.html` will reflect the reduced
> error count once re-run.

## Remaining errors

### 1. Missing `structuredefinition-implements` extension — **30 errors**

```
The extension http://hl7.org/fhir/StructureDefinition/structuredefinition-implements
  could not be found so is not allowed here (STRUCTURE)
No definition could be found for URL value
  'http://hl7.org/fhir/StructureDefinition/structuredefinition-implements' (INVALID)
```

15 profiles (each flagged twice — once STRUCTURE, once INVALID) use
the `structuredefinition-implements` extension, which is **not defined
in FHIR R5 core** (it was removed/renamed in R5). Affected:

- `lt-espbi-medication-knowledge`
- `lt-espbi-medication-knowledge-e063`
- `lt-espbi-operation-definition`
- `lt-espbi-questionnaire` + `-34129-7`, `-3472-3`, `-69730-0`, … —
  grep for the full list with:
  `grep -l "structuredefinition-implements" input/fsh/`

**Fix:** remove the caret rule that sets this extension (these files
were migrated from R4-style SDs; the property is obsolete in R5).
Single-line delete per file.

### 2. HL7 publishing working-group extension required — **1 error (may already be gone)**

```
When HL7 is publishing a resource, the owning committee must be stated
using the http://hl7.org/fhir/StructureDefinition/structuredefinition-wg extension
```

One resource: `StructureDefinition-translation.json`. The error
triggered because its `^url` began with `http://hl7.org/...`, so the
IG Publisher treated it as an HL7-published resource. If the
canonical-URL fix already relocated or renamed this resource, this
entry can be dropped after the next QA run; keep it on the list until
confirmed.

## Warnings — by root cause

### Warnings directly caused by Phase 3 re-parenting — **≈1,470 warnings**

| Element binding | Warning count | Source |
|---|---:|---|
| `Observation.referenceRange.type` bound to experimental VS | 687 | `ObservationLt` in LTBase |
| `Observation.category` bound to experimental VS | 687 | `ObservationLt` in LTBase |
| `List.mode` bound to experimental VS | 47 | FHIR core List (via LtEspbiList) |
| `Procedure.status` bound to experimental VS | 17 | `ProcedureLt` |
| `Condition.participant.function`, `Condition.bodySite` | 14+14 | `ConditionLt` |
| `ServiceRequest.status/priority/intent` | 7×3 | `ServiceRequestLt` |
| `ValueSet.versionAlgorithm[x]`, `ValueSet.jurisdiction` | 9+9 | ShareableValueSet on our CSs/VSs |

The LTBase / FHIR core bindings our profiles now inherit point to
ValueSets that still carry `experimental = true`. The IG Publisher
says our profile should therefore also be `experimental`.

**Fix options:**

- **(A) Flag our profiles `experimental`** — set `^experimental = true`
  on every affected ESPBI root. Honest for a draft IG but may break
  consumer expectations.
- **(B) Suppress via `ignoreWarnings.txt`** — list the specific
  VS URLs so the IG Publisher demotes these to information. File
  already exists in the repo.
- **(C) Ask LTBase to stop labelling those VSs experimental** — the
  real fix. The flag is almost certainly stale on widely-used bindings.

**Recommendation:** B short-term, C long-term.

### Author-review warnings — **≈1,300 warnings**

| Pattern                                               | Count | Meaning |
|-------------------------------------------------------|------:|---------|
| `contains no examples for this profile`               |   950 | No `Instance: …` authored for the profile |
| `contains no examples for this extension`             |   175 | Same, for extensions |
| `ImplementationGuide.definition.resource.description` missing | 171 | `Description:` missing or not picked up |

Expected at this stage — examples and descriptions are a content
deliverable, not a technical blocker. Track but do not block Phase 4.

### Modelling warnings — **~100**

| Warning                                                              | Count | Action |
|----------------------------------------------------------------------|------:|--------|
| Extension has `Context: Element` (too broad)                         |  62 | Narrow each extension's `Context:` to the actual target resource/element. |
| Published VS SHOULD conform to ShareableValueSet (missing `experimental`) | 13 | Add `* ^experimental = false` to every VS. |
| Published CS SHOULD conform to ShareableCodeSystem (missing `experimental`) | 12 | Add `* ^experimental = false` to every CS. |
| Published CS SHOULD conform to ShareableCodeSystem (missing `caseSensitive`) | 12 | Add `* ^caseSensitive = true` to every CS. |
| `CodeSystem has content = 'complete'` but no concepts                |  12 | Either add concepts or change `content` to `not-present`/`fragment`. |
| Slicing `must-support` mismatch on ImagingStudy.identifier           |   2 | Mark sliced `studyInstanceUid` as must-support or change parent slicing. |
| Parent builds on experimental resource (DeviceDispense)              |   1 | Flag `lt-espbi-device-dispence` experimental. |
| `pattern[x] should be used rather than fixed[x]` (eld-24) constraint failed | ~20 | Change `* X = "Y"` to `* X.* = "Y"` (pattern rule) where practical. |

### Noise / harmless warnings

- `An HTML fragment from the set […] is not included anywhere in the
  produced implementation guide` — 3 instances (ip-statements,
  dependency-table, globals-table). These are template fragments that
  the IG template expects but the current `input/pagecontent/` layout
  doesn't render. Either add the missing includes or switch templates.

## Prioritised action list

| # | Item                                                                                               | Scope | Automatable | Est. delta |
|---|---|---|---|---|
| 1 | Remove `^implements = …structuredefinition-implements…` from 15 profiles                          | 15 files | regex sweep | −30 errors |
| 2 | Confirm `StructureDefinition-translation` no longer triggers the WG-extension error after the URL fix; if it still does, relocate or renamespace | 1 file | manual | −1 error |
| 3 | Extend `input/ignoreWarnings.txt` with the experimental-VS patterns from LTBase                   | 1 file | manual | −1,470 warnings |
| 4 | Add `^experimental = false` + `^caseSensitive = true` to every VS/CS that triggers the ShareableVS/ShareableCS warnings | ~12 files | regex sweep | −37 warnings |
| 5 | Narrow 62 extensions' `Context:` from `Element` to specific target(s)                             | 62 files | manual (needs modelling judgement) | −62 warnings |
| 6 | Author examples for the most-used profiles (at least: Patient, Practitioner, Observation, DiagnosticReport, Composition) | growing | no | −N warnings progressively |
| 7 | Add `Description:` to every profile/extension (171 missing)                                        | 171 files | partial (migrate from `^definition`) | −171 warnings |

After items **1–2** land, expected error count drops to ~0 (from the
~180 that remained after the canonical-URL fix). Items 3–7 work the
warning backlog.
