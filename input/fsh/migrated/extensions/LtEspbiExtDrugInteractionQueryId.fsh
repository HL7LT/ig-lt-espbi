Extension: LtEspbiExtDrugInteractionQueryId
Id: LtEspbiExtDrugInteractionQueryId
Context: MedicationRequest.dispenseRequest
* ^url = "http://esveikata.lt/Profile/lt-med-prescription/drugInteractionQueryId"
* ^status = #draft
* . ..1
* . ^short = "Vaistų sąveikos tikrinimo identifikatorius / Drug interaction checking identifier"
* . ^definition = "Vaistų sąveikos tikrinimo identifikatorius. Reikia nurodyti vaisto ir ekstemporalaus vaisto skyrimui."
* url = "http://esveikata.lt/Profile/lt-med-prescription/drugInteractionQueryId" (exactly)
* value[x] 1..
* value[x] only string