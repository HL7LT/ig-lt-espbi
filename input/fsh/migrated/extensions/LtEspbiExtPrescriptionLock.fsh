Alias: $lt-espbi-practitioner-role = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-practitioner-role
Alias: $lt-espbi-organization = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-organization

Extension: LtEspbiExtPrescriptionLock
Id: LtEspbiExtPrescriptionLock
Description: "Resurso užrakinimas (uždraudžia koregavimą) / Locking a resource (prevents editing)"
Context: DeviceRequest.meta, MedicationRequest.meta
* ^url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-prescription-lock"
* ^status = #draft
* . ..1
* . ^short = "Resurso užrakinimas (uždraudžia koregavimą) / Locking a resource (prevents editing)"
* . ^definition = "Resurso užrakinimas (uždraudžia koregavimą)"
* extension contains
    who 1..1 and
    when 1..1 and
    department 1..1
* extension[who] ^short = "Resursą užrakinęs asmuo"
* extension[who] ^definition = "Resursą užrakinęs asmuo."
* extension[who].value[x] 1..
* extension[who].value[x] only Reference($lt-espbi-practitioner-role)
* extension[who].value[x].id ..0
* extension[who].value[x].extension ..0
* extension[who].value[x].reference 1..
* extension[who].value[x].type ..0
* extension[who].value[x].identifier ..0
* extension[who].value[x].display ..0
* extension[when] ^short = "Užrakinimo data ir laikas"
* extension[when] ^definition = "Užrakinimo data ir laikas."
* extension[when].value[x] 1..
* extension[when].value[x] only dateTime
* extension[department] ^short = "Receptą užrakinusi įstaiga (padalinys)"
* extension[department] ^definition = "Receptą užrakinusi įstaiga (padalinys)"
* extension[department].value[x] 1..
* extension[department].value[x] only Reference($lt-espbi-organization)
* extension[department].value[x].id ..0
* extension[department].value[x].extension ..0
* extension[department].value[x].reference 1..
* extension[department].value[x].type ..0
* extension[department].value[x].identifier ..0
* extension[department].value[x].display ..0
* url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-prescription-lock" (exactly)