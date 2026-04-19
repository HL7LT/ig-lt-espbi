Extension: LtEspbiExtDocumentCalcStatus
Id: LtEspbiExtDocumentCalcStatus
Description: "Dokumento išskaičiuota būsena"
Context: DocumentReference
* ^url = "http://esveikata.lt/Profile/ltnhr-documentreference/documentCalcStatus"
* ^status = #draft
* . ..1
* . ^short = "Dokumento išskaičiuota būsena"
* . ^definition = "Galimos reikšmės:\r\n- preliminary : Dalinai patvirtintas.\r\n- final : Pateiktas pasirašymui.\r\n- final signed : Aktyvus/Pasirašytas.\r\n- inactive : Neaktyvus/Negaliojantis.\r\n- executed : -\r\n-  in progress : -\r\n- amended signed : Pakeistas.\r\n- entered in error signed : Atšauktas.\r\nGalimos reikšmės nurodytos klasifikatoriuje document-calculated-status."
* url = "http://esveikata.lt/Profile/ltnhr-documentreference/documentCalcStatus" (exactly)
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