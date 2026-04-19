ValueSet: SpecimenStatuses
Id: specimen-statuses
* ^version = "0.3.28"
* ^status = #active
* ^publisher = "Registrų Centras"
* ^contact.name = "Registrų Centras"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "https://www.registrucentras.lt/"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "esveikata@registrucentras.lt"
* ^jurisdiction = urn:iso:std:iso:3166#LT "Lithuania"
* SpecimenStatus#available
* SpecimenStatus#unavailable
* SpecimenStatus#unsatisfactory
* SpecimenStatus#entered-in-error