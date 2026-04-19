Extension: ElabExtDiagnosticReportRequestedBy
Id: elab-ext-diagnosticReport-requestedBy
Description: "Plėtinys, nurodantis tyrimą užsakiusį specialistą ir organizaciją, / Extension indicating the requesting specialist and organization"
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
* . ^definition = "Plėtinys, nurodantis užsakantį specialistą ir organizaciją / Extension indicating the requester (specialist and organization)"
* valueIdentifier 1..
* valueIdentifier only Identifier
* valueIdentifier ^sliceName = "valueIdentifier"