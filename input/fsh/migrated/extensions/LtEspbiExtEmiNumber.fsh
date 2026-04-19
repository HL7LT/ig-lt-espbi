Extension: LtEspbiExtEmiNumber
Id: LtEspbiExtEmiNumber
Context: Encounter
* ^url = "http://esveikata.lt/Profile/ltnhr-encounter/emiNumber"
* ^status = #draft
* . 1..1
* . ^short = "Paciento ligos istorijos nr. / Illness history number"
* . ^definition = "Ligos istorijos nr (stacionare) arba asmens sveikatos istorijos nr (poliklinikoje). SPĮ pacientui suteiktas EMI numeris, kuris yra unikalus SPĮ ribose."
* url = "http://esveikata.lt/Profile/ltnhr-encounter/emiNumber" (exactly)
* value[x] 1..
* value[x] only string