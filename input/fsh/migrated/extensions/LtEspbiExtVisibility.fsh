Extension: LtEspbiExtVisibility
Id: LtEspbiExtVisibility
Context: Communication
* ^url = "http://esveikata.lt/Profile/ltnhr-alert/visibility"
* ^status = #draft
* url = "http://esveikata.lt/Profile/ltnhr-alert/visibility" (exactly)
* value[x] only CodeableConcept
* value[x].coding 1..1
* value[x].coding.system 1..
* value[x].coding.system = "http://esveikata.lt/classifiers/Alert/Visibility" (exactly)
* value[x].coding.code 1..