Extension: LtObservationResultsInterpreter
Id: elab-ext-observation-resultsInterpreter
Description: "Tyrimo rezultatus patvirtinęs specialistas. / Specialist who interpreted the results."
Context: Observation
* ^version = "0.3.28"
* ^date = "2023-02-09"
* ^publisher = "Registrų Centras"
* ^contact.name = "Registrų Centras"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "https://www.registrucentras.lt/"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "esveikata@registrucentras.lt"
* ^jurisdiction = urn:iso:std:iso:3166#LT "Lithuania"
* . ^definition = "Tyrimo rezultatus patvirtinęs specialistas. / Specialist who interpreted the results."
* valueReference 1..
* valueReference only Reference
* valueReference ^sliceName = "valueReference"