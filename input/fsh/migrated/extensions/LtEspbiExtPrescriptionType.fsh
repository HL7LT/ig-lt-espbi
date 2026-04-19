Extension: LtEspbiExtPrescriptionType
Id: LtEspbiExtPrescriptionType
Description: "Skyrimo tipas / Prescription type"
Context: DeviceRequest
* ^url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-prescription-type"
* ^status = #draft
* . 1..1
* . ^short = "Skyrimo tipas / Prescription type"
* . ^definition = "Skyrimo tipas"
* url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-prescription-type" (exactly)
* value[x] 1..
* value[x] only Coding
* value[x].id ..0
* value[x].extension ..0
* value[x].system 1..
* value[x].system = "http://esveikata.lt/classifiers/medicationPrescriptionType" (exactly)
* value[x].version ..0
* value[x].code 1..
* value[x].display 1..
* value[x].userSelected ..0