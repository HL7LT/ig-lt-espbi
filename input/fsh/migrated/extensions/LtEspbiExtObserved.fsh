Extension: LtEspbiExtObserved
Id: LtEspbiExtObserved
Context: MedicationKnowledge
* ^url = "http://esveikata.lt/Profile/ltnhr-medication-knowledge/observed"
* ^status = #draft
* . ..1
* . ^short = "Ar stebimas / Is observed ?"
* . ^definition = "Nurodomas požymis ar vaistinis preparatas yra stebimas."
* url = "http://esveikata.lt/Profile/ltnhr-medication-knowledge/observed" (exactly)
* value[x] 1..
* value[x] only boolean