Extension: LtEspbiExtComponentNumber
Id: LtEspbiExtComponentNumber
Context: MedicationKnowledge.definitional.ingredient
* ^url = "http://esveikata.lt/Profile/ltnhr-medication-knowledge/componentNumber"
* ^status = #draft
* . ..1
* . ^short = "Komponento Eil. nr. / Component number"
* . ^definition = "Vaistinio preparato komponento eilės numeris."
* url = "http://esveikata.lt/Profile/ltnhr-medication-knowledge/componentNumber" (exactly)
* value[x] 1..
* value[x] only integer