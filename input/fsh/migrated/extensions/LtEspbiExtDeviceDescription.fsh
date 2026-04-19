Extension: LtEspbiExtDeviceDescription
Id: LtEspbiExtDeviceDescription
Description: "MPP ar medicinos prietaiso aprašymas / Description of the MPP or medical device"
Context: DeviceDispense, DeviceRequest
* ^url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-device-description"
* ^status = #draft
* . ..1
* . ^short = "MPP ar medicinos prietaiso aprašymas / Description of the MPP or medical device"
* . ^definition = "MPP ar medicinos prietaiso aprašymas"
* url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-device-description" (exactly)
* value[x] 1..
* value[x] only string