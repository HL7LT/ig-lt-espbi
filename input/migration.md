# ESPBI Simplifier → FSH migration

This page documents how Lithuanian ESPBI FHIR resources, historically maintained in the [Simplifier](https://simplifier.net) project, are migrated from FHIR JSON into [FHIR Shorthand (FSH)](https://fshschool.org/) for this Implementation Guide.

The migration is tool-assisted but not fully automatic. The sections below describe the approach, the ordering we apply, the problems that surface during conversion, and what still has to be done by hand after the tool runs.

## Source and tooling

- **Source tree** — `~/source/hl7lt/ig-lt-espbi/simplifier/`, organised into three top-level folders:
  - `!Resursai/<ResourceType>/` — generic resource profiles (Patient, Observation, Practitioner, …),
  - `!Dokumentai/<DocumentCode>/` — document-level profiles grouped by E-form code (E003, E096, …),
  - `eLAB/` — lab program profiles, with its own `CodeSystems/` and `ValueSets/` subfolders.
- **Converter** — [TermX Chef](https://github.com/kodality/termx-chef) (`~/source/termx/termx-chef`), an HTTP wrapper around [GoFSH](https://github.com/FHIR/GoFSH) (JSON → FSH) and [SUSHI](https://github.com/FHIR/sushi) (FSH → JSON). We use only the `POST /v2/fhir2fsh` endpoint.
- **Runner** — `scripts/migrate-simplifier-with-chef.sh`. Classifies each JSON by `resourceType` / `kind` / `baseDefinition` (filename is unreliable — many Simplifier JSONs don't carry a `.ResourceType.json` suffix), converts via Chef, and writes output to `input/fsh/migrated/<bucket>/<id>.fsh`.
- **Machine-generated log** — `migration.md` at the repo root, regenerated on every run with bucket counts and per-file status.

## Why a migration is needed

The previous attempt converted JSON to FSH with hand-written regex and manual edits. Two concrete defects surfaced:

1. **CodeSystem concepts were being dropped**, leaving empty shells that downstream ValueSets bound against.
2. **Metadata rules (`^slicing`, `^binding`, `^url`) were malformed**, producing SUSHI errors or silently incorrect FHIR output.

Running the source JSON through GoFSH preserves FHIR semantics by construction — concepts, bindings, slicing, and invariants all round-trip. Post-conversion fix-up is then a rename/wire-up problem, not a content-recovery problem.

## Migration order

Resources are converted in a fixed order so that each bucket references only things already migrated:

| # | Bucket           | What it contains                                              |
|---|------------------|---------------------------------------------------------------|
| 1 | `terminology-cs` | `CodeSystem` resources                                        |
| 2 | `terminology-vs` | `ValueSet` resources                                          |
| 3 | `datatypes`      | logical models + complex-type profiles (custom `Address`, …) |
| 4 | `extensions`     | `StructureDefinition` with `type = Extension`                 |
| 5 | `generic`        | profiles on Patient, Practitioner, Organization, Location, PractitionerRole, RelatedPerson, HealthcareService, Device, EpisodeOfCare, Encounter, Endpoint |
| 6 | `dependent`      | all remaining profiles on clinical/workflow resources         |
| 7 | `compositions`   | profiles on `Composition` and `Bundle`                        |

Terminology has to go first because every resource binds against it. Datatypes and extensions go next because profiles reference them via `value[x] only Reference(…)` or `extension contains …`. Compositions go last because they reference everything else by profile.

## Bucket counts (from the current source tree)

| Bucket           | Files |
|------------------|------:|
| `terminology-cs` |    12 |
| `terminology-vs` |    13 |
| `datatypes`      |     1 |
| `extensions`     |   175 |
| `generic`        |    19 |
| `dependent`      |   878 |
| `compositions`   |    53 |
| **Total**        | **1151** |

Skipped: 0. The classifier reads each file's `resourceType` so it does not depend on filename conventions.

## How to run

```bash
# One bucket (for iteration)
./scripts/migrate-simplifier-with-chef.sh --filter=terminology-cs

# All buckets
./scripts/migrate-simplifier-with-chef.sh

# Dry-run (scan + classify + plan, no HTTP, no file writes)
./scripts/migrate-simplifier-with-chef.sh --dry-run
```

The script starts a local Chef container via Docker if nothing is reachable on `http://localhost:3000`. It will build the image from `~/source/termx/termx-chef` on first run.

Output lands under `input/fsh/migrated/<bucket>/<id>.fsh`. Nothing is written into `input/fsh/profiles/`, `input/fsh/terminology/`, or `input/fsh/examples/` automatically — moving files over is part of the review pass, described below.

## Problems observed in converted output

GoFSH produces faithful FSH, but "faithful to a messy source" means the output still needs work. The issues below were all confirmed against real conversion output, not hypothesised.

### 1. URL-shaped codes inside CodeSystem concepts

Several Simplifier CodeSystems use full URIs as concept codes. Example from `LtEspbiIdentifier`:

```fsh
* #http://esveikata.lt/classifiers/Identifier/SVEIDRAID "SVEIDRA identifier" "Kodas SVEIDRA IS sistemoje"
* #http://esveikata.lt/Identifier/Patient/ESPBI "ESPBI" "ESPBI id"
```

This is a source-data problem — a FHIR code is supposed to be a token, not a URI. The conversion preserves it as-is. These codes have to be renamed (and their consumers updated) before the CodeSystem is usable against a validator. The affected systems are primarily the identifier-classifier CodeSystems under `!Resursai/Patient/` and `!Resursai/MedicationDispense/`.

### 2. Canonical URL is dropped from terminology resources

GoFSH's default behaviour is to emit `^url` only when it differs from the IG-canonical-derived default. Because our runner does not pass a `canonical` option, GoFSH always treats the URL as "default" and omits it. Both examples below have a real, non-default URL in the source JSON that is missing from the converted FSH:

```fsh
CodeSystem: LtEspbiIdentifier
Id: lt-espbi-identifier
// ^url should be http://esveikata.lt/fhir/CodeSystem/lt-espbi-identifier — missing
```

If we leave it missing, SUSHI synthesises `{canonical}/CodeSystem/{id}`, which resolves to `http://esveikata.lt/fhir/espbi/CodeSystem/lt-espbi-identifier` and breaks every reference to the old URL. Fix options: (a) add `^url` manually during review; (b) configure Chef to pass `canonical` when calling GoFSH so the original URL is re-emitted. Option (b) is worth automating — a future runner change.

### 3. Names and IDs use prefix, not suffix, convention

Simplifier names are prefix-based:

| From Simplifier             | Repo convention (target)             |
|------------------------------|--------------------------------------|
| `LtEspbiPatient`             | `PatientLtEspbi`                     |
| `lt-espbi-patient`           | `patient-lt-espbi`                   |
| `LtEspbiExtFamilyDoctor`     | `FamilyDoctorExtLtEspbi` (or similar)|
| `bodyPosition` (camelCase)   | `body-position`                      |

The runner does not rewrite names or IDs. A rename pass is required on every converted file before it can move into `input/fsh/profiles/` / `input/fsh/terminology/`. See the [shared naming rules](https://github.com/hl7lt/hl7lt/blob/main/CLAUDE.md) at the workspace root.

### 4. Canonical URLs use hand-crafted paths, not the IG canonical

Extension and profile URLs in the source resolve to paths like:

```
http://esveikata.lt/Profile/ltnhr-observation/babyBirthHospital
http://esveikata.lt/Profile/ltnhr-patient/documentCountry
http://esveikata.lt/fhir/StructureDefinition/lt-espbi-organization
```

None of those match the IG's declared canonical `http://esveikata.lt/fhir/espbi`. Post-migration, URLs have to be normalised to `{canonical}/StructureDefinition/{id}` and registered in `alias-lt-espbi.fsh`. This is a mechanical find-and-replace but has to be reviewed per file because some Simplifier resources cross-reference each other by these URLs.

### 5. Aliases are emitted per file, not centralised

Every converted file gets its own header with `Alias: $foo = http://...`. Example from `LtEspbiPatient.fsh`:

```fsh
Alias: $documentCountry = http://esveikata.lt/Profile/ltnhr-patient/documentCountry
Alias: $documentRegisteredBy = http://esveikata.lt/Profile/ltnhr-patient/documentRegisteredBy
Alias: $lt-espbi-address = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-address
…
```

The repo convention is to centralise aliases in `alias-lt-espbi.fsh`. Deduplication + relocation is a single pass once all files are converted.

### 6. Examples are embedded inside profiles via `^example`

The source JSON stores example values in the `element.example` array of the `StructureDefinition`. GoFSH faithfully re-emits them inside the profile:

```fsh
* identifier[ESI] ^example[0].label = "ESI"
* identifier[ESI] ^example[=].valueIdentifier.system = "http://esveikata.lt/Identifier/Patient/ESI"
* identifier[ESI] ^example[=].valueIdentifier.value = "232233"
```

Repo convention keeps examples as separate `Instance` resources in `input/fsh/examples/`. These blocks should be lifted out and converted into standalone examples — or dropped if the example is not worth publishing.

### 7. Lithuanian text contains CRLF which becomes literal `\r\n` in FSH

Many `^definition` strings contain multi-line Lithuanian text with embedded `\r\n`. GoFSH escapes these correctly (so FSH parses), but the resulting strings are noisy:

```fsh
* identifier[others] ^definition = "Paciento identifikatoriai…\r\n- http://esveikata.lt/Identifier/PersonalCode…\r\n"
```

The content is correct; the readability is not. If we want multi-line descriptions in published IG, a manual prettify pass is needed.

### 8. Minor source-hygiene issues preserved

- One source file has a trailing space in its name: `!Resursai/VisionPrescription/LtEspbiCsLensesType .json`. The runner handles it (NUL-terminated `find`), but it shows up verbatim in the log. Renaming the source file is advisable.
- Filename casing varies: `Valueset-doc-section-codes.json` (lowercase "Valueset"). Output uses the resource `id`, so the output FSH is fine, but these inconsistencies suggest the source tree has not been linted.

## SUSHI validation results

After converting `terminology-cs`, `terminology-vs`, `extensions`, and `generic` buckets (219 of 1151 files), `sushi .` was run against the worktree. Headline: **70,638 errors**, 211k lines of log output. The distribution is extremely skewed — a single CodeSystem accounts for over 99% of the volume.

### Top offenders (by error count)

| File                                           | Errors | Main failure mode                                       |
|------------------------------------------------|-------:|---------------------------------------------------------|
| `terminology-cs/lt-lab-klt-nomenclature.fsh`   | 70,688 | Hierarchical concept paths + cross-CS property values   |
| `extensions/LtEspbiExtDevicePaperPrescription.fsh` | 166 | Missing nested extension slice declarations             |
| `generic/LtEspbiPatient.fsh`                   |     49 | Missing slice declarations on `identifier[others].extension` |
| `generic/elab-practitionerRole.fsh`            |     10 | Missing `contact.telecom[Phone|Email]` slice declarations |
| `generic/elab-organization.fsh`, `LtEspbiRelatedPersonMotherOfDeceased.fsh`, `LtEspbiEncounterReceptionData.fsh` | ≥8 each | Same pattern as above |

### Error families

These are the distinct patterns sushi surfaced, in descending order of occurrence.

#### A. Hierarchical concept path resolution (≈63,841 errors)

`lt-lab-klt-nomenclature` is a ~275,000-line CodeSystem with nested concepts (`concept.concept[]` in the source JSON). GoFSH emits nested concepts using the path-chain syntax:

```fsh
* #XLT00014-4 #3168-2 "24 val. diurezė"
* #XLT00014-4 #3168-2 ^property[0].code = #partOf
```

SUSHI reports `The element or path you referenced does not exist: #XLT00014-4 #3168-2` for every rule, because the parent `#XLT00014-4` is not yet declared as a concept in scope when the child line is processed. This is a known GoFSH/SUSHI interaction issue with large hierarchical CodeSystems where the concept declarations and their property rules are not correctly ordered, or the parent concept declaration is missing from the output.

**Fix**: either declare each parent concept with its own short declaration row (`* #XLT00014-4 "…"`) before any child row, or flatten the hierarchy and express parent/child relationships only via the `partOf` property. For a CodeSystem this large the practical approach is to hand-post-process the GoFSH output with a small script.

#### B. Cross-CodeSystem property values use bare IDs, not URIs (~1,563 errors)

`^property[=].valueCoding.system` is assigned a bare CodeSystem id:

```fsh
* #43583-4 ^property[=].valueCoding.system = "lt-lab-test-results"
```

SUSHI reports `Resolved value "lt-lab-test-results" is not a valid URI.`. This is a source-data bug carried through GoFSH unchanged — `valueCoding.system` must be a URI. Fix: replace `"lt-lab-test-results"` with the full canonical URL of the referenced CodeSystem, in both source and output.

#### C. Cross-CodeSystem code references fail (~3,812 errors)

Lines like:

```fsh
* #43583-4 ^property[=].valueCoding = lt-lab-methods#43583-4
```

trigger `Code "43583-4" is not defined for system LtLabMethods.` — the source reuses the outer concept's code (`43583-4` is a LOINC test code) as the value for a `lt-lab-methods` lookup, but `43583-4` is not actually a concept in `lt-lab-methods`. Similar errors for `LtLabTestGroups` and `LtLabSpecimens`. This is source-data inconsistency; the runner preserves it faithfully.

#### D. Duplicate concept codes (≈1,252 errors)

`CodeSystem lt-lab-klt-nomenclature already contains code …` — the source CodeSystem has the same `code` repeated across sibling `concept[]` entries. FHIR does not allow duplicate codes at a single level; the source must be deduplicated (or restructured as hierarchy) before the CodeSystem can be accepted.

#### E. Missing sibling CodeSystem (`lt-lab-test-results`)

The nomenclature references `lt-lab-test-results#KIEKYBINIS`, `#TNK`, `#M`, etc., but there is no `lt-lab-test-results` CodeSystem in the Simplifier tree. Either the CodeSystem was never authored, or it lives outside the `simplifier/` folder. The migration needs this resource located (or defined) before the references will resolve.

#### F. Extension slicing not pre-declared (~220 errors across profiles)

Generated profiles reference extension slices without declaring them first. Example from `LtEspbiPatient.fsh` line 72–73:

```fsh
* identifier[others].extension[ltExtDocumentRegisteredDate] only $documentRegisteredDate
* identifier[others].extension[ltExtDocumentRegisteredDate] ^sliceName = "ltExtDocumentRegisteredDate"
```

SUSHI reports `No element found at path identifier[others].extension[ltExtDocumentRegisteredDate]`. In FSH, nested extension slices must be opened with `extension contains <name> 0..1` at the parent element before they can be constrained. GoFSH missed emitting the `extension contains` block for these nested extension groups. The same pattern affects every profile with nested-extension slicing (`LtEspbiPatient`, `LtEspbiExtDevicePaperPrescription`, the `elab-*` profiles with `contact.telecom` slices, etc.).

**Fix**: before each `* <path>.extension[<name>] …` chain, insert a `* <path>.extension contains <name> 0..1` rule. This is mechanical but per-profile.

#### G. Duplicate invariants (≥4 errors)

`Skipping Invariant: an Invariant named ext-2 already exists.` Every converted profile re-declares the invariants it inherits. Because the files are compiled together, SUSHI sees duplicates. Fix: lift shared invariants into `input/fsh/Rulesets.fsh` and strip them from individual files.

#### H. Missing dependent-bucket profiles (~21 errors of the form `No definition for the type …`)

Generic-bucket profiles reference types in the `dependent` bucket that haven't been converted yet:

```
error No definition for the type "http://esveikata.lt/fhir/StructureDefinition/lt-espbi-consent" could be found.
error No definition for the type "http://esveikata.lt/fhir/StructureDefinition/lt-espbi-service-request" could be found.
```

These will disappear automatically once the `dependent` bucket is converted (and probably reappear in a different form as that bucket surfaces its own issues).

#### I. Conflicting fixed values (3 errors)

`Cannot assign "X" to this element; a different uri is already assigned: "Y".` A migrated profile sets a `fixedUri` that conflicts with a value already fixed by the parent profile or a dependency. Needs per-case resolution.

#### J. ValueSet URI typed as string (1 error)

`LtEspbiExtDevicePaperPrescription.fsh:212` — `Cannot assign string value: http://hl7.org/fhir/ValueSet/vision-product. Value does not match element type: uri.` The source JSON has the ValueSet bound with an escaped string, and GoFSH did not coerce it to a URI literal.

### Remediation strategy

1. **Defer `lt-lab-klt-nomenclature` entirely** until the other buckets are clean. Its 70k errors drown every other signal in the sushi log. Move it out of `input/fsh/migrated/terminology-cs/` (or rename to `.fsh.skip`) while iterating.
2. **Patch families F and G globally** — they affect dozens of profiles with a mechanical pattern. A small post-processing script over `input/fsh/migrated/` that inserts missing `extension contains` and strips redeclared invariants is worth writing.
3. **Wait on families B, C, D, E until after the nomenclature is reviewed** — they are all source-data bugs in the lab terminology and can be addressed once the hierarchy itself is fixed.
4. **Proceed with `dependent` + `compositions` buckets** — family H errors will resolve themselves. Expect new failures to appear in those buckets and treat them as a next iteration of this review.
5. **Only then start the per-file review pass** (renaming, alias wiring, URL normalisation) against what remains.

## Post-conversion review pass (manual)

For each converted file before it joins the real IG sources:

1. Open the file in `input/fsh/migrated/<bucket>/`.
2. Add `^url` if missing, using the original Simplifier URL.
3. Rename the resource to the `{Business}LtEspbi` / `{business}-lt-espbi` suffix convention.
4. Normalise `^url` to `{canonical}/StructureDefinition/{id}` and register the alias in `alias-lt-espbi.fsh`.
5. For CodeSystems with URL-shaped codes, decide on replacement codes and update every dependent ValueSet and profile-level `fixedCode` / `pattern` rule.
6. Lift any `^example` blocks into separate `Instance` files under `input/fsh/examples/`.
7. Move the cleaned file into `input/fsh/terminology/`, `input/fsh/profiles/`, or `input/fsh/examples/` as appropriate, and delete the original from `input/fsh/migrated/`.
8. Run `sushi .` and `java -jar ../publisher.jar -ig .` to confirm nothing downstream broke.

## Re-runnability

The runner is idempotent: it overwrites files in `input/fsh/migrated/`, regenerates the root `migration.md` log, and never touches the reviewed files under `input/fsh/terminology/` / `input/fsh/profiles/` / `input/fsh/examples/`. It is safe to rerun whenever the Simplifier source changes. Files already reviewed and relocated out of `migrated/` are unaffected.
