Alias: $lt-espbi-consent = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-consent

Extension: LtEspbiExtPatientAgreementDocument
Id: LtEspbiExtPatientAgreementDocument
Context: Encounter
* ^url = "http://esveikata.lt/Profile/ltnhr-encounter/patientAgreementDocument"
* ^status = #draft
* . ^short = "Paciento sutikimai / Patient consents"
* . ^definition = "Nuorodos į paciento sutikimo dokumentus."
* url = "http://esveikata.lt/Profile/ltnhr-encounter/patientAgreementDocument" (exactly)
* value[x] 1..
* value[x] only Reference($lt-espbi-consent)