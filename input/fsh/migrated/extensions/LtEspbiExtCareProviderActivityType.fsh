Extension: LtEspbiExtCareProviderActivityType
Id: LtEspbiExtCareProviderActivityType
Context: Patient.generalPractitioner
* ^url = "http://esveikata.lt/Profile/ltnhr-patient/careProviderActivityType"
* ^status = #draft
* . ^short = "Paslaugos tiekėjo tipas / Care provider type"
* . ^definition = "Paslaugos tiekėjo tipas. Naudojamas klasifikatorius care-provider-activity-type."
* url = "http://esveikata.lt/Profile/ltnhr-patient/careProviderActivityType" (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x].coding 1..1
* value[x].coding.system 1..
* value[x].coding.system = "http://esveikata.lt/classifiers/careProviderActivityType"
* value[x].coding.code 1..