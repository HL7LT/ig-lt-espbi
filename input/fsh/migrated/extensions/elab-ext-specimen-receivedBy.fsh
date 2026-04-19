Alias: $elab-practitionerRole = http://esveikata.lt/fhir/StructureDefinition/elab-practitionerRole

Extension: ElabExtSpecimenReceivedBy
Id: elab-ext-specimen-receivedBy
Description: "Ėminį priėmęs specialistas. / Whoever has received the specimen."
Context: Specimen.collection
* ^version = "0.3.28"
* ^date = "2023-02-09"
* ^publisher = "Registrų Centras"
* ^contact.name = "Registrų Centras"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "https://www.registrucentras.lt/"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "esveikata@registrucentras.lt"
* ^jurisdiction = urn:iso:std:iso:3166#LT "Lithuania"
* . ^definition = "Ėminį priėmęs specialistas. / Whoever has received the specimen."
* valueReference 1..
* valueReference only Reference($elab-practitionerRole)
* valueReference ^sliceName = "valueReference"