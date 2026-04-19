Extension: LtEspbiExtDeviceLenses
Id: LtEspbiExtDeviceLenses
Description: "Akinių/lęšių duomenys, pateikiami korekcinių optikos gaminių išdavimo resurse / Glasses/lens data provided in DeviceDispense dispensing resource"
Context: DeviceDispense
* ^url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-device-lenses"
* ^status = #draft
* . ..1
* . ^short = "Akinių/lęšių duomenys, pateikiami korekcinių optikos gaminių išdavimo resurse / Glasses/lens data provided in DeviceDispense dispensing resource"
* . ^definition = "Akinių/lęšių duomenys, pateikiami korekcinių optikos gaminių išdavimo resurse"
* extension contains
    opticalDevice 1..1 and
    type 0..1 and
    lensSpecification 1..*
* extension[opticalDevice] ^short = "Optinis prietaisas (akinių lęšiai, kontaktiniai lęšiai)"
* extension[opticalDevice] ^definition = "Optinis prietaisas (akinių lęšiai, kontaktiniai lęšiai).\r\nGalimos reikšmės:\r\n- al: Akinių lęšiai\r\n- kl: Kontaktiniai lęšiai"
* extension[opticalDevice].value[x] 1..
* extension[opticalDevice].value[x] only CodeableConcept
* extension[opticalDevice].value[x].id ..0
* extension[opticalDevice].value[x].extension ..0
* extension[opticalDevice].value[x].coding 1..1
* extension[opticalDevice].value[x].coding.id ..0
* extension[opticalDevice].value[x].coding.extension ..0
* extension[opticalDevice].value[x].coding.system 1..
* extension[opticalDevice].value[x].coding.system = " http://hl7.org/fhir/ValueSet/vision-product"
* extension[opticalDevice].value[x].coding.version ..0
* extension[opticalDevice].value[x].coding.code 1..
* extension[opticalDevice].value[x].coding.display 1..
* extension[opticalDevice].value[x].coding.userSelected ..0
* extension[opticalDevice].value[x].text ..0
* extension[type] ^short = "Akinių lęšių tipas (sudėtingieji, paprastieji)"
* extension[type] ^definition = "Akinių lęšių tipas (sudėtingieji, paprastieji). Būtinas, jei optinis prietaisas yra akinių lęšiai.\r\nGalimos reikšmės:\r\n- sd: Sudėtingieji.\r\n- pp: Paprastieji."
* extension[type].value[x] 1..
* extension[type].value[x] only CodeableConcept
* extension[type].value[x].id ..0
* extension[type].value[x].extension ..0
* extension[type].value[x].coding 1..1
* extension[type].value[x].coding.id ..0
* extension[type].value[x].coding.extension ..0
* extension[type].value[x].coding.system 1..
* extension[type].value[x].coding.system = "http://esveikata.lt/fhir/CodeSystem/lt-espbi-cs-lenses-type" (exactly)
* extension[type].value[x].coding.version ..0
* extension[type].value[x].coding.code 1..
* extension[type].value[x].coding.display 1..
* extension[type].value[x].coding.userSelected ..0
* extension[type].value[x].text ..0
* extension[lensSpecification] obeys ext-2
* extension[lensSpecification] ^short = "Akinių / lęšių parametrai"
* extension[lensSpecification] ^definition = "Akinių / lęšių parametrai"
* extension[lensSpecification].extension 2..
* extension[lensSpecification].extension contains
    eye 1..1 and
    sphere 0..1 and
    cylinder 0..1 and
    prism 0..1 and
    cylinderAxis 0..1 and
    add 0..1 and
    prismBase 0..1 and
    prismAxis 0..1 and
    nearPD 0..1 and
    distancePD 0..1 and
    backCurve 0..1 and
    diameter 0..1 and
    purpose 0..1 and
    distanceBetweenPupils 0..1 and
    description 1..1 and
    note 0..1
* extension[lensSpecification].extension[eye] ^short = "Akis"
* extension[lensSpecification].extension[eye] ^definition = "Akis"
* extension[lensSpecification].extension[eye].value[x] 1..
* extension[lensSpecification].extension[eye].value[x] only code
* extension[lensSpecification].extension[eye].value[x] from VisionEyes (required)
* extension[lensSpecification].extension[sphere] ^short = "OS sfera"
* extension[lensSpecification].extension[sphere] ^definition = "OS sfera."
* extension[lensSpecification].extension[sphere].value[x] 1..
* extension[lensSpecification].extension[sphere].value[x] only Quantity
* extension[lensSpecification].extension[sphere].value[x].id ..0
* extension[lensSpecification].extension[sphere].value[x].value 1..
* extension[lensSpecification].extension[sphere].value[x].comparator ..0
* extension[lensSpecification].extension[sphere].value[x].unit 1..
* extension[lensSpecification].extension[sphere].value[x].system 1..
* extension[lensSpecification].extension[sphere].value[x].system = "http://unitsofmeasure.org"
* extension[lensSpecification].extension[sphere].value[x].code 1..
* extension[lensSpecification].extension[cylinder] ^short = "Akies cilindras (CYL) / OS cilindras"
* extension[lensSpecification].extension[cylinder] ^definition = "Akies cilindras (CYL) / OS cilindras"
* extension[lensSpecification].extension[cylinder].value[x] 1..
* extension[lensSpecification].extension[cylinder].value[x] only Quantity
* extension[lensSpecification].extension[cylinder].value[x].id ..0
* extension[lensSpecification].extension[cylinder].value[x].value 1..
* extension[lensSpecification].extension[cylinder].value[x].comparator ..0
* extension[lensSpecification].extension[cylinder].value[x].unit 1..
* extension[lensSpecification].extension[cylinder].value[x].system 1..
* extension[lensSpecification].extension[cylinder].value[x].system = "http://unitsofmeasure.org"
* extension[lensSpecification].extension[cylinder].value[x].code 1..
* extension[lensSpecification].extension[prism] ^short = "Akies prizmė (PRISM) / OS prizmė "
* extension[lensSpecification].extension[prism] ^definition = "Akies prizmė (PRISM) / OS prizmė "
* extension[lensSpecification].extension[prism].value[x] 1..
* extension[lensSpecification].extension[prism].value[x] only Quantity
* extension[lensSpecification].extension[prism].value[x].id ..0
* extension[lensSpecification].extension[prism].value[x].value 1..
* extension[lensSpecification].extension[prism].value[x].comparator ..0
* extension[lensSpecification].extension[prism].value[x].unit 1..
* extension[lensSpecification].extension[prism].value[x].system 1..
* extension[lensSpecification].extension[prism].value[x].code 1..
* extension[lensSpecification].extension[cylinderAxis] ^short = "Akies ašis (AXIS) / OS cilindro ašis"
* extension[lensSpecification].extension[cylinderAxis] ^definition = "Akies ašis (AXIS) / OS cilindro ašis"
* extension[lensSpecification].extension[cylinderAxis].value[x] 1..
* extension[lensSpecification].extension[cylinderAxis].value[x] only Quantity
* extension[lensSpecification].extension[cylinderAxis].value[x].id ..0
* extension[lensSpecification].extension[cylinderAxis].value[x].value 1..
* extension[lensSpecification].extension[cylinderAxis].value[x].comparator ..0
* extension[lensSpecification].extension[cylinderAxis].value[x].unit 1..
* extension[lensSpecification].extension[cylinderAxis].value[x].system 1..
* extension[lensSpecification].extension[cylinderAxis].value[x].system = "http://unitsofmeasure.org" (exactly)
* extension[lensSpecification].extension[cylinderAxis].value[x].code 1..
* extension[lensSpecification].extension[add] ^short = "Akies adidacija (ADD)/degresija / OS ADD"
* extension[lensSpecification].extension[add] ^definition = "Akies adidacija (ADD)/degresija / OS ADD"
* extension[lensSpecification].extension[add].value[x] 1..
* extension[lensSpecification].extension[add].value[x] only Quantity
* extension[lensSpecification].extension[add].value[x].id ..0
* extension[lensSpecification].extension[add].value[x].value 1..
* extension[lensSpecification].extension[add].value[x].comparator ..0
* extension[lensSpecification].extension[add].value[x].unit 1..
* extension[lensSpecification].extension[add].value[x].system 1..
* extension[lensSpecification].extension[add].value[x].code 1..
* extension[lensSpecification].extension[prismBase] ^short = "Akies prizmės bazės (BASE) pusė"
* extension[lensSpecification].extension[prismBase] ^definition = "Akies prizmės bazės (BASE) pusė"
* extension[lensSpecification].extension[prismBase].value[x] 1..
* extension[lensSpecification].extension[prismBase].value[x] only CodeableConcept
* extension[lensSpecification].extension[prismBase].value[x].id ..0
* extension[lensSpecification].extension[prismBase].value[x].extension ..0
* extension[lensSpecification].extension[prismBase].value[x].coding 1..1
* extension[lensSpecification].extension[prismBase].value[x].coding.id ..0
* extension[lensSpecification].extension[prismBase].value[x].coding.extension ..0
* extension[lensSpecification].extension[prismBase].value[x].coding.system 1..
* extension[lensSpecification].extension[prismBase].value[x].coding.system = "http://hl7.org/fhir/ValueSet/vision-base-codes"
* extension[lensSpecification].extension[prismBase].value[x].coding.version ..0
* extension[lensSpecification].extension[prismBase].value[x].coding.code 1..
* extension[lensSpecification].extension[prismBase].value[x].coding.display 1..
* extension[lensSpecification].extension[prismBase].value[x].coding.userSelected ..0
* extension[lensSpecification].extension[prismAxis] ^short = "Akies prizmės bazės krypties meridianas"
* extension[lensSpecification].extension[prismAxis] ^definition = "Akies prizmės bazės krypties meridianas"
* extension[lensSpecification].extension[prismAxis].value[x] 1..
* extension[lensSpecification].extension[prismAxis].value[x] only Quantity
* extension[lensSpecification].extension[prismAxis].value[x].id ..0
* extension[lensSpecification].extension[prismAxis].value[x].value 1..
* extension[lensSpecification].extension[prismAxis].value[x].comparator ..0
* extension[lensSpecification].extension[prismAxis].value[x].unit 1..
* extension[lensSpecification].extension[prismAxis].value[x].system 1..
* extension[lensSpecification].extension[prismAxis].value[x].system = "http://unitsofmeasure.org"
* extension[lensSpecification].extension[prismAxis].value[x].code 1..
* extension[lensSpecification].extension[nearPD] ^short = "Akies PD artumui / OS PD (Artumui)"
* extension[lensSpecification].extension[nearPD] ^definition = "Akies PD artumui / OS PD (Artumui)"
* extension[lensSpecification].extension[nearPD].value[x] 1..
* extension[lensSpecification].extension[nearPD].value[x] only Quantity
* extension[lensSpecification].extension[nearPD].value[x].id ..0
* extension[lensSpecification].extension[nearPD].value[x].value 1..
* extension[lensSpecification].extension[nearPD].value[x].comparator ..0
* extension[lensSpecification].extension[nearPD].value[x].unit 1..
* extension[lensSpecification].extension[nearPD].value[x].system 1..
* extension[lensSpecification].extension[nearPD].value[x].code 1..
* extension[lensSpecification].extension[distancePD] ^short = "Akies PD tolumui / OS PD (Tolumui)"
* extension[lensSpecification].extension[distancePD] ^definition = "Akies PD tolumui / OS PD (Tolumui)"
* extension[lensSpecification].extension[distancePD].value[x] 1..
* extension[lensSpecification].extension[distancePD].value[x] only Quantity
* extension[lensSpecification].extension[distancePD].value[x].id ..0
* extension[lensSpecification].extension[distancePD].value[x].value 1..
* extension[lensSpecification].extension[distancePD].value[x].comparator ..0
* extension[lensSpecification].extension[distancePD].value[x].unit 1..
* extension[lensSpecification].extension[distancePD].value[x].system 1..
* extension[lensSpecification].extension[distancePD].value[x].code 1..
* extension[lensSpecification].extension[backCurve] ^short = "Akies bazinė kreivė (BC) / OS Bazinės kreivė (BC)"
* extension[lensSpecification].extension[backCurve] ^definition = "Akies bazinė kreivė (BC) / OS Bazinės kreivė (BC)"
* extension[lensSpecification].extension[backCurve].value[x] 1..
* extension[lensSpecification].extension[backCurve].value[x] only Quantity
* extension[lensSpecification].extension[backCurve].value[x].id ..0
* extension[lensSpecification].extension[backCurve].value[x].value 1..
* extension[lensSpecification].extension[backCurve].value[x].comparator ..0
* extension[lensSpecification].extension[backCurve].value[x].unit 1..
* extension[lensSpecification].extension[backCurve].value[x].system 1..
* extension[lensSpecification].extension[backCurve].value[x].code 1..
* extension[lensSpecification].extension[diameter] ^short = "Akies diametras (DIA) / OS Diametras (DIA)"
* extension[lensSpecification].extension[diameter] ^definition = "Akies diametras (DIA) / OS Diametras (DIA)"
* extension[lensSpecification].extension[diameter].value[x] 1..
* extension[lensSpecification].extension[diameter].value[x] only Quantity
* extension[lensSpecification].extension[diameter].value[x].id ..0
* extension[lensSpecification].extension[diameter].value[x].value 1..
* extension[lensSpecification].extension[diameter].value[x].comparator ..0
* extension[lensSpecification].extension[diameter].value[x].unit 1..
* extension[lensSpecification].extension[diameter].value[x].system 1..
* extension[lensSpecification].extension[diameter].value[x].code 1..
* extension[lensSpecification].extension[purpose] ^short = "Akinių/lešių paskirtis"
* extension[lensSpecification].extension[purpose] ^definition = "Akinių/lešių paskirtis.\r\nGalimos reikšmės:\r\n- nu : Nuolatiniam dėvėjimui\r\n- ar : Artumui\r\n- nd : Tolumui"
* extension[lensSpecification].extension[purpose].value[x] 1..
* extension[lensSpecification].extension[purpose].value[x] only CodeableConcept
* extension[lensSpecification].extension[purpose].value[x].id ..0
* extension[lensSpecification].extension[purpose].value[x].extension ..0
* extension[lensSpecification].extension[purpose].value[x].coding 1..1
* extension[lensSpecification].extension[purpose].value[x].coding.id ..0
* extension[lensSpecification].extension[purpose].value[x].coding.extension ..0
* extension[lensSpecification].extension[purpose].value[x].coding.system 1..
* extension[lensSpecification].extension[purpose].value[x].coding.version ..0
* extension[lensSpecification].extension[purpose].value[x].coding.code 1..
* extension[lensSpecification].extension[purpose].value[x].coding.display 1..
* extension[lensSpecification].extension[purpose].value[x].coding.userSelected ..0
* extension[lensSpecification].extension[distanceBetweenPupils] ^short = "Atstumas tarp vyzdžių"
* extension[lensSpecification].extension[distanceBetweenPupils] ^definition = "Atstumas tarp vyzdžių"
* extension[lensSpecification].extension[distanceBetweenPupils].value[x] 1..
* extension[lensSpecification].extension[distanceBetweenPupils].value[x] only Quantity
* extension[lensSpecification].extension[distanceBetweenPupils].value[x].id ..0
* extension[lensSpecification].extension[distanceBetweenPupils].value[x].value 1..
* extension[lensSpecification].extension[distanceBetweenPupils].value[x].comparator ..0
* extension[lensSpecification].extension[distanceBetweenPupils].value[x].unit 1..
* extension[lensSpecification].extension[distanceBetweenPupils].value[x].system 1..
* extension[lensSpecification].extension[distanceBetweenPupils].value[x].code 1..
* extension[lensSpecification].extension[description] ^short = "Akinių/lešių paskirties aprašymas"
* extension[lensSpecification].extension[description] ^definition = "Akinių/lešių paskirties aprašymas"
* extension[lensSpecification].extension[description].value[x] 1..
* extension[lensSpecification].extension[description].value[x] only string
* extension[lensSpecification].extension[note] ^short = "Pastabos"
* extension[lensSpecification].extension[note] ^definition = "Pastabos"
* extension[lensSpecification].extension[note].value[x] 1..
* extension[lensSpecification].extension[note].value[x] only string
* url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-device-paper-prescription-lenses" (exactly)

Invariant: ext-2
Description: "Each eye (left or right) may be specified at most once within the lensSpecification extension."
* severity = #error
* expression = " extension.where(url='lensSpecification').extension.where(url='eye').value.isDistinct()"