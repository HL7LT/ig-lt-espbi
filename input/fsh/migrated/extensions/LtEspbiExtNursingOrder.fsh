Alias: $NursingServiceType = http://esveikata.lt/classifiers/NursingServiceType

Extension: LtEspbiExtNursingOrder
Id: LtEspbiExtNursingOrder
Description: "Siuntimo Slaugos paslaugos namuose duomenys / ServiceRequest Home Care Services data"
Context: ServiceRequest
* ^url = "http://esveikata.lt/Profile/ltnhr-servicerequest/nursingOrder"
* ^status = #draft
* . ..1
* . ^short = "Siuntimo Slaugos paslaugos namuose duomenys / ServiceRequest Home Care Services data"
* . ^definition = "Privalomas, jeigu pasirinkti Slaugos paslaugų namuose skyrimas"
* extension contains
    type 1..1 and
    needForCare 0..1
* extension[type] ^short = "Slaugos paslaugų tipas / Nursing type"
* extension[type].value[x] 1..
* extension[type].value[x] only CodeableConcept
* extension[type].value[x] ^example.label = "example"
* extension[type].value[x] ^example.valueCodeableConcept = $NursingServiceType#1 "ASPN"
* extension[type].value[x].id ..0
* extension[type].value[x].extension ..0
* extension[type].value[x].coding 1..1
* extension[type].value[x].coding.id ..0
* extension[type].value[x].coding.extension ..0
* extension[type].value[x].coding.system 1..
* extension[type].value[x].coding.system = "http://esveikata.lt/classifiers/NursingServiceType" (exactly)
* extension[type].value[x].coding.version ..0
* extension[type].value[x].coding.code 1..
* extension[type].value[x].coding.userSelected ..0
* extension[needForCare] ^short = "ASPN poreikis / The need for Care"
* extension[needForCare].value[x] 1..
* extension[needForCare].value[x] only string
* extension[needForCare].value[x] ^example.label = "example"
* extension[needForCare].value[x] ^example.valueString = "15 balu, ASPN poreikis reikalingas"
* url = "http://esveikata.lt/Profile/ltnhr-servicerequest/nursingOrder" (exactly)