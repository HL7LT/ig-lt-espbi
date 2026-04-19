Extension: LtEspbiExtRemotePharmacyTag
Id: LtEspbiExtRemotePharmacyTag
Description: "Požymis, ar vaistas įsigytas nuotoliniu būdu / Indication of whether the medicine was purchased remotely"
Context: MedicationDispense, MedicationRequest.dispenseRequest
* ^url = "http://esveikata.lt/Profile/lt-espbi-med-dispense/remotePharmacyTag"
* ^status = #draft
* . ..1
* . ^short = "Požymis, ar vaistas įsigytas nuotoliniu būdu"
* . ^definition = "Požymis, ar vaistas įsigytas nuotoliniu būdu. Pridedamas tik tuo atveju, kai įsigyjama nuotoliniu būdu"
* url = "http://esveikata.lt/Profile/lt-espbi-med-dispense/remotePharmacyTag" (exactly)
* value[x] 1..
* value[x] only boolean