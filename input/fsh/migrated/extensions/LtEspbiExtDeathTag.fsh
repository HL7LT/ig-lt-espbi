Extension: LtEspbiExtDeathTag
Id: LtEspbiExtDeathTag
Context: Resource
* ^url = "http://esveikata.lt/Profile/ltnhr-certificate-death/deathTag"
* ^status = #draft
* . ..1
* . ^short = "Žyma, kad yra bent viena iš sąlygų, dėl kurių privaloma pranešti policijai / Indicates that at least one of the conditions requiring reporting to the police is present"
* . ^definition = "Žyma, kad yra bent viena iš sąlygų, dėl kurių privaloma pranešti policijai. Reikšmė \"Taip\" nurodoma tuo atveju, jei atitinka nors viena iš šių sąlygų:\r\n- Nustatyta arba įtariama smurtinė mirtis;\r\n- Mirtis įvyko viešoje vietoje;\r\n- Nenustatyta mirusiojo asmenybė;\r\n- Neaiški mirties priežastis, jei mirtis įvyko už stacionarinės asmens sveikatos priežiūros įstaigos ribų;\r\n- Staigi arba netikėta mirtis;\r\n- Mirė pacientas, išbuvęs stacionarinėje asmens sveikatos priežiūros įstaigoje mažiau nei 24 valandas, išskyrus atvejus, kai mirtis įvyko dėl nustatytos lėtinės ligos;\r\n- Nustatyta arba įtariama, jog mirtis įvyko nuo gamybinės traumos, apsinuodijimo, profesinės ligos, ypač pavojingos infekcinės ligos;\r\n- Mirusiajam jo paskutinio susirgimo metu nebuvo teikiama medicinos pagalba;\r\n- Pranešta policijai apie asmens mirties faktą, kai to reikalavo mirusiojo teisėtas atstovas."
* url = "http://esveikata.lt/Profile/ltnhr-certificate-death/deathTag" (exactly)
* value[x] 1..
* value[x] only boolean