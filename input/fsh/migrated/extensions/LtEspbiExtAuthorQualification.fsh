Extension: LtEspbiExtAuthorQualification
Id: LtEspbiExtAuthorQualification
Description: "Gydytojo profesinė kvalifikacija / Health Care Specialist‘s Qualification "
Context: Composition, DocumentReference
* ^url = "http://esveikata.lt/Profile/ltnhr-composition/authorQualification"
* ^status = #draft
* . ..1
* . ^short = "Gydytojo profesinė kvalifikacija / Health Care Specialist‘s Qualification "
* . ^definition = "Gydytojo profesinė kvalifikacija"
* url = "http://esveikata.lt/Profile/ltnhr-composition/authorQualification" (exactly)
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