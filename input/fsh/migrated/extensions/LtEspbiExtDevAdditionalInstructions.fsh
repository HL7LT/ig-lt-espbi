Extension: LtEspbiExtDevAdditionalInstructions
Id: LtEspbiExtDevAdditionalInstructions
Description: "Papildoma informacija pacientui / Additional patient instructions"
Context: DeviceRequest
* ^url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-additional-instructions"
* ^status = #draft
* . ..1
* . ^short = "Papildoma informacija pacientui / Additional patient instructions"
* . ^definition = "Papildoma informacija pacientui"
* url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-additional-instructions" (exactly)
* value[x] 1..
* value[x] only string