Extension: LtEspbiExtPatientDocumentCountry
Id: LtEspbiExtPatientDocumentCountry
Context: Patient.identifier, DocumentReference
* ^url = "http://esveikata.lt/Profile/ltnhr-patient/documentCountry"
* ^status = #draft
* . ^short = "Asmens tapatybę patvirtinantį dokumentą išdavusios šalies triraidis kodas / Three-letter code of the country that issued the identity document"
* . ^definition = "Asmens tapatybę patvirtinantį dokumentą išdavusios šalies triraidis kodas."
* url = "http://esveikata.lt/Profile/ltnhr-patient/documentCountry" (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x].coding 1..1
* value[x].coding.system 1..
* value[x].coding.system = "http://esveikata.lt/classifiers/Country"
* value[x].coding.code 1..