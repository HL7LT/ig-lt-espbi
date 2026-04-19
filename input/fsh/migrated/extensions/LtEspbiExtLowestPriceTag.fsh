Extension: LtEspbiExtLowestPriceTag
Id: LtEspbiExtLowestPriceTag
Description: "Požymis, ar kompensuojamas vaistas / MPP su mažiausia paciento priemoka / Indication of whether the drug/MPP with the lowest patient co-payment is reimbursed"
Context: MedicationDispense
* ^url = "http://esveikata.lt/Profile/lt-med-dispense/lowestPriceTag"
* ^status = #draft
* . ..1
* . ^short = "Požymis, ar kompensuojamas vaistas su mažiausia paciento priemoka"
* url = "http://esveikata.lt/Profile/lt-med-dispense/lowestPriceTag" (exactly)
* value[x] 1..
* value[x] only boolean