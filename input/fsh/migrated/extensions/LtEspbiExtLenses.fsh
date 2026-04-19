Alias: $lt-espbi-vs-lenses-type = http://esveikata.lt/fhir/ValueSet/lt-espbi-vs-lenses-type

Extension: LtEspbiExtLenses
Id: LtEspbiExtLenses
Description: "Akiniai/lęšiai / Glasses/lenses"
Context: VisionPrescription.lensSpecification
* ^url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-lenses"
* ^status = #draft
* . ..1
* . ^short = "Akinių lęšių tipas / Type of eyeglass lenses"
* . ^definition = "Akinių lęšių tipas.\r\nGalimos reikšmės nurodytos klasifikatoriuje LtEspbiCsLensesType (http://esveikata.lt/fhir/CodeSystem/lt-espbi-cs-lenses-type).\r\n"
* id ..0
* extension contains
    lensesType 1..1 and
    prismAxis 0..1 and
    nearPD 0..1 and
    distancePD 0..1 and
    distanceBetweenPupils 0..1 and
    purpose 0..1 and
    purposeDescription 1..1
* extension[lensesType] ^short = "Akinių lęšių tipas / Type of eyeglass lenses"
* extension[lensesType] ^definition = "Akinių lęšių tipas."
* extension[lensesType].value[x] 1..
* extension[lensesType].value[x] only CodeableConcept
* extension[lensesType].value[x] from $lt-espbi-vs-lenses-type (required)
* extension[lensesType].value[x].id ..0
* extension[lensesType].value[x].extension ..0
* extension[lensesType].value[x].coding 1..1
* extension[lensesType].value[x].coding.id ..0
* extension[lensesType].value[x].coding.extension ..0
* extension[lensesType].value[x].coding.system 1..
* extension[lensesType].value[x].coding.system = "http://esveikata.lt/fhir/CodeSystem/lt-espbi-cs-lenses-type" (exactly)
* extension[lensesType].value[x].coding.version ..0
* extension[lensesType].value[x].coding.code 1..
* extension[lensesType].value[x].coding.display MS
* extension[lensesType].value[x].coding.userSelected ..0
* extension[lensesType].value[x].text ..0
* extension[prismAxis] ^short = "Prizmės bazės krypties meridianas"
* extension[prismAxis] ^definition = "Prizmės ašis."
* extension[prismAxis].value[x] 1..
* extension[prismAxis].value[x] only Quantity
* extension[prismAxis].value[x].id ..0
* extension[prismAxis].value[x].value 1..
* extension[prismAxis].value[x].comparator ..0
* extension[prismAxis].value[x].unit 1..
* extension[prismAxis].value[x].system 1..
* extension[prismAxis].value[x].code 1..
* extension[nearPD] ^short = "PD artumui / PD (Artumui)"
* extension[nearPD] ^definition = "Akies bazinė kreivė (BC) / Bazinės kreivė (BC)."
* extension[nearPD].value[x] 1..
* extension[nearPD].value[x] only Quantity
* extension[nearPD].value[x].id ..0
* extension[nearPD].value[x].value 1..
* extension[nearPD].value[x].comparator ..0
* extension[nearPD].value[x].unit 1..
* extension[nearPD].value[x].system 1..
* extension[nearPD].value[x].system = "http://unitsofmeasure.org"
* extension[nearPD].value[x].code 1..
* extension[distancePD] ^short = "Akies PD tolumui / PD (Tolumui)"
* extension[distancePD] ^definition = "Akies PD tolumui / PD (Tolumui)."
* extension[distancePD].value[x] 1..
* extension[distancePD].value[x] only Quantity
* extension[distancePD].value[x].id ..0
* extension[distancePD].value[x].value 1..
* extension[distancePD].value[x].comparator ..0
* extension[distancePD].value[x].unit 1..
* extension[distancePD].value[x].system 1..
* extension[distancePD].value[x].system = "http://unitsofmeasure.org"
* extension[distancePD].value[x].code 1..
* extension[distanceBetweenPupils] ^short = "Atstumas tarp vyzdžių centrų / Atstumas tarp vyzdžių"
* extension[distanceBetweenPupils] ^definition = "Atstumas tarp vyzdžių."
* extension[distanceBetweenPupils].value[x] 1..
* extension[distanceBetweenPupils].value[x] only Quantity
* extension[distanceBetweenPupils].value[x].id ..0
* extension[distanceBetweenPupils].value[x].value 1..
* extension[distanceBetweenPupils].value[x].comparator ..0
* extension[distanceBetweenPupils].value[x].unit 1..
* extension[distanceBetweenPupils].value[x].system 1..
* extension[distanceBetweenPupils].value[x].system = "http://unitsofmeasure.org"
* extension[distanceBetweenPupils].value[x].code 1..
* extension[purpose].value[x] 1..
* extension[purpose].value[x] only CodeableConcept
* extension[purpose].value[x].id ..0
* extension[purpose].value[x].extension ..0
* extension[purpose].value[x].coding 1..1
* extension[purpose].value[x].coding.id ..0
* extension[purpose].value[x].coding.extension ..0
* extension[purpose].value[x].coding.system 1..
* extension[purpose].value[x].coding.system = "http://esveikata.lt/fhir/CodeSystem/lt-espbi-cs-lenses-purpose" (exactly)
* extension[purpose].value[x].coding.version ..0
* extension[purpose].value[x].coding.code 1..
* extension[purpose].value[x].coding.display 1..
* extension[purpose].value[x].coding.userSelected ..0
* extension[purpose].value[x].text ..0
* extension[purposeDescription] ^short = "Akinių/lešių paskirties aprašymas"
* extension[purposeDescription] ^definition = "Akinių/lešių paskirties aprašymas. Privalomas laukas nuo versijos v29."
* extension[purposeDescription].value[x] 1..
* extension[purposeDescription].value[x] only string
* url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-lenses" (exactly)