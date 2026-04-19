Alias: $lt-espbi-practitioner-role = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-practitioner-role
Alias: $lt-espbi-organization = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-organization
Alias: $lt-espbi-medication = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-medication

Extension: LtEspbiExtPaperPrescription
Id: LtEspbiExtPaperPrescription
Description: "Popierinio recepto duomenys / Paper prescription details"
Context: MedicationDispense.authorizingPrescription
* ^url = "http://esveikata.lt/Profile/lt-med-dispense/paperPrescription"
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
    form2 0..1 and
    conditionCode 0..1 and
    compensationCode 0..1 and
    aagaSgasNumber 0..1 and
    authorLabelNumber 0..1 and
    author 1..1 and
    authorDepartment 0..1 and
    dispenserNote 0..1 and
    quantity 1..1 and
    tags 0..1 and
    medicationReference 0..1 and
    medication 0..1 and
    extemporaneous 0..1 and
    medicationInstruction 0..1 and
    medicalAids 0..1
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
* extension[form2] ^short = "Popierinio recepto 2 formos duomenys, jei pateiktas kartu su 3 arba 3 išimties forma"
* extension[form2].extension 2..
* extension[form2].extension contains
    tag 1..1 and
    series 0..1 and
    number 1..1
* extension[form2].extension[tag] ^short = "Popierinio recepto žyma, kad kartu su 3 arba 3 išimties forma yra pateikta ir 2 forma"
* extension[form2].extension[tag].value[x] 1..
* extension[form2].extension[tag].value[x] only boolean
* extension[form2].extension[series] ^short = "Popierinio recepto 2 Formos serija"
* extension[form2].extension[series].value[x] 1..
* extension[form2].extension[series].value[x] only string
* extension[form2].extension[number] ^short = "Popierinio recepto 2 Formos numeris"
* extension[form2].extension[number].value[x] only string
* extension[conditionCode] ^short = "Popieriniame recepte nurodyta diagnozė, dėl kurios skririamas vaistas (TLK10)"
* extension[conditionCode] ^definition = "Popieriniame recepte nurodyta diagnozė, dėl kurios skririamas vaistas (TLK10). \r\nGalimos reikšmės nurodytos klasifikatoriuje tlk-10-am."
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
* extension[quantity] ^short = "Popieriniame recepte nurodytas dozuočių arba MPP vienetų skaičius"
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
    labelingExemptionTag 0..1 and
    nominal 0..1
* extension[tags].extension[tagsGkTag] ^short = "Popieriniame recepte nurodyta GK sprendimo žyma"
* extension[tags].extension[tagsGkTag].value[x] 1..
* extension[tags].extension[tagsGkTag].value[x] only boolean
* extension[tags].extension[specialTag] ^short = "Popieriniame recepte nurodyta ypatingo skyrimo žyma"
* extension[tags].extension[specialTag].value[x] 1..
* extension[tags].extension[specialTag].value[x] only boolean
* extension[tags].extension[specialistDecisionTag] ^short = "Popieriniame recepte nurodyta specialisto sprendimu žyma "
* extension[tags].extension[specialistDecisionTag].value[x] 1..
* extension[tags].extension[specialistDecisionTag].value[x] only boolean
* extension[tags].extension[labelingExemptionTag] ^short = "Popieriniame recepte nurodyta ženklinimo išimtis žyma"
* extension[tags].extension[labelingExemptionTag] ^definition = "Popieriniame recepte nurodyta ženklinimo išimtis žyma."
* extension[tags].extension[labelingExemptionTag].value[x] 1..
* extension[tags].extension[labelingExemptionTag].value[x] only boolean
* extension[tags].extension[nominal] ^short = "Popieriniame recepte nurodytas vardinis vaistas"
* extension[tags].extension[nominal].extension 1..
* extension[tags].extension[nominal].extension contains
    tag 1..1 and
    confirm 0..1
* extension[tags].extension[nominal].extension[tag] ^short = "Popieriniame recepte nurodyta Vardinio vaisto žyma"
* extension[tags].extension[nominal].extension[tag].value[x] 1..
* extension[tags].extension[nominal].extension[tag].value[x] only boolean
* extension[tags].extension[nominal].extension[confirm] ^short = "Popieriniame recepte nurodytas patvirtinimas, jog yra paciento sutikimas vartoti vardinius vaistus ir yra užpildytas vardinio vaisto skyrimo pareiškimas (privalomas, jeigu žyma yra true)"
* extension[tags].extension[nominal].extension[confirm].extension 2..
* extension[tags].extension[nominal].extension[confirm].extension contains
    tag 1..1 and
    declarationValid 1..1
* extension[tags].extension[nominal].extension[confirm].extension[tag] ^short = "Popieriniame recepte nurodyta patvirtinimo žyma"
* extension[tags].extension[nominal].extension[confirm].extension[tag].value[x] 1..
* extension[tags].extension[nominal].extension[confirm].extension[tag].value[x] only boolean
* extension[tags].extension[nominal].extension[confirm].extension[declarationValid] ^short = "Popieriniame recepte nurodyta pareiškimo galiojimas"
* extension[tags].extension[nominal].extension[confirm].extension[declarationValid].value[x] 1..
* extension[tags].extension[nominal].extension[confirm].extension[declarationValid].value[x] only Period
* extension[tags].extension[nominal].extension[confirm].extension[declarationValid].value[x].id ..0
* extension[tags].extension[nominal].extension[confirm].extension[declarationValid].value[x].extension ..0
* extension[tags].extension[nominal].extension[confirm].extension[declarationValid].value[x].end 1..
* extension[medicationReference] ^short = "Popieriniame recepte skiriamo vaisto resurso nuoroda"
* extension[medicationReference].value[x] 1..
* extension[medicationReference].value[x] only Reference($lt-espbi-medication)
* extension[medicationReference].value[x].id ..0
* extension[medicationReference].value[x].extension ..0
* extension[medicationReference].value[x].reference 1..
* extension[medicationReference].value[x].type ..0
* extension[medicationReference].value[x].identifier ..0
* extension[medicationReference].value[x].display ..0
* extension[medication] ^short = "Popieriniame recepte skiriamo vaisto duomenys"
* extension[medication].extension 1..
* extension[medication].extension contains
    substances 0..1 and
    name 0..1 and
    strength 0..1 and
    form 1..1 and
    package 0..1
* extension[medication].extension[substances] ^short = "Popieriniame recepte nurodytas bendrinis pavadinimas (veikliosios medžiagos)"
* extension[medication].extension[substances] ^definition = "Popieriniame recepte nurodytas bendrinis pavadinimas (veikliosios medžiagos)"
* extension[medication].extension[substances].value[x] 1..
* extension[medication].extension[substances].value[x] only string
* extension[medication].extension[name] ^short = "Popieriniame recepte nurodytas vaisto konkretus pavadinimas"
* extension[medication].extension[name] ^definition = "Popieriniame recepte nurodytas vaisto konkretus pavadinimas"
* extension[medication].extension[name].value[x] 1..
* extension[medication].extension[name].value[x] only string
* extension[medication].extension[strength] ^short = "Popieriniame recepte nurodytas vaisto stiprumas"
* extension[medication].extension[strength] ^definition = "Popieriniame recepte nurodytas vaisto stiprumas"
* extension[medication].extension[strength].value[x] 1..
* extension[medication].extension[strength].value[x] only string
* extension[medication].extension[form] ^short = "Popieriniame recepte nurodyta vaisto farmacinė forma "
* extension[medication].extension[form] ^definition = "Popieriniame recepte nurodyta vaisto farmacinė forma.\r\nGalimos reikšmės nurodytos klasifikatoriuje pharmaceutical-form."
* extension[medication].extension[form].value[x] 1..
* extension[medication].extension[form].value[x] only CodeableConcept
* extension[medication].extension[form].value[x].id ..0
* extension[medication].extension[form].value[x].extension ..0
* extension[medication].extension[form].value[x].coding 1..1
* extension[medication].extension[form].value[x].coding.id ..0
* extension[medication].extension[form].value[x].coding.extension ..0
* extension[medication].extension[form].value[x].coding.system 1..
* extension[medication].extension[form].value[x].coding.system = "http://esveikata.lt/classifiers/PharmaceuticalForm" (exactly)
* extension[medication].extension[form].value[x].coding.version ..0
* extension[medication].extension[form].value[x].coding.code 1..
* extension[medication].extension[form].value[x].coding.display 1..
* extension[medication].extension[form].value[x].coding.userSelected ..0
* extension[medication].extension[form].value[x].text ..0
* extension[medication].extension[package] ^short = "Popieriniame recepte nurodyta vaisto pakuotė"
* extension[medication].extension[package] ^definition = "Popieriniame recepte nurodyta vaisto pakuotė"
* extension[medication].extension[package].extension contains
    name 0..1 and
    size 0..1
* extension[medication].extension[package].extension[name] ^short = "Popieriniame recepte nurodytas pakuotės pavadinimas"
* extension[medication].extension[package].extension[name] ^definition = "Popieriniame recepte nurodytas pakuotės pavadinimas"
* extension[medication].extension[package].extension[name].value[x] 1..
* extension[medication].extension[package].extension[name].value[x] only string
* extension[medication].extension[package].extension[size] ^short = "Popieriniame recepte nurodytas pakuotės dydis"
* extension[medication].extension[package].extension[size] ^definition = "Popieriniame recepte nurodytas pakuotės dydis"
* extension[medication].extension[package].extension[size].value[x] 1..
* extension[medication].extension[package].extension[size].value[x] only Quantity
* extension[medication].extension[package].extension[size].value[x].id ..0
* extension[medication].extension[package].extension[size].value[x].value 1..
* extension[medication].extension[package].extension[size].value[x].comparator ..0
* extension[medication].extension[package].extension[size].value[x].unit 1..
* extension[medication].extension[package].extension[size].value[x].system 1..
* extension[medication].extension[package].extension[size].value[x].code 1..
* extension[extemporaneous] ^short = "Popieriniame recepte nurodyto ekstemporalaus vaisto duomenys"
* extension[extemporaneous].extension contains
    description 0..1 and
    urgencyTag 0..1
* extension[extemporaneous].extension[description] ^short = "Popieriniame recepte nurodytas gaminamo vaisto aprašymas"
* extension[extemporaneous].extension[description].value[x] 1..
* extension[extemporaneous].extension[description].value[x] only string
* extension[extemporaneous].extension[urgencyTag] ^short = "Popieriniame recepte nurodyta skubumo žyma"
* extension[extemporaneous].extension[urgencyTag] ^definition = "Dokumento xml pavyzdyje nurodyta, kad naudojamas code duomenų tipas, tačiau nenurodytas reikšmių sąrašas. Siūloma naudoti  FHIR R5 reikšmių sąrašą http://hl7.org/fhir/ValueSet/request-priority. Galimos reikšmės  routine | urgent | asap | stat."
* extension[extemporaneous].extension[urgencyTag].value[x] 1..
* extension[extemporaneous].extension[urgencyTag].value[x] only CodeableConcept
* extension[extemporaneous].extension[urgencyTag].value[x].coding.system = "http://hl7.org/fhir/request-priority"
* extension[medicationInstruction] ^short = "Popierinio recepto vaisto vartojimo instrukcijos"
* extension[medicationInstruction].value[x] 1..
* extension[medicationInstruction].value[x] only Dosage
* extension[medicationInstruction].value[x].id ..0
* extension[medicationInstruction].value[x].extension ..0
* extension[medicationInstruction].value[x].modifierExtension ..0
* extension[medicationInstruction].value[x].modifierExtension ^slicing.discriminator.type = #value
* extension[medicationInstruction].value[x].modifierExtension ^slicing.discriminator.path = "url"
* extension[medicationInstruction].value[x].modifierExtension ^slicing.ordered = false
* extension[medicationInstruction].value[x].modifierExtension ^slicing.rules = #open
* extension[medicationInstruction].value[x].sequence ..0
* extension[medicationInstruction].value[x].text ^short = "Popieriniame recepte nurodyta dozė per dieną. Popieriniame recepte nurodytas nestruktūrizuotas aprašymas (privalomas, jeigu neužpildytas struktūrizuotas aprašymas)"
* extension[medicationInstruction].value[x].additionalInstruction 1..1
* extension[medicationInstruction].value[x].additionalInstruction ^short = "Popieriniame recepte nurodytas vartojimo metodas"
* extension[medicationInstruction].value[x].additionalInstruction.id ..0
* extension[medicationInstruction].value[x].additionalInstruction.extension ..0
* extension[medicationInstruction].value[x].additionalInstruction.coding ..0
* extension[medicationInstruction].value[x].additionalInstruction.text 1..
* extension[medicationInstruction].value[x].patientInstruction ..0
* extension[medicationInstruction].value[x].timing.id ..0
* extension[medicationInstruction].value[x].timing.extension ..0
* extension[medicationInstruction].value[x].timing.modifierExtension ..0
* extension[medicationInstruction].value[x].timing.modifierExtension ^slicing.discriminator.type = #value
* extension[medicationInstruction].value[x].timing.modifierExtension ^slicing.discriminator.path = "url"
* extension[medicationInstruction].value[x].timing.modifierExtension ^slicing.ordered = false
* extension[medicationInstruction].value[x].timing.modifierExtension ^slicing.rules = #open
* extension[medicationInstruction].value[x].timing.event ..0
* extension[medicationInstruction].value[x].timing.repeat ^short = "Popieriniame recepte nurodytas vartojimo dažnumas"
* extension[medicationInstruction].value[x].timing.repeat.id ..0
* extension[medicationInstruction].value[x].timing.repeat.extension ..0
* extension[medicationInstruction].value[x].timing.repeat.bounds[x] ..0
* extension[medicationInstruction].value[x].timing.repeat.count ..0
* extension[medicationInstruction].value[x].timing.repeat.countMax ..0
* extension[medicationInstruction].value[x].timing.repeat.duration 1..
* extension[medicationInstruction].value[x].timing.repeat.duration ^short = "Laiko kiekis, kuriam matuojamas dažnumas (privaloma nurodyti 1)"
* extension[medicationInstruction].value[x].timing.repeat.durationMax ..0
* extension[medicationInstruction].value[x].timing.repeat.durationUnit ..0
* extension[medicationInstruction].value[x].timing.repeat.frequency 1..
* extension[medicationInstruction].value[x].timing.repeat.frequency ^short = "Vartojimo dažnumas (per 1 dieną/savaitę/mėnesį)"
* extension[medicationInstruction].value[x].timing.repeat.frequencyMax ..0
* extension[medicationInstruction].value[x].timing.repeat.period ^short = "Popieriniame recepte nurodyta kas kiek valandų vartoti vaistą "
* extension[medicationInstruction].value[x].timing.repeat.periodMax ..0
* extension[medicationInstruction].value[x].timing.repeat.periodUnit ^short = "Vartojimo laiko matavimo vienetas d | wk | mo "
* extension[medicationInstruction].value[x].timing.repeat.dayOfWeek ..0
* extension[medicationInstruction].value[x].timing.repeat.timeOfDay ..0
* extension[medicationInstruction].value[x].timing.repeat.when ^short = "Popieriniame recepte nurodytos vaisto vartojimo žymos"
* extension[medicationInstruction].value[x].timing.repeat.offset ..0
* extension[medicationInstruction].value[x].timing.code ..0
* extension[medicationInstruction].value[x].asNeeded ^short = "Vartoti pagal poreikį"
* extension[medicationInstruction].value[x].asNeededFor ..0
* extension[medicationInstruction].value[x].site ..0
* extension[medicationInstruction].value[x].route ^short = "Popieriniame recepte nurodytas vaisto vartojimo būdas"
* extension[medicationInstruction].value[x].route ^definition = "Popieriniame recepte nurodytas vaisto vartojimo būdas.\r\nGalimos reikšmės nurodytos klasifikatoriuje route."
* extension[medicationInstruction].value[x].route.id ..0
* extension[medicationInstruction].value[x].route.extension ..0
* extension[medicationInstruction].value[x].route.coding 1..1
* extension[medicationInstruction].value[x].route.coding.id ..0
* extension[medicationInstruction].value[x].route.coding.extension ..0
* extension[medicationInstruction].value[x].route.coding.system = "http://esveikata.lt/classifiers/Route" (exactly)
* extension[medicationInstruction].value[x].route.coding.version ..0
* extension[medicationInstruction].value[x].route.coding.code 1..
* extension[medicationInstruction].value[x].route.coding.display 1..
* extension[medicationInstruction].value[x].route.coding.userSelected ..0
* extension[medicationInstruction].value[x].method ..0
* extension[medicationInstruction].value[x].doseAndRate ..0
* extension[medicationInstruction].value[x].maxDosePerPeriod ..1
* extension[medicationInstruction].value[x].maxDosePerPeriod ^short = "Popieriniame recepte nurodyta dozė per dieną"
* extension[medicationInstruction].value[x].maxDosePerPeriod.id ..0
* extension[medicationInstruction].value[x].maxDosePerPeriod.extension ..0
* extension[medicationInstruction].value[x].maxDosePerPeriod.numerator 1..
* extension[medicationInstruction].value[x].maxDosePerPeriod.numerator ^short = "Dozės kiekis / Numerator value"
* extension[medicationInstruction].value[x].maxDosePerPeriod.numerator.id ..0
* extension[medicationInstruction].value[x].maxDosePerPeriod.numerator.value 1..
* extension[medicationInstruction].value[x].maxDosePerPeriod.numerator.comparator ..0
* extension[medicationInstruction].value[x].maxDosePerPeriod.numerator.unit 1..
* extension[medicationInstruction].value[x].maxDosePerPeriod.numerator.system 1..
* extension[medicationInstruction].value[x].maxDosePerPeriod.numerator.code 1..
* extension[medicationInstruction].value[x].maxDosePerPeriod.denominator 1..
* extension[medicationInstruction].value[x].maxDosePerPeriod.denominator ^short = "Laikotarpio matas / Denominator value"
* extension[medicationInstruction].value[x].maxDosePerPeriod.denominator.id ..0
* extension[medicationInstruction].value[x].maxDosePerPeriod.denominator.value 1..
* extension[medicationInstruction].value[x].maxDosePerPeriod.denominator.unit 1..
* extension[medicationInstruction].value[x].maxDosePerPeriod.denominator.system 1..
* extension[medicationInstruction].value[x].maxDosePerPeriod.denominator.code 1..
* extension[medicationInstruction].value[x].maxDosePerAdministration ^short = "Popieriniame recepte nurodyta vienkartinė dozė"
* extension[medicationInstruction].value[x].maxDosePerAdministration.value 1..
* extension[medicationInstruction].value[x].maxDosePerAdministration.unit 1..
* extension[medicationInstruction].value[x].maxDosePerAdministration.system 1..
* extension[medicationInstruction].value[x].maxDosePerAdministration.system = "http://esveikata.lt/classifiers/PharmaceuticalFormMeasureUnit\"" (exactly)
* extension[medicationInstruction].value[x].maxDosePerAdministration.code 1..
* extension[medicationInstruction].value[x].maxDosePerLifetime ..0
* extension[medicalAids] ^short = "Popierinio recepto skiramos Medicinos pagalbos priemonės (MPP) duomenys "
* extension[medicalAids] ^definition = "Popierinio recepto skiramos Medicinos pagalbos priemonės (MPP) duomenys "
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
* url = "http://esveikata.lt/Profile/lt-med-dispense/paperPrescription" (exactly)