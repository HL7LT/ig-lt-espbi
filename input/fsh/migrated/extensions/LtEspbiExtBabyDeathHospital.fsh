Alias: $lt-espbi-organization = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-organization

Extension: LtEspbiExtBabyDeathHospital
Id: LtEspbiExtBabyDeathHospital
Context: Observation
* ^url = "http://esveikata.lt/Profile/ltnhr-observation/babyDeathHospital"
* ^status = #draft
* . ..1
* . ^short = "Nuoroda į ligoninės, kurioje mirė naujagimis, resursą / Reference to hospital where patient dead"
* . ^definition = "Nuoroda į ligoninės, kurioje mirė naujagimis, resursą (privalomas, jeigu Observation.valueCodeableConcept lauke yra nurodyta \"Ligoninė\")."
* url = "http://esveikata.lt/Profile/ltnhr-observation/babyDeathHospital" (exactly)
* value[x] 1..
* value[x] only Reference($lt-espbi-organization)