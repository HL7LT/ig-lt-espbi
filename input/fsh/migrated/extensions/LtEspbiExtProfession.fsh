Extension: LtEspbiExtProfession
Id: LtEspbiExtProfession
Description: "Sveikatos priežiūros specialisto profesija / The profession of a healthcare professional"
Context: Practitioner
* ^url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-profession"
* ^status = #draft
* . ..1
* . ^short = "Sveikatos priežiūros specialisto profesija / The profession of a healthcare professional"
* . ^definition = "Sveikatos priežiūros specialisto profesija.\nGalimos reikšmės nurodytos klasifikatoriuje qualification-code (http://esveikata.lt/classifiers/QualificationCode)."
* url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-profession" (exactly)
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