Alias: $liftType = http://esveikata.lt/classifiers/liftType

Extension: LtEspbiExtLiftInfo
Id: LtEspbiExtLiftInfo
Description: "Pavėžėjimo paslauga / Ride service"
Context: ServiceRequest
* ^url = "http://esveikata.lt/Profile/ltnhr-servicerequest/liftInfo"
* ^status = #draft
* . ..1
* url = "http://esveikata.lt/Profile/ltnhr-servicerequest/liftInfo" (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] ^example.label = "example"
* value[x] ^example.valueCodeableConcept = $liftType#A "Specializuotas pavėžėjimas A"
* value[x] ^example.valueCodeableConcept.text = "Reikalinga lydinti slaugytoja"
* value[x].id ..0
* value[x].extension ..0
* value[x].coding 1..1
* value[x].coding.system 1..
* value[x].coding.system = "http://esveikata.lt/classifiers/liftType" (exactly)
* value[x].coding.code 1..
* value[x].coding.display 1..
* value[x].text 1..
* value[x].text ^short = "Papildoma informacija apie Pavėžėjimo Paslaugą"