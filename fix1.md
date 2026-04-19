# fix1: metadata-rule repair (PR #1)

Reduced `sushi .` errors from **4,129 to 17** (99.6%) by rewriting malformed
profile metadata rules across the hand-authored FSH tree. This was the
dominant source of compilation noise on `main` and blocked any meaningful
downstream validation.

## What was broken

The FSH files under `input/fsh/{Dokumentai,Resursai,eLAB}/` — about 1,150
of them — had been produced by an earlier ad-hoc conversion pass that
emitted profile metadata as element rules instead of caret (`^`) rules.
Typical header:

```fsh
Profile: LtEspbiCommunication
Parent: Communication
Id: ltcommunication.structuredefinition
Title: "LtEspbiCommunication"
* url = "http://esveikata.lt/fhir/StructureDefinition/lt-espbi-communication"
* name = "LtEspbiCommunication"
* status = "draft"
```

Four things are wrong here, and they compound:

1. `* url = …` / `* name = …` / `* date = …` / `* publisher = …` are
   **element rules** in FSH. SUSHI tries to resolve `url`, `name`, etc.
   as paths inside the resource's differential, finds nothing, and emits
   `No element found at path url for AssignmentRule in …, skipping rule`.
2. `status` is a FHIR `code`, not a `string`. `* status = "draft"` tries
   to assign a string to a code-typed path, producing
   `Cannot assign string value: draft. Value does not match element type: code`.
3. The `Id:` directive is filename-derived — lowercased with a literal
   `.structuredefinition` suffix and often an embedded `_` (not a valid
   FHIR id character). Each such id triggered
   `The string "…" does not represent a valid FHIR id.`.
4. Because `^url` / `^name` / `^status` were never actually set,
   dependent rules later in the file couldn't resolve against the
   profile's computed metadata, cascading into
   `Cannot assign this element using a pattern …` and
   `Cannot assign "X" …; a different uri is already assigned: "Y"`
   errors when the default auto-generated URL conflicted with a
   downstream fixed value.

## Error breakdown before the fix (sushi on `main`, 4,129 total)

| Pattern                                                                   | Count |
|---------------------------------------------------------------------------|------:|
| `Cannot assign string value: draft. Value does not match element type: code` | 882 |
| `does not represent a valid FHIR id.`                                     |   698 |
| `No element found at path url for AssignmentRule …, skipping rule`        |   692 |
| `No element found at path name for AssignmentRule …, skipping rule`       |   692 |
| `Cannot assign this element using a pattern; as it is already assigned …` |   174 |
| `Cannot assign "X" to this element; a different uri/string is already assigned` | 106 |
| Duplicate SDs, assignment-syntax errors, parser errors                    |   ~885 |

These split cleanly into three root causes: "metadata-as-element-rule"
(the bulk), invalid `Id:` directives, and a long tail of case-by-case
issues unrelated to the conversion bug.

## The fix

### 1. Mechanical rewrite of metadata rules

New script [scripts/fix-profile-metadata-rules.py](scripts/fix-profile-metadata-rules.py)
walks `input/fsh/**/*.fsh` (skipping `input/fsh/migrated/` and
alias/ruleset files) and applies these substitutions, in place:

| Before                       | After                          |
|------------------------------|--------------------------------|
| `* url = "X"`                | `* ^url = "X"`                 |
| `* name = "X"`               | `* ^name = "X"`                |
| `* status = "draft"` (or `active`/`retired`/`unknown`) | `* ^status = #draft` |
| `* date = "X"`               | `* ^date = "X"`                |
| `* publisher = "X"`          | `* ^publisher = "X"`           |
| `* description = "X"`        | `* ^description = "X"`         |
| `* version = "X"`            | `* ^version = "X"`             |
| `* experimental = true`      | `* ^experimental = true`       |
| `Id: foo.structuredefinition`, `Id: foo_bar` | `Id: foo` (derived from `* url`'s last path segment, or sanitised) |

The `Id:` rewrite prefers the last segment of the profile's canonical
URL — that is both a valid FHIR id and matches the naming already
encoded in the URL the previous author chose. When the URL is absent,
the script falls back to stripping the `.structuredefinition` suffix
and replacing `_` with `-`.

Only files that start with `Profile:`, `Extension:`, `Logical:`,
`Resource:`, `CodeSystem:`, `ValueSet:`, or `Instance:` are touched —
alias files, rulesets, and invariant definitions are left alone.

The script is idempotent (running it a second time changes nothing) and
has a `--dry-run` flag that reports counts without writing.

### Run results

```
scanned 1166 files, rewrote 1151
  date         53
  id           1073
  name         1126
  publisher    45
  status       1151
  url          1151
```

### 2. Parent directive typos

Three files had misspelt `Parent:` names. Fixed by hand:

| File | Before | After |
|---|---|---|
| `input/fsh/Resursai/ChargeItem/MyChargeItem.StructureDefinition.fsh`           | `Parent: Chargeitem`              | `Parent: ChargeItem`              |
| `input/fsh/Dokumentai/EVAI01/LtEspbiDeviceDispenseEvai_01.StructureDefinition.fsh` | `Parent: LtEspbiDeviceDispence`   | `Parent: LtEspbiDeviceDispense`   |
| `input/fsh/Dokumentai/EVAI01/LtEspbiMedicationDispenseEvai_01.StructureDefinition.fsh` | `Parent: LtEspbiMedicationDispence` | `Parent: LtEspbiMedicationDispense` |

The target profiles already existed under the correct spelling; these
were just `Dispence` → `Dispense` and `Chargeitem` → `ChargeItem`
transcription errors.

## Result after the mechanical pass: 4,129 → 17 errors

```
| Don't be shell-shocked.               17 Errors       1 Warning |
```

## Second pass: merge duplicates

After the mechanical rewrite landed, the 17 remaining errors fell into
three categories: duplicate Profile/Extension names between sibling
files, duplicate Ids caused by URL-tail collisions across different
resource contexts, and one orphan `Parent:` reference. All need per-case
decisions, handled by the steps below.

### Step 1 — Merge eLAB Profile pairs (5 duplicate-name errors → 0)

Four pairs in `input/fsh/eLAB/` each declared the same `Profile:` name
in two sibling files — a full Lithuanian/English definition in
`*_eLAB.StructureDefinition.fsh` and a shorter English-only stub in
`Elab*.fsh`. The stubs were added later and never fully populated.

For each pair we **kept the `*_eLAB` file** (it already has `^url`,
`^status`, `^date`, `^publisher`, and the bilingual `Description`),
**merged in the stub's more natural English `Title:`**, and
**deleted the stub**:

| Kept                                                 | Title merged from stub        | Deleted                        |
|------------------------------------------------------|-------------------------------|--------------------------------|
| `input/fsh/eLAB/DiagnosticReport_eLAB.StructureDefinition.fsh` | `"eLAB Diagnostic Report"`     | `input/fsh/eLAB/ElabDiagnosticReport.fsh` |
| `input/fsh/eLAB/Observation_eLAB.StructureDefinition.fsh`      | `"eLAB Observation"`           | `input/fsh/eLAB/ElabObservation.fsh`      |
| `input/fsh/eLAB/ObservationBase_eLAB.StructureDefinition.fsh`  | `"eLAB Observation Base"`      | `input/fsh/eLAB/ElabObservationBase.fsh`  |
| `input/fsh/eLAB/Specimen_eLAB.StructureDefinition.fsh`         | `"eLAB Specimen"`              | `input/fsh/eLAB/ElabSpecimen.fsh`         |

While editing `DiagnosticReport_eLAB.StructureDefinition.fsh` we also
normalised two camelCase identifiers to kebab-case to match the rest
of the IG and the stub's convention:

| Field   | Before                              | After                                |
|---------|-------------------------------------|--------------------------------------|
| `Id:`   | `elab-diagnosticreport`             | `elab-diagnostic-report`             |
| `^url`  | `.../elab-diagnosticReport`         | `.../elab-diagnostic-report`         |

### Step 2 — Disambiguate the `LtEspbiExtStatusWho` name clash (1 duplicate-name error → 0)

The file `input/fsh/Resursai/MedicationRequest/LtExtStatusWho.StructureDefinition.fsh`
declared `Extension: LtEspbiExtStatusWho`, colliding with the
identically-named extension in `Resursai/MedicationDispense/`.
Because the URL on each side was different, the intent was clearly two
distinct extensions — the MedicationRequest-side Extension name had
been copy-pasted from the MedicationDispense version and never
renamed to match its filename.

Renamed the MedicationRequest-side extension to match its filename:

| Field   | Before                    | After                    |
|---------|---------------------------|--------------------------|
| Header  | `Extension: LtEspbiExtStatusWho` | `Extension: LtExtStatusWho` |
| `Title:`| `"LtEspbiExtStatusWho"`   | `"LtExtStatusWho"`       |
| `^name` | `"LtEspbiExtStatusWho"`   | `"LtExtStatusWho"`       |
| `Id:`   | `statusWho`               | `lt-ext-status-who`      |

### Step 3 — Replace colliding URL-tail-derived Ids with Profile-name-derived Ids (11 duplicate-Id errors → 0)

When two or three files in different resource folders share the same
last-URL-segment, the Id script in the mechanical pass produced the
same `Id:` for all of them. Because each file's `Profile:`/`Extension:`
name already encodes the resource context (`LtEspbiExtDevStatusWho`
vs `LtEspbiExtStatusWho`), we fell back to a Profile-name-kebab-cased
Id for the 22 files in the 11 collision groups. Applied by
`/tmp/fix-dup-ids.py` (one-shot, not retained in the repo), all
produced unique Ids:

| Original colliding Id          | File → New Id                                                                                                                                                                                                            |
|--------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `statusWho`                    | `Resursai/DeviceRequest/LtEspbiExtStatusWho.…` → `lt-espbi-ext-dev-status-who`; `Resursai/MedicationDispense/LtEspbiExtStatusWho.…` → `lt-espbi-ext-status-who` (MedicationRequest-side already renamed in step 2)           |
| `prescriptionStatus`           | `.../DeviceRequest/LtEspbiExtPrescriptionStatus.…` → `lt-espbi-ext-dev-prescription-status`; `.../MedicationRequest/LtExtPrescriptionStatus.…` → `lt-espbi-ext-prescription-status`                                         |
| `paperPrescriptionTags`        | `.../DeviceRequest/LtEspbiExtDevPaperPrescriptionTags.…` → `lt-espbi-ext-dev-paper-prescription-tags`; `.../MedicationRequest/LtEspbiExtMedPaperPrescriptionTags.…` → `lt-espbi-ext-med-paper-prescription-tags`            |
| `paperPrescriptionMedicalAids` | `.../DeviceRequest/LtEspbiExtDevPaperPrescriptionMedicalAids.…` → `lt-espbi-ext-dev-paper-prescription-medical-aids`; `.../MedicationRequest/LtEspbiExtMedPaperPrescriptionMedicalAids.…` → `lt-espbi-ext-med-paper-prescription-medical-aids` |
| `lowestPriceTag`               | `.../MedicationDispense/LtEspbiExtLowestPriceTag.…` → `lt-espbi-ext-lowest-price-tag`; `.../MedicationKnowledge/LtEspbiExtLowestPriceTag.…` → `lt-espbi-ext-medication-knowledge-lowest-price-tag`                          |
| `lowIncome`                    | `.../MedicationDispense/LtExtLowIncome.…` → `lt-espbi-ext-low-income`; `.../DeviceDispense/LtEspbiExtDeviceLowIncome.…` → `lt-espbi-ext-device-low-income`                                                                  |
| `expectedDeliveryDate`         | `.../DeviceRequest/LtEspbiExtDevExpectedDeliveryDate.…` → `lt-espbi-ext-dev-expected-delivery-date`; `.../MedicationRequest/LtExtExpectedDeliveryDate.…` → `lt-espbi-ext-expected-delivery-date`                            |
| `documentCountry`              | `.../Patient/LtExtDocumentCountry.…` → `lt-espbi-ext-patient-document-country`; `.../Coverage/LtExtDocumentCountry.…` → `lt-espbi-ext-coverage-document-country`                                                            |
| `dispensePackage`              | `.../MedicationDispense/LtExtDispensePackage.…` → `lt-espbi-ext-dispense-package`; `.../MedicationRequest/LtExtDispensePackage.…` → `lt-espbi-ext-request-dispense-package`                                                 |
| `compensation`                 | `.../MedicationKnowledge/LtExtMedicationCompensation.…` → `lt-espbi-ext-compensation`; `.../MedicationRequest/LtExtRequestCompensation.…` → `lt-espbi-ext-request-compensation`                                             |
| `aagaSgasNumber`               | `.../DeviceRequest/LtEspbiExtAagaSgasNumber.…` → `lt-espbi-ext-dev-aaga-sgas-number`; `.../MedicationRequest/LtExtAagaSgasNumber.…` → `lt-espbi-ext-aaga-sgas-number`                                                       |

No attribute merging was needed — each extension has a distinct URL,
Description, and role in its resource context. Only the Id needed to
become unique.

### Step 4 — Align orphan parent with its own Id / URL (1 orphan-parent error → 0)

`input/fsh/Dokumentai/E027-VA/LtEspbiObservation21958_4_d.StructureDefinition.fsh`
referenced `Parent: LtEspbiObservationDomainDevice`, which did not
exist. A profile in `input/fsh/Resursai/Observation/` had
`Profile: LtEspbiObservationDevice` but `Id: lt-espbi-observation-domain-device`
and `^url` ending in `.../lt-espbi-observation-domain-device` — the
Profile-name shorthand had drifted away from the Id/URL. No other
file referenced the short form, so we renamed the profile itself to
match its Id and URL:

| Field          | Before                                           | After                                                   |
|----------------|--------------------------------------------------|---------------------------------------------------------|
| `Profile:`     | `LtEspbiObservationDevice`                       | `LtEspbiObservationDomainDevice`                        |
| `Title:`       | `"LtEspbiObservationDevice"`                     | `"LtEspbiObservationDomainDevice"`                      |
| `^name`        | `"LtEspbiObservationDevice"`                     | `"LtEspbiObservationDomainDevice"`                      |

File edited: `input/fsh/Resursai/Observation/LtEspbiObservationDevice.StructureDefinition.fsh`
(filename is still `…Device.StructureDefinition.fsh`; renaming the
file is deferred because it would rewrite git history without
compilation benefit).

## Result after both passes: 0 errors

```
| Don't be koi about asking for help.    0 Errors       1 Warning |
```

The sole remaining warning is pre-existing and unrelated to this work:

```
warn  Configuration property parameters/special-url has a value with an unexpected type.
```

## How to re-run

```bash
# Dry-run first to see what would change:
python3 scripts/fix-profile-metadata-rules.py --dry-run

# Apply:
python3 scripts/fix-profile-metadata-rules.py

# Then:
sushi .
```

The script is safe to re-run after future conversions — on already-fixed
files it reports `rewrote 0` and makes no changes. The second-pass
merge decisions in this document were one-shot edits and do not need
re-applying.
