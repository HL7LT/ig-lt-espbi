Extension: LtEspbiExtMedicationKnowledgeLowestPriceTag
Id: LtEspbiExtMedicationKnowledgeLowestPriceTag
Context: MedicationKnowledge.cost
* ^url = "http://esveikata.lt/Profile/ltnhr-medication-knowledge/lowestPriceTag"
* ^status = #draft
* . ..1
* . ^short = "Požymis, ar kompensuojamas vaistas su mažiausia paciento priemoka / Indication of whether the drug with the lowest patient co-payment is reimbursed"
* url = "http://esveikata.lt/Profile/ltnhr-medication-knowledge/lowestPriceTag" (exactly)
* value[x] 1..
* value[x] only boolean