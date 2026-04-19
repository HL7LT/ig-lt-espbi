Extension: LtEspbiExtFixatingSubstance
Id: LtEspbiExtFixatingSubstance
Context: Specimen.processing
* ^url = "http://esveikata.lt/Profile/ltnhr-specimen/fixatingSubstance"
* ^status = #draft
* . ^short = "Fiksuojanti medžiaga / Fixative material"
* . ^definition = "Objekto (ėminio) audinį fiksuojanti medžiaga"
* url = "http://esveikata.lt/Profile/ltnhr-specimen/fixatingSubstance" (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] ^short = "Fiksuojanti medžiagos informacija / Fixative material data"
* value[x] ^definition = "Objekto (ėminio) audinį fiksuojančios medžiagos informacija."
* value[x].coding 1..1
* value[x].coding ^short = "Fiksuojančios medžiagos kodas / Fixative material code"
* value[x].coding ^definition = "Fiksuojančios medžiagos kodas."
* value[x].coding.system 1..
* value[x].coding.system = "http://esveikata.lt/classifiers/Specimen/FixatingSubstance" (exactly)
* value[x].coding.code 1..
* value[x].coding.display 1..
* value[x].text MS
* value[x].text ^short = "Fiksuojančios medžiagos aprašymas / Fixative material description"
* value[x].text ^definition = "Fiksuojančios medžiagos aprašymas."