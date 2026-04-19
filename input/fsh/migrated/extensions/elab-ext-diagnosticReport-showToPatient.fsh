Extension: ElabExtDiagnosticReportShowToPatient
Id: elab-ext-diagnosticReport-showToPatient
Description: "Plėtinys, jautraus tyrimo rezultato atveju nurodantis, kad rezultatus galima rodyti pacientui. / Extension indicating that the report can be shown to patient."
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
* . ^definition = "Plėtinys, jautraus tyrimo rezultato atveju nurodantis, kad rezultatus galima rodyti pacientui. / Extension indicating that the report can be shown to patient."
* valueBoolean 1..
* valueBoolean only boolean
* valueBoolean ^sliceName = "valueBoolean"