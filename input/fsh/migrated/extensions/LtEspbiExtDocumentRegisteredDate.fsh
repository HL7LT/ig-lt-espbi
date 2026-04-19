Extension: LtEspbiExtDocumentRegisteredDate
Id: LtEspbiExtDocumentRegisteredDate
Context: Patient.identifier
* ^url = "http://esveikata.lt/Profile/ltnhr-patient/documentRegisteredDate"
* ^status = #draft
* . ..1
* . ^short = "Data, kada užregistruotas dokumentas / Date the document was registered"
* . ^definition = "Data, kada užregistruotas dokumentas."
* url = "http://esveikata.lt/Profile/ltnhr-patient/documentRegisteredDate" (exactly)
* value[x] 1..
* value[x] only dateTime