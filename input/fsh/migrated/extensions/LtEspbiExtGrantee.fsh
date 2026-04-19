Alias: $lt-espbi-patient = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-patient

Extension: LtEspbiExtGrantee
Id: LtEspbiExtGrantee
Context: DocumentReference
* ^url = "http://esveikata.lt/Profile/ltnhr-documentreference/grantee"
* ^status = #draft
* . ^short = "Nuoroda į sutikimą patvirtinusio arba atšaukusio paciento arba jo atstovo resursą, arba specialisto resursą"
* url = "http://esveikata.lt/Profile/ltnhr-documentreference/grantee" (exactly)
* value[x] 1..
* value[x] only Reference($lt-espbi-patient)