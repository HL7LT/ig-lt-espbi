Extension: LtEspbiExtPrice
Id: LtEspbiExtPrice
Description: "Vaisto ar MPP/MP kainos / Drug or MPP/MP prices"
Context: MedicationDispense
* ^url = "http://esveikata.lt/Profile/lt-med-dispense/price"
* ^status = #draft
* . 1..1
* . ^short = "Vaisto ar MPP/MP kainos"
* extension contains
    retail 1..1 and
    paid 1..1 and
    compensated 1..1
* extension[retail] ^short = "Išduoto vaisto ar MPP kaina"
* extension[retail].id ..0
* extension[retail].value[x] 1..
* extension[retail].value[x] only Money
* extension[retail].value[x].id ..0
* extension[retail].value[x].value 1..
* extension[retail].value[x].currency 1..
* extension[paid] ^short = "Išduoto vaisto ar MPP/MP kaina, kurią sumokėjo pacientas"
* extension[paid].id ..0
* extension[paid].value[x] 1..
* extension[paid].value[x] only Money
* extension[paid].value[x].id ..0
* extension[paid].value[x].value 1..
* extension[paid].value[x].currency 1..
* extension[compensated] ^short = "Kompensuojama suma"
* extension[compensated].value[x] 1..
* extension[compensated].value[x] only Money
* extension[compensated].value[x].id ..0
* extension[compensated].value[x].value 1..
* extension[compensated].value[x].currency 1..
* url = "http://esveikata.lt/Profile/lt-med-dispense/price" (exactly)