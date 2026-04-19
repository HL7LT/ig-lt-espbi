Extension: LtEspbiExtAagaSgasNumber
Id: LtEspbiExtAagaSgasNumber
Description: "AAGA/SGAS numeris / AAGA/SGAS number"
Context: MedicationRequest.dispenseRequest, DeviceRequest
* ^url = "http://esveikata.lt/Profile/lt-med-prescription/aagaSgasNumber"
* ^status = #draft
* . ..1
* . ^short = "AAGA/SGAS numeris / AAGA/SGAS number"
* . ^definition = "AAGA/SGAS numeris"
* url = "http://esveikata.lt/Profile/lt-med-prescription/aagaSgasNumber" (exactly)
* value[x] 1..
* value[x] only string