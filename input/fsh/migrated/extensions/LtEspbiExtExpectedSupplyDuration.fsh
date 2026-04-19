Extension: LtEspbiExtExpectedSupplyDuration
Id: LtEspbiExtExpectedSupplyDuration
Description: "Trukmė dienomis / Duration in days"
Context: DeviceRequest
* ^url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-expected-supply-duration"
* ^status = #draft
* . ..1
* . ^short = "Trukmė dienomis / Duration in days"
* . ^definition = "Trukmė dienomis"
* url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-expected-supply-duration" (exactly)
* value[x] 1..
* value[x] only Quantity
* value[x].id ..0
* value[x].value 1..
* value[x].comparator ..0
* value[x].unit 1..
* value[x].system 1..
* value[x].code 1..