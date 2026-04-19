Extension: ElabExtServiceRequestIsScientific
Id: elab-ext-serviceRequest-isScientific
Description: "Plėtinys, nurodantis, kad tyrimas atliekamas moksliniais tikslais. / Extension indicating that request's purpose is purely scientific."
Context: ServiceRequest
* ^version = "0.3.28"
* ^date = "2023-10-06"
* ^publisher = "Registrų Centras"
* ^contact.name = "Registrų Centras"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "https://www.registrucentras.lt/"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "esveikata@registrucentras.lt"
* ^jurisdiction = urn:iso:std:iso:3166#LT "Lithuania"
* . ^definition = "Plėtinys, nurodantis, kad tyrimas atliekamas moksliniais tikslais. / Extension indicating that request's purpose is purely scientific."
* valueBoolean 1..
* valueBoolean only boolean
* valueBoolean ^sliceName = "valueBoolean"