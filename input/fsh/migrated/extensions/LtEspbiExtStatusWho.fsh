Alias: $lt-espbi-practitioner = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-practitioner

Extension: LtEspbiExtStatusWho
Id: LtEspbiExtStatusWho
Description: "Būseną pakeitęs asmuo / Person who updated status"
Context: MedicationRequest.status
* ^url = "http://esveikata.lt/Profile/lt-espbi-med-request/statusWho"
* ^status = #draft
* . 1..1
* . ^short = "Būseną pakeitęs asmuo / Person who updated status"
* . ^definition = "Būseną pakeitęs asmuo. Nuoroda į Practitioner resursą."
* url = "http://esveikata.lt/Profile/lt-espbi-med-request/statusWho" (exactly)
* value[x] 1..
* value[x] only Reference($lt-espbi-practitioner)
* value[x].id ..0
* value[x].extension ..0
* value[x].reference 1..
* value[x].type ..0
* value[x].identifier ..0
* value[x].display ..0