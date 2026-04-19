Extension: LtEspbiExtDeviceLowestPriceTag
Id: LtEspbiExtDeviceLowestPriceTag
Description: "Požymis, ar kompensuojamas MPP  ar medicinos prietaisas su mažiausia paciento priemoka / Indication of whether MPP or medical device with the lowest patient co-payment is reimbursed"
Context: DeviceDispense
* ^url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-device-lowest-price-tag"
* ^status = #draft
* . ..1
* . ^short = "Požymis, ar kompensuojamas MPP  ar medicinos prietaisas su mažiausia paciento priemoka"
* . ^definition = "Požymis, ar kompensuojamas MPP  ar medicinos prietaisas su mažiausia paciento priemoka / Indication of whether MPP or medical device with the lowest patient co-payment is reimbursed"
* url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-device-lowest-price-tag" (exactly)
* value[x] 1..
* value[x] only boolean