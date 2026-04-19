Extension: LtEspbiExtResidenceCountry
Id: LtEspbiExtResidenceCountry
Context: Patient.address, Address
* ^url = "http://esveikata.lt/Profile/ltnhr-patient/residenceCountry"
* ^status = #draft
* . ^short = "Gyvenamosios vietos šalis užsienio piliečiams / Country of residence for foreign citizens"
* . ^definition = "Užsienio paciento gyvenamosios šalies kodas.\r\n\r\nGalimos reikšmės nurodytos klasifikatoriuje country."
* url = "http://esveikata.lt/Profile/ltnhr-patient/residenceCountry" (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x].coding 1..1
* value[x].coding.system 1..
* value[x].coding.system = "http://esveikata.lt/classifiers/Country"
* value[x].coding.code 1..