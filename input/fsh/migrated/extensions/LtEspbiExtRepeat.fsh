Extension: LtEspbiExtRepeat
Id: LtEspbiExtRepeat
Description: "Reikalinga pakartoti / Need to repeat"
Context: Observation
* ^url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-repeat"
* ^status = #draft
* . ^short = "Reikalinga pakartoti / Need to repeat"
* url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-repeat" (exactly)
* value[x] 1..
* value[x] only dateTime