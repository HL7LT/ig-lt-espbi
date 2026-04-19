Alias: $lt-espbi-practitioner-role = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-practitioner-role

Extension: LtEspbiExtDocumentRegisteredBy
Id: LtEspbiExtDocumentRegisteredBy
Context: Patient.identifier
* ^url = "http://esveikata.lt/Profile/ltnhr-patient/documentRegisteredBy"
* ^status = #draft
* . ..1
* . ^short = "Dokumentą užregistravęs specialistas /The practitioner registered insurance document"
* . ^definition = "Dokumentą užregistravęs specialistas."
* url = "http://esveikata.lt/Profile/ltnhr-patient/documentRegisteredBy" (exactly)
* value[x] 1..
* value[x] only Reference($lt-espbi-practitioner-role)
* value[x].reference 1..