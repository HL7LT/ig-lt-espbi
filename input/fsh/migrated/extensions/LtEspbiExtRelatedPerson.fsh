Alias: $lt-espbi-patient = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-patient

Extension: LtEspbiExtRelatedPerson
Id: LtEspbiExtRelatedPerson
Context: RelatedPerson
* ^url = "http://esveikata.lt/Profile/ltnhr-related-person/relatedPerson.reference"
* ^status = #draft
* . ..1
* . ^short = "Nuoroda į susijusio asmens duomenis / Reference to related person"
* . ^definition = "Nuoroda į susijusio asmens duomenų resursą (įvedamas arba gaunamas iš LR gyventojų registro)."
* url = "http://esveikata.lt/Profile/ltnhr-related-person/relatedPerson.reference" (exactly)
* value[x] 1..
* value[x] only Reference($lt-espbi-patient)
* value[x].reference 1..