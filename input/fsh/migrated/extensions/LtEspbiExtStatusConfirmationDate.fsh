Extension: LtEspbiExtStatusConfirmationDate
Id: LtEspbiExtStatusConfirmationDate
Description: "Išdavimo patvirtinimo data ir laikas / Date and time of dispense confirmation"
Context: MedicationDispense
* ^url = "http://esveikata.lt/Profile/lt-med-dispense/statusConfirmationDate"
* ^status = #draft
* . ..1
* . ^short = "Išdavimo patvirtinimo data ir laikas "
* . ^definition = "Išdavimo patvirtinimo data ir laikas (privalomas, jeigu užpildytas patvirtinęs asmuo)"
* url = "http://esveikata.lt/Profile/lt-med-dispense/statusConfirmationDate" (exactly)
* value[x] 1..
* value[x] only dateTime