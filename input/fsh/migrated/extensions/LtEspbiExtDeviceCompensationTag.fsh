Extension: LtEspbiExtDeviceCompensationTag
Id: LtEspbiExtDeviceCompensationTag
Description: "Požymis, ar kompensuojamas / Tag of whether compensation is provided"
Context: DeviceDispense
* ^url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-device-compensation-tag"
* ^status = #draft
* . 1..1
* . ^short = "Požymis, ar kompensuojamas / Tag of whether compensation is provided"
* . ^definition = "Požymis, ar kompensuojamas"
* url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-device-compensation-tag" (exactly)
* value[x] 1..
* value[x] only boolean