Profile: ElabPractitioner
Parent: Practitioner
Id: elab-practitioner
Description: "Sveikatos priežiūros specialistas / Practitioner"
* ^version = "0.3.28"
* ^status = #active
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
* identifier contains PersonalCode 1..1 MS
* identifier[PersonalCode] ^short = "Asmens kodas / Personal code"
* identifier[PersonalCode].system = "http://esveikata.lt/Identifier/PersonalCode"
* name 1.. MS
* name ^short = "Vardas ir pavardė / The name(s) associated with the practitioner"
* name.family 1.. MS
* name.family ^short = "Pavardė / Lastname"
* name.given 1.. MS
* name.given ^short = "Vardas / Firstname"