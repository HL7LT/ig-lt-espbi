Extension: ElabExtPatientAdministrativeGender
Id: elab-ext-patient-administrativeGender
Description: "Paciento lytis. / Patient's gender."
Context: Patient
* ^version = "0.3.28"
* ^date = "2023-02-09"
* ^publisher = "Registrų Centras"
* ^contact.name = "Registrų Centras"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "https://www.registrucentras.lt/"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "esveikata@registrucentras.lt"
* ^jurisdiction = urn:iso:std:iso:3166#LT "Lithuania"
* . ^definition = "Paciento lytis. / Patient's gender."
* valueCodeableConcept 1..
* valueCodeableConcept only CodeableConcept
* valueCodeableConcept ^sliceName = "valueCodeableConcept"