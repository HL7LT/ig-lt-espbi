Extension: LtEspbiExtDiagnosticTestCode
Id: LtEspbiExtDiagnosticTestCode
Description: "Tyrimui naudoto testo (gaminio) pavadinimas ir gamintojas / Name and manufacturer of the test (product) used for the study"
Context: DiagnosticReport
* ^url = "http://esveikata.lt/Profile/ltnhr-diagnosticreport/diagnosticTestCode"
* ^status = #draft
* . ..1
* url = "http://esveikata.lt/Profile/ltnhr-diagnosticreport/diagnosticTestCode" (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x].id ..0
* value[x].extension ..0
* value[x].coding 1..1
* value[x].coding.id ..0
* value[x].coding.extension ..0
* value[x].coding.system 1..
* value[x].coding.system = "http://esveikata.lt/classifiers/DiagnosticTest/ItemCode" (exactly)
* value[x].coding.version ..0
* value[x].coding.code 1..
* value[x].coding.display 1..
* value[x].coding.display ^short = "Gaminio pavadinimas"
* value[x].coding.userSelected ..0
* value[x].text 1..
* value[x].text ^short = "Gamintojo pavadinimas"