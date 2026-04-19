Extension: LtEspbiExtPrescriptionValidityPeriod
Id: LtEspbiExtPrescriptionValidityPeriod
Description: "Recepto galiojimo laikotarpis / Prescription validity period"
Context: DeviceRequest
* ^url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-prescription-validity-period"
* ^status = #draft
* . ..1
* . ^short = "Recepto galiojimo laikotarpis / Prescription validity period"
* . ^definition = "Recepto galiojimo laikotarpis"
* url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-prescription-validity-period" (exactly)
* value[x] 1..
* value[x] only Period
* value[x].id ..0
* value[x].extension ..0
* value[x].start 1..
* value[x].start ^short = "Recepto galiojimo pradžios data"
* value[x].start ^definition = "Recepto galiojimo pradžios data"
* value[x].end 1..
* value[x].end ^short = "Recepto galiojimo pabaigos data"
* value[x].end ^definition = "Recepto galiojimo pabaigos data"