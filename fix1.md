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

## Result: 4,129 → 17 errors

```
| Don't be shell-shocked.               17 Errors       1 Warning |
```

## What the remaining 17 errors are

All are structural and need human judgement, not a rewrite:

### Duplicate extension Ids (11 errors)

Two or three files across different resource contexts share the same
last-URL-segment, so the script's URL-derived Id collides. Examples:

| Id             | Files that claim it                                                                                                                              |
|----------------|--------------------------------------------------------------------------------------------------------------------------------------------------|
| `statusWho`    | `Resursai/DeviceRequest/LtEspbiExtStatusWho.…`, `Resursai/MedicationDispense/LtEspbiExtStatusWho.…`, `Resursai/MedicationRequest/LtExtStatusWho.…` |
| `compensation` | `Resursai/MedicationKnowledge/LtExtMedicationCompensation.…`, `Resursai/MedicationRequest/LtExtRequestCompensation.…`                              |
| `lowIncome`, `dispensePackage`, `documentCountry`, `prescriptionStatus`, `paperPrescriptionTags`, `paperPrescriptionMedicalAids`, `lowestPriceTag`, `expectedDeliveryDate`, `aagaSgasNumber` | two files each |

Fix: assign each an Id derived from the Profile name
(`lt-espbi-ext-dev-status-who`, `lt-espbi-ext-med-dispense-status-who`, …)
— a decision that overlaps with the suffix-naming migration and is
better done in that later pass.

### Duplicate Profile names in eLAB (5 errors)

`ElabDiagnosticReport`, `ElabObservation`, `ElabObservationBase`,
`ElabSpecimen`, and extension `LtEspbiExtStatusWho` are each declared
in two sibling files — short stubs in `input/fsh/eLAB/Elab*.fsh` and
full definitions in `input/fsh/eLAB/*_eLAB.StructureDefinition.fsh`.
One member of each pair is redundant; deleting the stubs is a
candidate for PR #2.

### Orphan parent (1 error)

`input/fsh/Dokumentai/E027-VA/LtEspbiObservation21958_4_d.StructureDefinition.fsh`
declares `Parent: LtEspbiObservationDomainDevice`, but no such profile
exists. Siblings `LtEspbiObservationDomain` and `LtEspbiObservationDevice`
both exist — the intent is unclear and needs a clinical-modelling
decision.

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
files it reports `rewrote 0` and makes no changes.
