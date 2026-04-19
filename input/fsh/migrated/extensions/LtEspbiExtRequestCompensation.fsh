Extension: LtEspbiExtRequestCompensation
Id: LtEspbiExtRequestCompensation
Description: "Kompensacija / Compensation"
Context: MedicationRequest.dispenseRequest, DeviceRequest
* ^url = "http://esveikata.lt/Profile/lt-med-prescription/compensation"
* ^status = #draft
* . ..1
* obeys ext-5
* . ^short = "Kompensacija / Compensation"
* . ^definition = "Kompensacija"
* extension contains
    tag 1..1 and
    code 0..1
* extension[tag] ^short = "Požymis, ar kompensuojamas / Indication of whether compensation is provided"
* extension[tag] ^definition = "Požymis, ar kompensuojamas."
* extension[tag].value[x] 1..
* extension[tag].value[x] only boolean
* extension[code] ^short = "Kompensacijos kodas (privalomas, jeigu kompensuojamas) / Compensation code (required if compensated) "
* extension[code] ^definition = "Kompensacijos kodas (privalomas, jeigu kompensuojamas)."
* extension[code].value[x] 1..
* extension[code].value[x] only CodeableConcept
* extension[code].value[x].coding 1..1
* extension[code].value[x].coding.id ..0
* extension[code].value[x].coding.extension ..0
* extension[code].value[x].coding.system 1..
* extension[code].value[x].coding.version ..0
* extension[code].value[x].coding.code 1..
* extension[code].value[x].coding.display 1..
* extension[code].value[x].coding.userSelected ..0
* extension[code].value[x].text ..0
* url = "http://esveikata.lt/Profile/lt-med-prescription/compensation" (exactly)

Invariant: ext-5
Description: "If 'tag' is true, the 'code' extension with a CodeableConcept value must be provided"
* severity = #error
* expression = "extension.where(url = 'tag').valueBoolean = true implies extension.where(url = 'code').valueCodeableConcept.exists()"