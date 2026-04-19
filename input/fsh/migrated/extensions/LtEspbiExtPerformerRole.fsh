Extension: LtEspbiExtPerformerRole
Id: LtEspbiExtPerformerRole
Description: "Naujagimį perdavęs ir/ar priėmęs asmuo / Person who transferred and/or received the newborn"
Context: Observation.performer
* ^url = "http://esveikata.lt/Profile/ltnhr-observation/performerRole"
* ^status = #draft
* . ^short = "Naujagimį perdavęs ir/ar priėmęs asmuo"
* . ^definition = "Person who transferred and/or received the newborn."
* url = "http://esveikata.lt/Profile/ltnhr-observation/performerRole" (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x].coding 1..1
* value[x].coding.system 1..
* value[x].coding.system = "http://esveikata.lt/classifiers/Observation/PerformerRole" (exactly)
* value[x].coding.code 1..