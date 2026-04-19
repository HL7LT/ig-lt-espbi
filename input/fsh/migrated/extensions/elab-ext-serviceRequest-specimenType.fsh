Extension: ElabExtServiceRequestSpecimenType
Id: elab-ext-serviceRequest-specimenType
Description: "Tyrimui atlikti reikalingas mėginio tipas. / Extension indicating specimen type that needs to be taken for the request."
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
* . ^definition = "Tyrimui atlikti reikalingas mėginio tipas. / Extension indicating specimen type that needs to be taken for the request."
* valueCodeableConcept 1..
* valueCodeableConcept only CodeableConcept
* valueCodeableConcept ^sliceName = "valueCodeableConcept"
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.system = "https://www.medicinosnk.lt/collected-specimen"
* valueCodeableConcept.coding.code 1..