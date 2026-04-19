Extension: ElabExtReferenceOrganizationJar
Id: elab-ext-reference-organizationJar
Description: "Plėtinys, nurodantis įstaigos ar padalinio JAR kodą. / Extension indicating JAR code for corresponding organization."
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
* . ^definition = "Plėtinys, nurodantis įstaigos ar padalinio JAR kodą. / Extension indicating JAR code for corresponding organization."
* valueString 1..
* valueString only string
* valueString ^sliceName = "valueString"