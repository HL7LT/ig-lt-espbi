Alias: $lt-espbi-practitioner-role = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-practitioner-role

Extension: LtEspbiExtRequestStatusChangeInformation
Id: LtEspbiExtRequestStatusChangeInformation
Description: "MPP ar medicinos prietaisų skyrimo būsenos keitimo informacija /  MPP or medical device request status change information"
Context: DeviceRequest.status
* ^url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-request-status-change-information"
* ^status = #draft
* . 1..1
* . ^short = "MPP ar medicinos prietaisų skyrimo būsenos keitimo informacija /  MPP or medical device request status change information"
* . ^definition = "MPP ar medicinos prietaisų skyrimo būsenos keitimo informacija"
* extension contains
    statusWho 1..1 and
    statusWhen 1..1 and
    statusConfirmedBy 0..1 and
    statusConfirmationDate 0..1
* extension[statusWho] ^short = "Būseną pakeitęs asmuo"
* extension[statusWho] ^definition = "Būseną pakeitęs asmuo"
* extension[statusWho].value[x] 1..
* extension[statusWho].value[x] only Reference($lt-espbi-practitioner-role)
* extension[statusWho].value[x].id ..0
* extension[statusWho].value[x].extension ..0
* extension[statusWho].value[x].reference 1..
* extension[statusWho].value[x].type ..0
* extension[statusWho].value[x].identifier ..0
* extension[statusWho].value[x].display ..0
* extension[statusWhen] ^short = "Būsenos keitimo data ir laikas"
* extension[statusWhen] ^definition = "Būsenos keitimo data ir laikas"
* extension[statusWhen].value[x] 1..
* extension[statusWhen].value[x] only dateTime
* extension[statusConfirmedBy] ^short = "Išdavimą patvirtinęs asmuo"
* extension[statusConfirmedBy] ^definition = "Išdavimą patvirtinęs asmuo"
* extension[statusConfirmedBy].value[x] 1..
* extension[statusConfirmedBy].value[x] only Reference($lt-espbi-practitioner-role)
* extension[statusConfirmedBy].value[x].id ..0
* extension[statusConfirmedBy].value[x].extension ..0
* extension[statusConfirmedBy].value[x].reference 1..
* extension[statusConfirmedBy].value[x].type ..0
* extension[statusConfirmedBy].value[x].identifier ..0
* extension[statusConfirmedBy].value[x].display ..0
* extension[statusConfirmationDate] ^short = "Išdavimo patvirtinimo data ir laikas"
* extension[statusConfirmationDate] ^definition = "Išdavimo patvirtinimo data ir laikas"
* extension[statusConfirmationDate].value[x] 1..
* extension[statusConfirmationDate].value[x] only dateTime
* url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-request-status-change-information" (exactly)