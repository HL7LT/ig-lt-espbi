Extension: LtEspbiExtDeviceDueDate
Id: LtEspbiExtDeviceDueDate
Description: "Data, iki kada faktiškai užteks išduoto MPP ar medicinos prietaiso kiekio / The date by which the quantity of the issued MPP or medical device will actually be sufficient."
Context: DeviceDispense
* ^url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-device-due-date"
* ^status = #draft
* . 1..1
* . ^short = "Data, iki kada faktiškai užteks išduoto MPP ar medicinos prietaiso kiekio / The date by which the quantity of the issued MPP or medical device will actually be sufficient."
* . ^definition = "Data, iki kada faktiškai užteks išduoto MPP ar medicinos prietaiso kiekio"
* url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-device-due-date" (exactly)
* value[x] 1..
* value[x] only date