Profile: ElabPatient
Parent: Patient
Id: elab-patient
Description: "Pacientas / Patient"
* ^version = "0.3.28"
* ^date = "2023-02-09"
* ^publisher = "Registrų Centras"
* ^contact.name = "Registrų Centras"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "https://www.registrucentras.lt/"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "esveikata@registrucentras.lt"
* ^jurisdiction = urn:iso:std:iso:3166#LT "Lithuania"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier.system 1..
* identifier.value 1..
* identifier contains
    PersonalCode 1..1 MS and
    ESI 1..1 MS and
    ESPBI 1..1 MS
* identifier[PersonalCode] ^short = "Asmens kodas / Personal code"
* identifier[PersonalCode].system = "http://esveikata.lt/Identifier/PersonalCode"
* identifier[ESI] ^short = "ESI identifikatorius / ESI identifier"
* identifier[ESI].system = "http://esveikata.lt/Identifier/Patient/ESI"
* identifier[ESPBI] ^short = "ESPBI id"
* identifier[ESPBI].system = "http://esveikata.lt/Identifier/Patient/ESPBI"
* name 1.. MS
* name ^short = "Vardas ir pavarė / A name associated with the patient"
* name.family 1.. MS
* name.family ^short = "Pavardė / Lastname"
* name.given 1.. MS
* name.given ^short = "Vardas / Firstname"
* gender 1..
* gender ^short = "Lytis / Gender"
* birthDate 1.. MS
* birthDate ^short = "Gimimo data / Birthdate"