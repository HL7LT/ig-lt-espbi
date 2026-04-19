Extension: LtEspbiExtDescription
Id: LtEspbiExtDescription
Description: "MPP aprašymas / MPP description"
Context: MedicationDispense
* ^url = "http://esveikata.lt/Profile/lt-med-dispense/description"
* ^status = #draft
* . ..1
* . ^short = "MPP aprašymas"
* url = "http://esveikata.lt/Profile/lt-med-dispense/description" (exactly)
* value[x] 1..
* value[x] only string