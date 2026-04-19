Alias: $lt-espbi-practitioner-role = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-practitioner-role

Extension: LtEspbiExtAuthor
Id: LtEspbiExtAuthor
Context: ImmunizationRecommendation
* ^url = "http://esveikata.lt/Profile/ltnhr-immunizationrecommendation/author"
* ^status = #draft
* . 1..1
* . ^short = "Planuojamo skiepo duomenų autorius / Practitioner, who has submitted this recommendation"
* url = "http://esveikata.lt/Profile/ltnhr-immunizationrecommendation/author" (exactly)
* value[x] 1..
* value[x] only Reference($lt-espbi-practitioner-role)