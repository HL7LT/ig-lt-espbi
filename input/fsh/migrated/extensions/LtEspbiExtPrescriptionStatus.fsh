Alias: $lt-espbi-practitioner-role = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-practitioner-role

Extension: LtEspbiExtPrescriptionStatus
Id: LtEspbiExtPrescriptionStatus
Description: "Skyrimo būsena / Prescription status"
Context: MedicationRequest, DeviceRequest
* ^url = "http://esveikata.lt/Profile/lt-med-prescription/prescriptionStatus"
* ^status = #draft
* . ..1
* . ^short = "Skyrimo būsena / Prescription status"
* . ^definition = "Skyrimo būsena"
* extension contains
    statusCode 1..1 and
    statusWho 1..1 and
    statusWhen 1..1 and
    statusReason 0..1
* extension[statusCode] ^short = "Būsenos kodas / Status code"
* extension[statusCode] ^definition = "Būsenos kodas.\r\nGalimos reikšmės:\r\n● valid : Patikrintas.\r\n● active : Galioja.\r\n● entered in error : Atšauktas.\r\n\r\nGalimos reikšmės nurodytos klasifikatoriuje prescription-status."
* extension[statusCode].value[x] 1..
* extension[statusCode].value[x] only CodeableConcept
* extension[statusCode].value[x].id ..0
* extension[statusCode].value[x].extension ..0
* extension[statusCode].value[x].coding 1..1
* extension[statusCode].value[x].coding.id ..0
* extension[statusCode].value[x].coding.extension ..0
* extension[statusCode].value[x].coding.system 1..
* extension[statusCode].value[x].coding.version ..0
* extension[statusCode].value[x].coding.code 1..
* extension[statusCode].value[x].coding.display 1..
* extension[statusCode].value[x].coding.userSelected ..0
* extension[statusCode].value[x].text ..0
* extension[statusWho] ^short = "Būseną pakeitęs asmuo / Person who has given the status"
* extension[statusWho] ^definition = "Būseną pakeitęs asmuo. Nuoroda į Practitioner resursą."
* extension[statusWho].value[x] 1..
* extension[statusWho].value[x] only Reference($lt-espbi-practitioner-role)
* extension[statusWhen] ^short = "Būsenos keitimo data ir laikas / Status update time and date"
* extension[statusWhen] ^definition = "Būsenos keitimo data ir laikas."
* extension[statusWhen].value[x] 1..
* extension[statusWhen].value[x] only dateTime
* extension[statusReason] ^short = "Būsenos keitimo priežastis / Status update resoning"
* extension[statusReason] ^definition = "Būsenos keitimo priežastis (privalomumas priklauso nuo būsenos kodo)."
* extension[statusReason].value[x] 1..
* extension[statusReason].value[x] only string
* url = "http://esveikata.lt/Profile/lt-med-prescription/prescriptionStatus" (exactly)