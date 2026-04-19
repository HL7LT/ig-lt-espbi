Extension: LtEspbiExtShowToPatient
Id: LtEspbiExtShowToPatient
Context: Composition
* ^url = "http://esveikata.lt/Profile/ltnhr-composition/showToPatient"
* ^status = #draft
* . ..1
* . ^short = "Požymis nurodantis, ar dokumentas gali būti rodomas pacientui"
* . ^definition = "Požymis nurodantis, ar dokumentas gali būti rodomas pacientui / An indicator indicating whether the document can be shown to the patient"
* url = "http://esveikata.lt/Profile/ltnhr-composition/showToPatient" (exactly)
* value[x] 1..
* value[x] only boolean