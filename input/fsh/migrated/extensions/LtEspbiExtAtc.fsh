Extension: LtEspbiExtAtc
Id: LtEspbiExtAtc
Description: "ATC"
Context: MedicationRequest.dispenseRequest
* ^url = "http://esveikata.lt/Profile/lt-med-prescription/atc"
* ^status = #draft
* . ..1
* . ^short = "ATC"
* . ^definition = "ATC"
* url = "http://esveikata.lt/Profile/lt-med-prescription/atc" (exactly)
* value[x] 1..
* value[x] only Coding
* value[x].id ..0
* value[x].extension ..0
* value[x].system 1..
* value[x].system = "http://esveikata.lt/classifiers/Medication/AtcCode" (exactly)
* value[x].version ..0
* value[x].code 1..
* value[x].display 1..
* value[x].userSelected ..0