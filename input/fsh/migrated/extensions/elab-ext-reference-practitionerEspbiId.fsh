Extension: ElabExtReferencePractitionerEspbiId
Id: elab-ext-reference-practitionerEspbiId
Description: "Plėtinys, nurodantis Practitioner resurso ESPBI Id. / Extension indicating ESPBI id for corresponding practitioner."
Context: Reference
* ^version = "0.3.28"
* ^date = "2023-10-06"
* ^publisher = "Registrų Centras"
* ^contact.name = "Registrų Centras"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "https://www.registrucentras.lt/"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "esveikata@registrucentras.lt"
* ^jurisdiction = urn:iso:std:iso:3166#LT "Lithuania"
* . ^definition = "Plėtinys, nurodantis Practitioner resurso ESPBI Id. / Extension indicating ESPBI id for corresponding practitioner."
* valueString 1..
* valueString only string
* valueString ^sliceName = "valueString"