Extension: LtEspbiExtRegisteredPeriod
Id: LtEspbiExtRegisteredPeriod
Context: Patient.generalPractitioner
* ^url = "http://esveikata.lt/Profile/ltnhr-patient/registeredPeriod"
* ^status = #draft
* . ..1
* . ^short = "Laikotarpis (nuo iki datos) kiek asmuo prisirašęs prie nurodytos sveikatos priežiūros įstaigos / Period (start end) when Patient's nominated care provider"
* . ^definition = "Laikotarpis (nuo iki datos) kiek asmuo prisirašęs prie nurodytos sveikatos priežiūros įstaigos."
* url = "http://esveikata.lt/Profile/ltnhr-patient/registeredPeriod" (exactly)
* value[x] 1..
* value[x] only Period