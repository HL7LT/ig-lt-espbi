Alias: $elab-organization = http://esveikata.lt/fhir/StructureDefinition/elab-organization

Extension: ElabExtSpecimenPerformer
Id: elab-ext-specimen-performer
Description: "Įstaiga, kuri tirs paimtą ėminį. / Organization which has to perform the procedures on the specimen."
Context: Specimen
* ^version = "0.3.28"
* ^date = "2023-02-09"
* ^publisher = "Registrų Centras"
* ^contact.name = "Registrų Centras"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "https://www.registrucentras.lt/"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "esveikata@registrucentras.lt"
* ^jurisdiction = urn:iso:std:iso:3166#LT "Lithuania"
* . ^definition = "Įstaiga, kuri tirs paimtą ėminį. / Organization which has to perform the procedures on the specimen."
* valueReference 1..
* valueReference only Reference($elab-organization)
* valueReference ^sliceName = "valueReference"