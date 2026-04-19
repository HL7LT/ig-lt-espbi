Extension: LtEspbiExtDeviceRemotePharmacyTag
Id: LtEspbiExtDeviceRemotePharmacyTag
Description: "Požymis, ar MPP ar medicinos prietaisas įsigytas nuotoliniu būdu / Tag whether MPP or medical device was purchased remotely"
Context: DeviceDispense, DeviceRequest
* ^url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-device-remote-pharmacy-tag"
* ^status = #draft
* . ..1
* . ^short = "Požymis, ar MPP ar medicinos prietaisas įsigytas nuotoliniu būdu"
* . ^definition = "Požymis, ar MPP ar medicinos prietaisas įsigytas nuotoliniu būdu. Pridedamas tik tuo atveju, kai įsigyjama nuotoliniu būdu."
* url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-device-remote-pharmacy-tag" (exactly)
* value[x] 1..
* value[x] only boolean