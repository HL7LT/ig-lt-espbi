Alias: $encounter-class = http://terminology.hl7.org/ValueSet/encounter-class
Alias: $Type = http://esveikata.lt/classifiers/Encounter/Type
Alias: $ServiceType = http://esveikata.lt/classifiers/Encounter/ServiceType
Alias: $ReasonCode = http://esveikata.lt/classifiers/Encounter/ReasonCode
Alias: $lt-espbi-encounter = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-encounter

Profile: LtEspbiEncounterReceptionData
Parent: $lt-espbi-encounter
Id: LtEspbiEncounterReceptionData
* ^status = #draft
* implicitRules ..0
* language ..0
* text ..0
* contained ..0
* extension[ltExtCoverage] ^sliceName = "ltExtCoverage"
* extension[ltExtCoverage].value[x].id ..0
* extension[ltExtCoverage].value[x].extension ..0
* extension[ltExtCoverage].value[x].reference 1..
* extension[ltExtCoverage].value[x].type ..0
* extension[ltExtCoverage].value[x].identifier ..0
* extension[ltExtCoverage].value[x].display ..0
* modifierExtension ..0
* status ^example.label = "example"
* status ^example.valueCode = #in-progress
* class ^definition = "Atvykimo įvykis. Priklauso nuo įstaigos, kurioje apsilankė pacientas, tipo.\r\n\r\nRedaguojant atvykimo duomenis įvykį leidžiama keisti tik tuo atveju, jeigu nėra pateikta su apsilankymu susietų E025 arba E003 medicininių dokumentų. \r\n\r\nNaudojamas klasifikatorius encounter-class.\r\n\r\nPagal FHIR R5 turi būti naudojamas reikšmių sąrašas http://terminology.hl7.org/ValueSet/encounter-class. Galimos reikšmės: inpatient encounter | ambulatory | observation encounter | emergency | virtual | home health."
* class ^example.label = "example"
* class ^example.valueCodeableConcept = $encounter-class#IMP "inpatient encounter"
* class.id ..0
* class.extension ..0
* class.coding.id ..0
* class.coding.extension ..0
* class.coding.version ..0
* class.coding.userSelected ..0
* priority ..0
* type ^definition = "Apsilankymo/atvykimo tipas.\r\n\r\nGalimos reikšmės nurodytos klasifikatoriuje encounter-type (http://esveikata.lt/classifiers/Encounter/Type)."
* type ^example.label = "example"
* type ^example.valueCodeableConcept = $Type#by_order
* type.id ..0
* type.extension ..0
* type.coding.id ..0
* type.coding.extension ..0
* type.coding.version ..0
* type.coding.userSelected ..0
* serviceType.id ..0
* serviceType.extension ..0
* serviceType.concept ^example.label = "example"
* serviceType.concept ^example.valueCodeableConcept = $ServiceType#emergency_assistance "Būtinoji pagalba"
* serviceType.concept.id ..0
* serviceType.concept.extension ..0
* serviceType.concept.coding.id ..0
* serviceType.concept.coding.extension ..0
* serviceType.concept.coding.version ..0
* serviceType.concept.coding.userSelected ..0
* serviceType.reference ..0
* subject ^example.label = "example"
* subject ^example.valueReference.reference = "Patient/1000017309"
* subject.id ..0
* subject.extension ..0
* subject.type ..0
* subject.identifier ..0
* subject.display ..0
* subjectStatus ..0
* episodeOfCare ..0
* basedOn.id ..0
* basedOn.extension ..0
* basedOn.type ..0
* basedOn.identifier ..0
* basedOn.display ..0
* careTeam ..0
* partOf ..0
* appointment ..0
* virtualService ..0
* actualPeriod.id ..0
* actualPeriod.extension ..0
* actualPeriod.start ^example.label = "example"
* actualPeriod.start ^example.valueDateTime = "2024-10-30T07:12:40.031+00:00"
* plannedStartDate ..0
* plannedEndDate ..0
* length ..0
* reason ^definition = "Atvykimo aptarnavimo būdas. Turi būti pildomas, jeigu pagal nurodytą atvykimo tipą yra galimų atvykimo aptarnavimo būdo klasifikatoriaus reikšmių.\r\n\r\nGalimos reikšmės nurodytos klasifikatoriuje encounter-reason (http://esveikata.lt/classifiers/Encounter/ReasonCode)."
* reason.id ..0
* reason.extension ..0
* reason.modifierExtension ..0
* reason.use ^example.label = "example"
* reason.use ^example.valueCodeableConcept = $ReasonCode#documentation
* reason.use.id ..0
* reason.use.extension ..0
* reason.use.coding.id ..0
* reason.use.coding.extension ..0
* reason.use.coding.version ..0
* reason.use.coding.userSelected ..0
* reason.value ..0
* account ..0
* dietPreference ..0
* specialArrangement ..0
* specialCourtesy ..0
* admission ..0
* location ..0