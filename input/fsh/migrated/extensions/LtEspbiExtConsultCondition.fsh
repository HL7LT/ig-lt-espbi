Alias: $lt-espbi-condition = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-condition

Extension: LtEspbiExtConsultCondition
Id: LtEspbiExtConsultCondition
Description: "Diagnozė(-s) dėl kurių yra konsultuojamasi (galimos tik diagnozės iš E003 dokumento diagnozių sąrašo)"
Context: Observation
* ^url = "http://esveikata.lt/Profile/ltnhr-observation/consultCondition"
* ^status = #draft
* . ^short = "Diagnozė(-s) dėl kurių yra konsultuojamasi"
* . ^definition = "Diagnozė(-s) dėl kurių yra konsultuojamasi / Diagnosis(s) being consulted for"
* url = "http://esveikata.lt/Profile/ltnhr-observation/consultCondition" (exactly)
* value[x] 1..
* value[x] only Reference($lt-espbi-condition)