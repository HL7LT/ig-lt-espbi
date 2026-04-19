Extension: LtEspbiExtInsuranceGivenCountry
Id: LtEspbiExtInsuranceGivenCountry
Context: Coverage
* ^url = "http://esveikata.lt/Profile/ltnhr-Coverage/insuranceGivenCountry"
* ^status = #draft
* . ..1
* . ^short = "Apdraudusioji valstybė / Insurance given country"
* . ^definition = "Informacija apie pacientą apdraudusią valstybę (valstybės kodas ir pavadinimas). Privaloma nurodyti, jei pacientas yra apdraustas EEE šalyje ar Šveicarijoje.\r\n\r\nGalimos reikšmės nurodytos klasifikatoriuje country."
* url = "http://esveikata.lt/Profile/ltnhr-Coverage/insuranceGivenCountry" (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x].coding 1..1
* value[x].coding ^short = "Apdraudusios valstybės kodas / Insurance given country code"
* value[x].coding.system 1..
* value[x].coding.system = "http://esveikata.lt/classifiers/Country"
* value[x].coding.code 1..
* value[x].text 1..
* value[x].text ^short = "Apdraudusios valstybės pavadinimas / Insurance given country name"