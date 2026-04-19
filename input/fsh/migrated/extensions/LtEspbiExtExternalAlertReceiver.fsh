Extension: LtEspbiExtExternalAlertReceiver
Id: LtEspbiExtExternalAlertReceiver
Context: Communication
* ^url = "http://esveikata.lt/Profile/ltnhr-alert/externalAlertReceiver"
* ^status = #draft
* url = "http://esveikata.lt/Profile/ltnhr-alert/externalAlertReceiver" (exactly)
* value[x] only CodeableConcept
* value[x].coding 1..1
* value[x].coding.system 1..
* value[x].coding.system = "http://esveikata.lt/classifiers/Alert/ExternalAlertReceiver" (exactly)
* value[x].coding.code 1..