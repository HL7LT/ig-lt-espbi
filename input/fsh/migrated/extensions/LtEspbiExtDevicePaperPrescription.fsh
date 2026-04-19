Alias: $lt-espbi-practitioner-role = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-practitioner-role
Alias: $lt-espbi-organization = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-organization
Alias: $lt-espbi-device = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-device

Extension: LtEspbiExtDevicePaperPrescription
Id: LtEspbiExtDevicePaperPrescription
Description: "Popierinio recepto, kuriuo skiriami MPP ar medicinos prietaisai, duomenys / Data from a paper prescription for prescription MPP or medical devices"
Context: DeviceDispense.basedOn
* ^url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-device-paper-prescription"
* ^status = #draft
* . ..1
* . ^short = "Popierinio recepto duomenys"
* . ^definition = "Popierinio recepto duomenys. Būtinas jei recepto forma yra pp (popierinis)"
* extension ^short = "Popierinio recepto skyrimo tipas"
* extension contains
    type 1..1 and
    form 1..1 and
    date 1..1 and
    validityPeriod 1..1 and
    series 0..1 and
    number 1..1 and
    conditionCode 0..1 and
    compensationCode 0..1 and
    aagaSgasNumber 0..1 and
    authorLabelNumber 0..1 and
    author 1..1 and
    authorDepartment 0..1 and
    dispenserNote 0..1 and
    quantity 1..1 and
    tags 0..1 and
    deviceReference 0..1 and
    medicalAids 0..1 and
    lenses 0..1
* extension[type] ^short = "Popierinio recepto skyrimo tipas"
* extension[type] ^definition = "Popierinio recepto skyrimo tipas.\r\nGalimos reikšmės nurodytos klasifikatoriuje medication-prescription-type (http://esveikata.lt/classifiers/MedicationPrescriptionType)."
* extension[type].value[x] 1..
* extension[type].value[x] only CodeableConcept
* extension[type].value[x].id ..0
* extension[type].value[x].extension ..0
* extension[type].value[x].coding 1..1
* extension[type].value[x].coding.id ..0
* extension[type].value[x].coding.extension ..0
* extension[type].value[x].coding.system 1..
* extension[type].value[x].coding.system = "http://esveikata.lt/classifiers/MedicationPrescriptionType" (exactly)
* extension[type].value[x].coding.version ..0
* extension[type].value[x].coding.code 1..
* extension[type].value[x].coding.display 1..
* extension[type].value[x].coding.userSelected ..0
* extension[type].value[x].text ..0
* extension[form] ^short = "Popierinio recepto forma"
* extension[form] ^definition = "Galimos reikšmės nurodytos klasifikatoriuje http://esveikata.lt/classifiers/PaperPrescriptionForm."
* extension[form].value[x] 1..
* extension[form].value[x] only CodeableConcept
* extension[form].value[x].id ..0
* extension[form].value[x].extension ..0
* extension[form].value[x].coding 1..1
* extension[form].value[x].coding.id ..0
* extension[form].value[x].coding.extension ..0
* extension[form].value[x].coding.system 1..
* extension[form].value[x].coding.system = "http://esveikata.lt/classifiers/PaperPrescriptionForm" (exactly)
* extension[form].value[x].coding.version ..0
* extension[form].value[x].coding.code 1..
* extension[form].value[x].coding.display 1..
* extension[form].value[x].coding.userSelected ..0
* extension[form].value[x].text ..0
* extension[date] ^short = "Popierinio recepto išrašymo data"
* extension[date].value[x] 1..
* extension[date].value[x] only date
* extension[validityPeriod] ^short = "Popierinio recepto galiojimo laikotarpis"
* extension[validityPeriod].value[x] 1..
* extension[validityPeriod].value[x] only Period
* extension[validityPeriod].value[x].id ..0
* extension[validityPeriod].value[x].extension ..0
* extension[validityPeriod].value[x].start 1..
* extension[validityPeriod].value[x].start ^short = "SPopierinio recepto galiojimo pradžios data"
* extension[validityPeriod].value[x].end 1..
* extension[validityPeriod].value[x].end ^short = "Popierinio recepto galiojimo pabaigos data"
* extension[series] ^short = "Popierinio recepto serija"
* extension[series].value[x] 1..
* extension[series].value[x] only string
* extension[number] ^short = "Popierinio recepto numeris"
* extension[number].value[x] 1..
* extension[number].value[x] only string
* extension[conditionCode] ^short = "Popieriniame recepte nurodyta diagnozė, dėl kurios skiriami MPP ar medicinos prietaisai (TLK10). Galimos reikšmės nurodytos klasifikatoriuje tlk-10-am."
* extension[conditionCode] ^definition = "Popieriniame recepte nurodyta diagnozė, dėl kurios skiriami MPP ar medicinos prietaisai (TLK10). Galimos reikšmės nurodytos klasifikatoriuje tlk-10-am.\r\nGalimos reikšmės nurodytos klasifikatoriuje tlk-10-am."
* extension[conditionCode].value[x] 1..
* extension[conditionCode].value[x] only CodeableConcept
* extension[conditionCode].value[x].id ..0
* extension[conditionCode].value[x].extension ..0
* extension[conditionCode].value[x].coding 1..1
* extension[conditionCode].value[x].coding.id ..0
* extension[conditionCode].value[x].coding.extension ..0
* extension[conditionCode].value[x].coding.system 1..
* extension[conditionCode].value[x].coding.system = "http://esveikata.lt/classifiers/TLK-10-AM" (exactly)
* extension[conditionCode].value[x].coding.version ..0
* extension[conditionCode].value[x].coding.code 1..
* extension[conditionCode].value[x].coding.display 1..
* extension[conditionCode].value[x].coding.userSelected ..0
* extension[conditionCode].value[x].text ..0
* extension[compensationCode] ^short = "Popieriniame recepte nurodytas kompensacijos kodas (privalomas, jeigu kompensuojamas)"
* extension[compensationCode] ^definition = "Popieriniame recepte nurodytas kompensacijos kodas (privalomas, jeigu kompensuojamas).\r\nGalimos reikšmės nurodytos klasifikatoriuje tlk-10-am."
* extension[compensationCode].value[x] 1..
* extension[compensationCode].value[x] only CodeableConcept
* extension[compensationCode].value[x].id ..0
* extension[compensationCode].value[x].extension ..0
* extension[compensationCode].value[x].coding 1..1
* extension[compensationCode].value[x].coding.id ..0
* extension[compensationCode].value[x].coding.extension ..0
* extension[compensationCode].value[x].coding.system 1..
* extension[compensationCode].value[x].coding.system = "http://esveikata.lt/classifiers/Medication/CompensationCode" (exactly)
* extension[compensationCode].value[x].coding.version ..0
* extension[compensationCode].value[x].coding.code 1..
* extension[compensationCode].value[x].coding.display 1..
* extension[compensationCode].value[x].coding.userSelected ..0
* extension[compensationCode].value[x].text ..0
* extension[aagaSgasNumber] ^short = "Popieriniame recepte nurodytas AAGA/SGAS numeris"
* extension[aagaSgasNumber].value[x] 1..
* extension[aagaSgasNumber].value[x] only string
* extension[authorLabelNumber] ^short = "Popieriniame recepte nurodytas gydytojo lipduko numeris"
* extension[authorLabelNumber].value[x] 1..
* extension[authorLabelNumber].value[x] only string
* extension[author] ^short = "Sveikatos priežiūros specialistas, kuris išrašė popierinį receptą"
* extension[author].value[x] 1..
* extension[author].value[x] only Reference($lt-espbi-practitioner-role)
* extension[author].value[x].id ..0
* extension[author].value[x].extension ..0
* extension[author].value[x].reference 1..
* extension[author].value[x].type ..0
* extension[author].value[x].identifier ..0
* extension[author].value[x].display ..0
* extension[authorDepartment].value[x] 1..
* extension[authorDepartment].value[x] only Reference($lt-espbi-organization)
* extension[authorDepartment].value[x].id ..0
* extension[authorDepartment].value[x].extension ..0
* extension[authorDepartment].value[x].reference 1..
* extension[authorDepartment].value[x].type ..0
* extension[authorDepartment].value[x].identifier ..0
* extension[authorDepartment].value[x].display ..0
* extension[dispenserNote] ^short = "Popieriniame recepte nurodyta pastaba farmacijos specialistui"
* extension[dispenserNote].value[x] 1..
* extension[dispenserNote].value[x] only string
* extension[quantity] ^short = "Popieriniame recepte nurodytas MPP ar medicinos prietaisų vienetų skaičius."
* extension[quantity] ^definition = "Popieriniame recepte nurodytas MPP ar medicinos prietaisų vienetų skaičius."
* extension[quantity].value[x] 1..
* extension[quantity].value[x] only Quantity
* extension[quantity].value[x].id ..0
* extension[quantity].value[x].value 1..
* extension[quantity].value[x].comparator ..0
* extension[quantity].value[x].unit 1..
* extension[quantity].value[x].system 1..
* extension[quantity].value[x].code 1..
* extension[tags] ^short = "Popierinio recepto papildomos žymos"
* extension[tags].extension contains
    tagsGkTag 0..1 and
    specialTag 0..1 and
    specialistDecisionTag 0..1 and
    labelingExemptionTag 0..1
* extension[tags].extension[tagsGkTag] ^short = "Popieriniame recepte nurodyta GK sprendimo žyma"
* extension[tags].extension[tagsGkTag].value[x] 1..
* extension[tags].extension[tagsGkTag].value[x] only boolean
* extension[tags].extension[specialTag] ^short = "Popieriniame recepte nurodyta ypatingo skyrimo žyma"
* extension[tags].extension[specialTag].value[x] 1..
* extension[tags].extension[specialTag].value[x] only boolean
* extension[tags].extension[specialistDecisionTag] ^short = "Popieriniame recepte nurodyta specialisto sprendimu žyma "
* extension[tags].extension[specialistDecisionTag].value[x] 1..
* extension[tags].extension[specialistDecisionTag].value[x] only boolean
* extension[tags].extension[labelingExemptionTag] ^short = "Popieriniame recepte nurodyta ženklinimo išimtis žyma."
* extension[tags].extension[labelingExemptionTag] ^definition = "Popieriniame recepte nurodyta ženklinimo išimtis žyma."
* extension[tags].extension[labelingExemptionTag].value[x] 1..
* extension[tags].extension[labelingExemptionTag].value[x] only boolean
* extension[deviceReference] ^short = "Popieriniame recepte skiriamo MPP ar medicinos prietaiso resurso nuoroda."
* extension[deviceReference] ^definition = "Popieriniame recepte skiriamo MPP ar medicinos prietaiso resurso nuoroda."
* extension[deviceReference].value[x] 1..
* extension[deviceReference].value[x] only Reference($lt-espbi-device)
* extension[deviceReference].value[x].id ..0
* extension[deviceReference].value[x].extension ..0
* extension[deviceReference].value[x].reference 1..
* extension[deviceReference].value[x].type ..0
* extension[deviceReference].value[x].identifier ..0
* extension[deviceReference].value[x].display ..0
* extension[medicalAids] ^short = "Popierinio recepto skiramos Medicinos pagalbos priemonės (MPP) ar medicinos prietaiso duomenys"
* extension[medicalAids] ^definition = "Popierinio recepto skiramos Medicinos pagalbos priemonės (MPP) ar medicinos prietaiso duomenys"
* extension[medicalAids].extension contains
    groupCode 0..1 and
    groupName 0..1 and
    name 0..1
* extension[medicalAids].extension[groupCode] ^short = "Popieriniame recepte nurodytas MPP grupės kodas"
* extension[medicalAids].extension[groupCode].value[x] 1..
* extension[medicalAids].extension[groupCode].value[x] only string
* extension[medicalAids].extension[groupName] ^short = "Popieriniame recepte nurodytas MPP grupės pavadinimas"
* extension[medicalAids].extension[groupName].value[x] 1..
* extension[medicalAids].extension[groupName].value[x] only string
* extension[medicalAids].extension[name] ^short = "Popieriniame recepte nurodytas MPP konkretus pavadinimas"
* extension[medicalAids].extension[name].value[x] 1..
* extension[medicalAids].extension[name].value[x] only string
* extension[lenses] ^short = "Popierinio recepto skiramos MP (akinių/lęšių) duomenys"
* extension[lenses] ^definition = "Popierinio recepto skiramos MP (akinių/lęšių) duomenys."
* extension[lenses].extension 2..
* extension[lenses].extension contains
    opticalDevice 1..1 and
    type 0..1
* extension[lenses].extension[opticalDevice] ^short = "Popieriniame recepte nurodytas optinis prietaisas (akinių lęšiai, kontaktiniai lęšiai)"
* extension[lenses].extension[opticalDevice] ^definition = "Popieriniame recepte nurodytas optinis prietaisas (akinių lęšiai, kontaktiniai lęšiai).\r\nGalimos reikšmės:\r\n- al: Akinių lęšiai\r\n- kl: Kontaktiniai lęšiai"
* extension[lenses].extension[opticalDevice].value[x] 1..
* extension[lenses].extension[opticalDevice].value[x] only CodeableConcept
* extension[lenses].extension[opticalDevice].value[x].id ..0
* extension[lenses].extension[opticalDevice].value[x].extension ..0
* extension[lenses].extension[opticalDevice].value[x].coding 1..1
* extension[lenses].extension[opticalDevice].value[x].coding.id ..0
* extension[lenses].extension[opticalDevice].value[x].coding.extension ..0
* extension[lenses].extension[opticalDevice].value[x].coding.system 1..
* extension[lenses].extension[opticalDevice].value[x].coding.system = " http://hl7.org/fhir/ValueSet/vision-product"
* extension[lenses].extension[opticalDevice].value[x].coding.version ..0
* extension[lenses].extension[opticalDevice].value[x].coding.code 1..
* extension[lenses].extension[opticalDevice].value[x].coding.display 1..
* extension[lenses].extension[opticalDevice].value[x].coding.userSelected ..0
* extension[lenses].extension[opticalDevice].value[x].text ..0
* extension[lenses].extension[type] ^short = "Popieriniame recepte nurodytas akinių lęšių tipas (sudėtingieji, paprastieji)"
* extension[lenses].extension[type] ^definition = "Popieriniame recepte nurodytas akinių lęšių tipas (sudėtingieji, paprastieji). Būtinas, jei optinis prietaisas yra akinių lęšiai.\r\nGalimos reikšmės:\r\n- sd: Sudėtingieji.\r\n- pp: Paprastieji."
* extension[lenses].extension[type].value[x] 1..
* extension[lenses].extension[type].value[x] only CodeableConcept
* extension[lenses].extension[type].value[x].id ..0
* extension[lenses].extension[type].value[x].extension ..0
* extension[lenses].extension[type].value[x].coding 1..1
* extension[lenses].extension[type].value[x].coding.id ..0
* extension[lenses].extension[type].value[x].coding.extension ..0
* extension[lenses].extension[type].value[x].coding.system 1..
* extension[lenses].extension[type].value[x].coding.system = "http://esveikata.lt/fhir/CodeSystem/lt-espbi-cs-lenses-type" (exactly)
* extension[lenses].extension[type].value[x].coding.version ..0
* extension[lenses].extension[type].value[x].coding.code 1..
* extension[lenses].extension[type].value[x].coding.display 1..
* extension[lenses].extension[type].value[x].coding.userSelected ..0
* extension[lenses].extension[type].value[x].text ..0
* extension[lenses].extension[lensSpecification] obeys ext-2
* extension[lenses].extension[lensSpecification] ^sliceName = "lensSpecification"
* extension[lenses].extension[lensSpecification] ^short = "Popieriniame recepte nurodyti akinių / lęšių parametrai"
* extension[lenses].extension[lensSpecification] ^definition = "Popieriniame recepte nurodyti akinių / lęšių parametrai."
* extension[lenses].extension[lensSpecification].extension 2..
* extension[lenses].extension[lensSpecification].extension contains
    eye 1..1 and
    sphere 0..1 and
    cylinder 0..1 and
    cylinderAxis 0..1 and
    add 0..1 and
    prism 0..1 and
    prismBase 0..1 and
    prismAxis 0..1 and
    nearPD 0..1 and
    distancePD 0..1 and
    backCurve 0..1 and
    diameter 0..1 and
    distanceBetweenPupils 0..1 and
    description 1..1 and
    note 0..1
* extension[lenses].extension[lensSpecification].extension[eye] ^short = "Popieriniame recepte nurodyta akis"
* extension[lenses].extension[lensSpecification].extension[eye] ^definition = "Popieriniame recepte nurodyta akis"
* extension[lenses].extension[lensSpecification].extension[eye].value[x] 1..
* extension[lenses].extension[lensSpecification].extension[eye].value[x] only code
* extension[lenses].extension[lensSpecification].extension[eye].value[x] from VisionEyes (required)
* extension[lenses].extension[lensSpecification].extension[sphere] ^short = "Popieriniame recepte nurodyta akies sfera (SPH) / OS sfera"
* extension[lenses].extension[lensSpecification].extension[sphere] ^definition = "Popieriniame recepte nurodyta akies sfera (SPH) / OS sfera."
* extension[lenses].extension[lensSpecification].extension[sphere].value[x] 1..
* extension[lenses].extension[lensSpecification].extension[sphere].value[x] only Quantity
* extension[lenses].extension[lensSpecification].extension[sphere].value[x].id ..0
* extension[lenses].extension[lensSpecification].extension[sphere].value[x].value 1..
* extension[lenses].extension[lensSpecification].extension[sphere].value[x].comparator ..0
* extension[lenses].extension[lensSpecification].extension[sphere].value[x].unit 1..
* extension[lenses].extension[lensSpecification].extension[sphere].value[x].system 1..
* extension[lenses].extension[lensSpecification].extension[sphere].value[x].system = "http://unitsofmeasure.org"
* extension[lenses].extension[lensSpecification].extension[sphere].value[x].code 1..
* extension[lenses].extension[lensSpecification].extension[cylinder] ^short = "Popieriniame recepte nurodytas akies cilindras (CYL) / OS cilindras"
* extension[lenses].extension[lensSpecification].extension[cylinder] ^definition = "Popieriniame recepte nurodytas akies cilindras (CYL) / OS cilindras"
* extension[lenses].extension[lensSpecification].extension[cylinder].value[x] 1..
* extension[lenses].extension[lensSpecification].extension[cylinder].value[x] only Quantity
* extension[lenses].extension[lensSpecification].extension[cylinder].value[x].id ..0
* extension[lenses].extension[lensSpecification].extension[cylinder].value[x].value 1..
* extension[lenses].extension[lensSpecification].extension[cylinder].value[x].comparator ..0
* extension[lenses].extension[lensSpecification].extension[cylinder].value[x].unit 1..
* extension[lenses].extension[lensSpecification].extension[cylinder].value[x].system 1..
* extension[lenses].extension[lensSpecification].extension[cylinder].value[x].system = "http://unitsofmeasure.org"
* extension[lenses].extension[lensSpecification].extension[cylinder].value[x].code 1..
* extension[lenses].extension[lensSpecification].extension[cylinderAxis] ^short = "Popieriniame recepte nurodyta akies ašis (AXIS) / OS cilindro ašis"
* extension[lenses].extension[lensSpecification].extension[cylinderAxis] ^definition = "Popieriniame recepte nurodyta akies ašis (AXIS) / OS cilindro ašis"
* extension[lenses].extension[lensSpecification].extension[cylinderAxis].value[x] 1..
* extension[lenses].extension[lensSpecification].extension[cylinderAxis].value[x] only Quantity
* extension[lenses].extension[lensSpecification].extension[cylinderAxis].value[x].id ..0
* extension[lenses].extension[lensSpecification].extension[cylinderAxis].value[x].value 1..
* extension[lenses].extension[lensSpecification].extension[cylinderAxis].value[x].comparator ..0
* extension[lenses].extension[lensSpecification].extension[cylinderAxis].value[x].unit 1..
* extension[lenses].extension[lensSpecification].extension[cylinderAxis].value[x].system 1..
* extension[lenses].extension[lensSpecification].extension[cylinderAxis].value[x].system = "http://unitsofmeasure.org" (exactly)
* extension[lenses].extension[lensSpecification].extension[cylinderAxis].value[x].code 1..
* extension[lenses].extension[lensSpecification].extension[add] ^short = "Popieriniame recepte nurodyta akies adidacija (ADD)/degresija / OS ADD"
* extension[lenses].extension[lensSpecification].extension[add] ^definition = "Popieriniame recepte nurodyta akies adidacija (ADD)/degresija / OS ADD"
* extension[lenses].extension[lensSpecification].extension[add].value[x] 1..
* extension[lenses].extension[lensSpecification].extension[add].value[x] only Quantity
* extension[lenses].extension[lensSpecification].extension[add].value[x].id ..0
* extension[lenses].extension[lensSpecification].extension[add].value[x].value 1..
* extension[lenses].extension[lensSpecification].extension[add].value[x].comparator ..0
* extension[lenses].extension[lensSpecification].extension[add].value[x].unit 1..
* extension[lenses].extension[lensSpecification].extension[add].value[x].system 1..
* extension[lenses].extension[lensSpecification].extension[add].value[x].code 1..
* extension[lenses].extension[lensSpecification].extension[prism] ^short = "Popieriniame recepte nurodyta akies prizmė (PRISM) / OS prizmė "
* extension[lenses].extension[lensSpecification].extension[prism] ^definition = "Popieriniame recepte nurodyta akies prizmė (PRISM) / OS prizmė "
* extension[lenses].extension[lensSpecification].extension[prism].value[x] 1..
* extension[lenses].extension[lensSpecification].extension[prism].value[x] only Quantity
* extension[lenses].extension[lensSpecification].extension[prism].value[x].id ..0
* extension[lenses].extension[lensSpecification].extension[prism].value[x].value 1..
* extension[lenses].extension[lensSpecification].extension[prism].value[x].comparator ..0
* extension[lenses].extension[lensSpecification].extension[prism].value[x].unit 1..
* extension[lenses].extension[lensSpecification].extension[prism].value[x].system 1..
* extension[lenses].extension[lensSpecification].extension[prism].value[x].code 1..
* extension[lenses].extension[lensSpecification].extension[prismBase] ^short = "Popieriniame recepte nurodyta akies prizmės bazės (BASE) pusė"
* extension[lenses].extension[lensSpecification].extension[prismBase] ^definition = "Popieriniame recepte nurodyta akies prizmės bazės (BASE) pusė"
* extension[lenses].extension[lensSpecification].extension[prismBase].value[x] 1..
* extension[lenses].extension[lensSpecification].extension[prismBase].value[x] only CodeableConcept
* extension[lenses].extension[lensSpecification].extension[prismBase].value[x].id ..0
* extension[lenses].extension[lensSpecification].extension[prismBase].value[x].extension ..0
* extension[lenses].extension[lensSpecification].extension[prismBase].value[x].coding 1..1
* extension[lenses].extension[lensSpecification].extension[prismBase].value[x].coding.id ..0
* extension[lenses].extension[lensSpecification].extension[prismBase].value[x].coding.extension ..0
* extension[lenses].extension[lensSpecification].extension[prismBase].value[x].coding.system 1..
* extension[lenses].extension[lensSpecification].extension[prismBase].value[x].coding.system = "http://hl7.org/fhir/ValueSet/vision-base-codes"
* extension[lenses].extension[lensSpecification].extension[prismBase].value[x].coding.version ..0
* extension[lenses].extension[lensSpecification].extension[prismBase].value[x].coding.code 1..
* extension[lenses].extension[lensSpecification].extension[prismBase].value[x].coding.display 1..
* extension[lenses].extension[lensSpecification].extension[prismBase].value[x].coding.userSelected ..0
* extension[lenses].extension[lensSpecification].extension[prismAxis] ^short = "Popieriniame recepte nurodytas akies prizmės bazės krypties meridianas"
* extension[lenses].extension[lensSpecification].extension[prismAxis] ^definition = "Popieriniame recepte nurodytas akies prizmės bazės krypties meridianas"
* extension[lenses].extension[lensSpecification].extension[prismAxis].value[x] 1..
* extension[lenses].extension[lensSpecification].extension[prismAxis].value[x] only Quantity
* extension[lenses].extension[lensSpecification].extension[prismAxis].value[x].id ..0
* extension[lenses].extension[lensSpecification].extension[prismAxis].value[x].value 1..
* extension[lenses].extension[lensSpecification].extension[prismAxis].value[x].comparator ..0
* extension[lenses].extension[lensSpecification].extension[prismAxis].value[x].unit 1..
* extension[lenses].extension[lensSpecification].extension[prismAxis].value[x].system 1..
* extension[lenses].extension[lensSpecification].extension[prismAxis].value[x].system = "http://unitsofmeasure.org"
* extension[lenses].extension[lensSpecification].extension[prismAxis].value[x].code 1..
* extension[lenses].extension[lensSpecification].extension[nearPD] ^short = "Popieriniame recepte nurodytas akies PD artumui / OS PD (Artumui)"
* extension[lenses].extension[lensSpecification].extension[nearPD] ^definition = "Popieriniame recepte nurodytas akies PD artumui / OS PD (Artumui)"
* extension[lenses].extension[lensSpecification].extension[nearPD].value[x] 1..
* extension[lenses].extension[lensSpecification].extension[nearPD].value[x] only Quantity
* extension[lenses].extension[lensSpecification].extension[nearPD].value[x].id ..0
* extension[lenses].extension[lensSpecification].extension[nearPD].value[x].value 1..
* extension[lenses].extension[lensSpecification].extension[nearPD].value[x].comparator ..0
* extension[lenses].extension[lensSpecification].extension[nearPD].value[x].unit 1..
* extension[lenses].extension[lensSpecification].extension[nearPD].value[x].system 1..
* extension[lenses].extension[lensSpecification].extension[nearPD].value[x].code 1..
* extension[lenses].extension[lensSpecification].extension[distancePD] ^short = "Popieriniame recepte nurodytas akies PD tolumui / OS PD (Tolumui)"
* extension[lenses].extension[lensSpecification].extension[distancePD] ^definition = "Popieriniame recepte nurodytas akies PD tolumui / OS PD (Tolumui)"
* extension[lenses].extension[lensSpecification].extension[distancePD].value[x] 1..
* extension[lenses].extension[lensSpecification].extension[distancePD].value[x] only Quantity
* extension[lenses].extension[lensSpecification].extension[distancePD].value[x].id ..0
* extension[lenses].extension[lensSpecification].extension[distancePD].value[x].value 1..
* extension[lenses].extension[lensSpecification].extension[distancePD].value[x].comparator ..0
* extension[lenses].extension[lensSpecification].extension[distancePD].value[x].unit 1..
* extension[lenses].extension[lensSpecification].extension[distancePD].value[x].system 1..
* extension[lenses].extension[lensSpecification].extension[distancePD].value[x].code 1..
* extension[lenses].extension[lensSpecification].extension[backCurve] ^short = "Popieriniame recepte nurodyta akies bazinė kreivė (BC) / OS Bazinės kreivė (BC)"
* extension[lenses].extension[lensSpecification].extension[backCurve] ^definition = "Popieriniame recepte nurodyta akies bazinė kreivė (BC) / OS Bazinės kreivė (BC)"
* extension[lenses].extension[lensSpecification].extension[backCurve].value[x] 1..
* extension[lenses].extension[lensSpecification].extension[backCurve].value[x] only Quantity
* extension[lenses].extension[lensSpecification].extension[backCurve].value[x].id ..0
* extension[lenses].extension[lensSpecification].extension[backCurve].value[x].value 1..
* extension[lenses].extension[lensSpecification].extension[backCurve].value[x].comparator ..0
* extension[lenses].extension[lensSpecification].extension[backCurve].value[x].unit 1..
* extension[lenses].extension[lensSpecification].extension[backCurve].value[x].system 1..
* extension[lenses].extension[lensSpecification].extension[backCurve].value[x].code 1..
* extension[lenses].extension[lensSpecification].extension[diameter] ^short = "Popieriniame recepte nurodytas kairės akies diametras (DIA) / OS Diametras (DIA)"
* extension[lenses].extension[lensSpecification].extension[diameter] ^definition = "Popieriniame recepte nurodytas kairės akies diametras (DIA) / OS Diametras (DIA)"
* extension[lenses].extension[lensSpecification].extension[diameter].value[x] 1..
* extension[lenses].extension[lensSpecification].extension[diameter].value[x] only Quantity
* extension[lenses].extension[lensSpecification].extension[diameter].value[x].id ..0
* extension[lenses].extension[lensSpecification].extension[diameter].value[x].value 1..
* extension[lenses].extension[lensSpecification].extension[diameter].value[x].comparator ..0
* extension[lenses].extension[lensSpecification].extension[diameter].value[x].unit 1..
* extension[lenses].extension[lensSpecification].extension[diameter].value[x].system 1..
* extension[lenses].extension[lensSpecification].extension[diameter].value[x].code 1..
* extension[lenses].extension[lensSpecification].extension[distanceBetweenPupils] ^short = "Popieriniame recepte nurodytas atstumas tarp vyzdžių centrų / Atstumas tarp vyzdžių"
* extension[lenses].extension[lensSpecification].extension[distanceBetweenPupils] ^definition = "Popieriniame recepte nurodytas atstumas tarp vyzdžių centrų / Atstumas tarp vyzdžių"
* extension[lenses].extension[lensSpecification].extension[distanceBetweenPupils].value[x] 1..
* extension[lenses].extension[lensSpecification].extension[distanceBetweenPupils].value[x] only Quantity
* extension[lenses].extension[lensSpecification].extension[distanceBetweenPupils].value[x].id ..0
* extension[lenses].extension[lensSpecification].extension[distanceBetweenPupils].value[x].value 1..
* extension[lenses].extension[lensSpecification].extension[distanceBetweenPupils].value[x].comparator ..0
* extension[lenses].extension[lensSpecification].extension[distanceBetweenPupils].value[x].unit 1..
* extension[lenses].extension[lensSpecification].extension[distanceBetweenPupils].value[x].system 1..
* extension[lenses].extension[lensSpecification].extension[distanceBetweenPupils].value[x].code 1..
* extension[lenses].extension[lensSpecification].extension[description] ^short = "Popieriniame recepte nurodytas akinių/lešių paskirties aprašymas"
* extension[lenses].extension[lensSpecification].extension[description] ^definition = "Popieriniame recepte nurodytas akinių/lešių paskirties aprašymas"
* extension[lenses].extension[lensSpecification].extension[description].value[x] 1..
* extension[lenses].extension[lensSpecification].extension[description].value[x] only string
* extension[lenses].extension[lensSpecification].extension[note] ^short = "Popieriniame recepte nurodytos pastabos"
* extension[lenses].extension[lensSpecification].extension[note] ^definition = "Popieriniame recepte nurodytos pastabos"
* extension[lenses].extension[lensSpecification].extension[note].value[x] 1..
* extension[lenses].extension[lensSpecification].extension[note].value[x] only string
* extension[lenses].extension[lensSpecification].url = "lensSpecification" (exactly)
* url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-device-paper-prescription" (exactly)

Invariant: ext-2
Description: "Each eye (left or right) may be specified at most once within the lensSpecification extension."
* severity = #error
* expression = " extension.where(url='lensSpecification').extension.where(url='eye').value.isDistinct()"