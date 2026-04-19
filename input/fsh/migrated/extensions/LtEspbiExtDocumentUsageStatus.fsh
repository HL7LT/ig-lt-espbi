Extension: LtEspbiExtDocumentUsageStatus
Id: LtEspbiExtDocumentUsageStatus
Description: "Dokumento panaudojimo būsena"
Context: DocumentReference
* ^url = "http://esveikata.lt/Profile/ltnhr-documentreference/documentUsageStatus"
* ^status = #draft
* . ..1
* . ^short = "Dokumento panaudojimo būsena"
* . ^definition = "Galimos reikšmės:\r\n- in progress : -\r\n- executed : -\r\nGalimos reikšmės nurodytos klasifikatoriuje document-usage-status."
* url = "http://esveikata.lt/Profile/ltnhr-documentreference/documentUsageStatus" (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x].id ..0
* value[x].extension ..0
* value[x].coding 1..1
* value[x].coding.id ..0
* value[x].coding.extension ..0
* value[x].coding.system 1..
* value[x].coding.version ..0
* value[x].coding.code 1..
* value[x].coding.userSelected ..0