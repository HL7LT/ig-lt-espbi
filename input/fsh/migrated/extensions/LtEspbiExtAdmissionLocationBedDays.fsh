Extension: LtEspbiExtAdmissionLocationBedDays
Id: LtEspbiExtAdmissionLocationBedDays
Context: Encounter.admission, Encounter.location
* ^url = "http://esveikata.lt/Profile/ltnhr-encounter/admission-location.bedDays"
* ^status = #draft
* . ..1
* . ^short = "Lovadienių skaičius / Number of bed-days."
* . ^definition = "Bendras arba skyriuje lovadienių skaičius."
* url = "http://esveikata.lt/Profile/ltnhr-encounter/admission-location.bedDays" (exactly)
* value[x] 1..
* value[x] only integer