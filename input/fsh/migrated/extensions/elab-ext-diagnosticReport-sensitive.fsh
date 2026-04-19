Extension: ElabExtDiagnosticReportSensitive
Id: elab-ext-diagnosticReport-sensitive
Title: "ElabDiagnosticReportSensitive"
Description: "Plėtinys, nurodantis kad tyrimo atsakymas turi jautrios informacijos paciento atžvilgiu. / Extension indicating that the report is sensitive."
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
* . ^short = "LtDiagnosticReportSensitive"
* . ^definition = "Plėtinys, nurodantis kad tyrimo atsakymas turi jautrios informacijos paciento atžvilgiu. / Extension indicating that the report is sensitive."
* valueBoolean 1..
* valueBoolean only boolean
* valueBoolean ^sliceName = "valueBoolean"