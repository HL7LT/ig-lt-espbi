Extension: LtEspbiExtPerformerQualification
Id: LtEspbiExtPerformerQualification
Description: "Specialisto, atlikusio apžiūrą, profesinė kvalifikacija / Health Care Specialist‘s Qualification "
Context: Observation
* ^url = "http://esveikata.lt/Profile/ltnhr-observation/performerQualification"
* ^status = #draft
* . ..1
* . ^short = "Specialisto, atlikusio apžiūrą, profesinė kvalifikacija / Health Care Specialist‘s Qualification "
* . ^definition = "Specialisto, atlikusio apžiūrą, profesinė kvalifikacija. Naudojama, kai Observation resursas aprašo konsultacijos duomenis E025 dokumente.\r\nGalimos reikšmės nurodytos klasifikatoriuje qualification-code (http://esveikata.lt/classifiers/QualificationCode)."
* url = "http://esveikata.lt/Profile/ltnhr-observation/performerQualification" (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x].id ..0
* value[x].extension ..0
* value[x].coding 1..1
* value[x].coding.id ..0
* value[x].coding.extension ..0
* value[x].coding.system 1..
* value[x].coding.system = "http://esveikata.lt/classifiers/QualificationCode"
* value[x].coding.version ..0
* value[x].coding.code 1..
* value[x].coding.display 1..
* value[x].coding.userSelected ..0
* value[x].text ..0