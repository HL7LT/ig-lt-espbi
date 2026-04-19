Alias: $lt-espbi-organization = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-organization

Extension: LtEspbiExtBabyBirthHospital
Id: LtEspbiExtBabyBirthHospital
Context: Observation
* ^url = "http://esveikata.lt/Profile/ltnhr-observation/babyBirthHospital"
* ^status = #draft
* . ..1
* . ^short = "Nuoroda į ligoninės, kurioje gimė naujagimis, resursą / Reference to hospital where patient born"
* . ^definition = "Nuoroda į ligoninės, kurioje gimė naujagimis, resursą (privalomas, jeigu Observation.valueCodeableConcept lauke yra nurodyta \"Ligoninė\")."
* url = "http://esveikata.lt/Profile/ltnhr-observation/babyBirthHospital" (exactly)
* value[x] 1..
* value[x] only Reference($lt-espbi-organization)