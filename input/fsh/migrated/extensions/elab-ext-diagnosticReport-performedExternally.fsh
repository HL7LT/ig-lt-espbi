Extension: ElabExtDiagnosticReportPerformedExternally
Id: elab-ext-diagnosticReport-performedExternally
Description: "Plėtinys, nurodantis kad tyrimas buvo atliktas išorinėje laboratorijoje. / Extension indicating that this report was performed in an external laboratory."
Context: DiagnosticReport
* ^version = "0.3.28"
* ^date = "2023-02-09"
* ^publisher = "Registrų Centras"
* ^contact.name = "Registrų Centras"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "https://www.registrucentras.lt/"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "esveikata@registrucentras.lt"
* ^jurisdiction = urn:iso:std:iso:3166#LT "Lithuania"
* . ^definition = "Plėtinys, nurodantis kad tyrimas buvo atliktas išorinėje laboratorijoje. / Extension indicating that this report was performed in an external laboratory."
* valueBoolean 1..
* valueBoolean only boolean
* valueBoolean ^sliceName = "valueBoolean"