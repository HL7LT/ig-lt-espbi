Extension: LtEspbiExtCompensationTag
Id: LtEspbiExtCompensationTag
Description: "Požymis, ar kompensuojamas / Indication of whether compensation is provided"
Context: MedicationDispense
* ^url = "http://esveikata.lt/Profile/lt-med-dispense/compensationTag"
* ^status = #draft
* . 1..1
* . ^short = "Požymis, ar kompensuojamas"
* url = "http://esveikata.lt/Profile/lt-med-dispense/compensationTag" (exactly)
* value[x] 1..
* value[x] only boolean