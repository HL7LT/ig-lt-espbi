Alias: $lt-practitioner = http://esveikata.lt/fhir/StructureDefinition/lt-practitioner

Extension: LtEspbiExtDevPrescriptionStatus
Id: LtEspbiExtDevPrescriptionStatus
Context: DeviceRequest
* ^url = "http://esveikata.lt/Profile/lt-dev-request/prescriptionStatus"
* ^status = #draft
* extension contains
    statusCode 1..1 and
    statusWho 1..1 and
    statusWhen 1..1 and
    statusReason 0..1
* extension[statusCode] ^short = "Būsenos kodas / Status code"
* extension[statusCode] ^definition = "Būsenos kodas.\r\nGalimos reikšmės:\r\n● valid : Patikrintas.\r\n● active : Galioja.\r\n● entered in error : Atšauktas.\r\nGalimos reikšmės nurodytos klasifikatoriuje prescription-status."
* extension[statusCode].value[x] 1..
* extension[statusCode].value[x] only code
* extension[statusWho] ^short = "Būseną pakeitęs asmuo / Person who has given the status"
* extension[statusWho] ^definition = "Būseną pakeitęs asmuo. Nuoroda į Practitioner resursą."
* extension[statusWho].value[x] 1..
* extension[statusWho].value[x] only Reference($lt-practitioner)
* extension[statusWhen] ^short = "Būsenos keitimo data ir laikas / Status update time and date"
* extension[statusWhen] ^definition = "Būsenos keitimo data ir laikas."
* extension[statusWhen].value[x] 1..
* extension[statusWhen].value[x] only dateTime
* extension[statusReason] ^short = "Būsenos keitimo priežastis / Status update resoning"
* extension[statusReason] ^definition = "Būsenos keitimo priežastis (privalomumas priklauso nuo būsenos kodo)."
* extension[statusReason].value[x] 1..
* extension[statusReason].value[x] only string
* url = "http://esveikata.lt/Profile/lt-dev-request/prescriptionStatus" (exactly)