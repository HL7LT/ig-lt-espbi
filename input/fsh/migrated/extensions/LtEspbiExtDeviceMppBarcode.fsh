Extension: LtEspbiExtDeviceMppBarcode
Id: LtEspbiExtDeviceMppBarcode
Description: "MPP brūkšninis kodas / MPP barcode"
Context: DeviceDispense
* ^url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-device-mpp-barcode"
* ^status = #draft
* . ..1
* . ^short = "MPP brūkšninis kodas / MPP barcode"
* . ^definition = "MPP brūkšninis kodas. Privalomas kompensuojamam MPP"
* url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-device-mpp-barcode" (exactly)
* value[x] 1..
* value[x] only string