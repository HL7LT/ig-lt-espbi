Extension: LtEspbiExtAdditionalService
Id: LtEspbiExtAdditionalService
Context: ServiceRequest
* ^url = "http://esveikata.lt/Profile/ltnhr-servicerequest/additionalService"
* ^status = #draft
* . ..1
* . ^short = "Paslauga"
* . ^definition = "Paslauga / service"
* url = "http://esveikata.lt/Profile/ltnhr-servicerequest/additionalService" (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x].coding 1..1
* value[x].coding.system 1..
* value[x].coding.system = "http://esveikata.lt/classifiers/IPRService"
* value[x].coding.code 1..
* value[x].coding.display 1..