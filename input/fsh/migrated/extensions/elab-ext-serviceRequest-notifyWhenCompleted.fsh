Extension: ElabExtServiceRequestNotifyWhenCompleted
Id: elab-ext-serviceRequest-notifyWhenCompleted
Description: "Plėtinys, nurodantis, kad specialistas turi būti informuotas apie tyrimo atlikimą. Extension indicating that related parties should be notified when request is completed."
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
* . ^definition = "Plėtinys, nurodantis, kad specialistas turi būti informuotas apie tyrimo atlikimą. Extension indicating that related parties should be notified when request is completed."
* valueBoolean 1..
* valueBoolean only boolean
* valueBoolean ^sliceName = "valueBoolean"