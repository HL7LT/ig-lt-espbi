Alias: $lt-espbi-practitioner-role = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-practitioner-role

Extension: LtEspbiExtStatusConfirmedBy
Id: LtEspbiExtStatusConfirmedBy
Description: "Išdavimą patvirtinęs asmuo / Person who approved dispense"
Context: MedicationDispense
* ^url = "http://esveikata.lt/Profile/lt-med-dispense/statusConfirmedBy"
* ^status = #draft
* . ..1
* . ^short = "Išdavimą patvirtinęs asmuo "
* . ^definition = "Išdavimą patvirtinęs asmuo "
* url = "http://esveikata.lt/Profile/lt-med-dispense/statusConfirmedBy" (exactly)
* value[x] 1..
* value[x] only Reference($lt-espbi-practitioner-role)
* value[x].id ..0
* value[x].extension ..0
* value[x].reference 1..
* value[x].type ..0
* value[x].identifier ..0
* value[x].display ..0