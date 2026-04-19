Extension: LtEspbiExtExtemporaneous
Id: LtEspbiExtExtemporaneous
Description: "Ekstemporalaus vaisto duomenys / Extemporaneous drug data"
Context: Medication
* ^url = "http://esveikata.lt/Profile/ltnhr-medication/extemporaneous"
* ^status = #draft
* . ..1
* . ^short = "Ekstemporalaus vaisto duomenys / Extemporaneous medication data"
* extension contains
    extemporaneousDescription 0..1 and
    extemporaneousMethod 0..1
* extension[extemporaneousDescription] ^short = "Sudedamųjų dalių aprašymas / Description of ingredients"
* extension[extemporaneousDescription].value[x] 1..
* extension[extemporaneousDescription].value[x] only string
* extension[extemporaneousMethod] ^short = "Gaminimo metodas / Manufacturing method"
* extension[extemporaneousMethod].value[x] 1..
* extension[extemporaneousMethod].value[x] only string
* url = "http://esveikata.lt/Profile/ltnhr-medication/extemporaneous" (exactly)