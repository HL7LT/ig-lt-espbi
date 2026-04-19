Extension: ElabExtServiceRequestSensitive
Id: elab-ext-serviceRequest-sensitive
Description: "Tyrimas, kurio rezultatai gali būti jautrūs paciento atžvilgiu. / Extension indicating that the request is sensitive."
Context: ServiceRequest
* ^version = "0.3.28"
* ^date = "2023-02-09"
* ^publisher = "Registrų Centras"
* ^contact.name = "Registrų Centras"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "https://www.registrucentras.lt/"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "esveikata@registrucentras.lt"
* ^jurisdiction = urn:iso:std:iso:3166#LT "Lithuania"
* . ^definition = "Tyrimas, kurio rezultatai gali būti jautrūs paciento atžvilgiu. / Extension indicating that the request is sensitive."
* valueBoolean 1..
* valueBoolean only boolean
* valueBoolean ^sliceName = "valueBoolean"