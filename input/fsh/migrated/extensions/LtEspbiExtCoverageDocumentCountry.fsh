Extension: LtEspbiExtCoverageDocumentCountry
Id: LtEspbiExtCoverageDocumentCountry
Context: Coverage.identifier
* ^url = "http://esveikata.lt/Profile/ltnhr-Coverage/documentCountry"
* ^status = #draft
* . ..1
* . ^short = "Kompetetingos institucijos kodas / ES autority code"
* . ^definition = "Dokumentą išdavusios šalies pavadinimas.\r\n\r\nGalimos reikšmės nurodytos klasifikatoriuje country."
* url = "http://esveikata.lt/Profile/ltnhr-Coverage/documentCountry" (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x].coding 1..1
* value[x].coding.system 1..
* value[x].coding.system = "http://esveikata.lt/classifiers/ESAutority"
* value[x].coding.code 1..