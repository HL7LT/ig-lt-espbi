Extension: LtEspbiExtExpectedDeliveryDate
Id: LtEspbiExtExpectedDeliveryDate
Description: "Planuojama pristatymo data, kai receptas buvo rezervuotas vaistinėje (nenuotoliniu būdu) / Planned delivery date when the prescription was reserved at the pharmacy (non-remote method)"
Context: MedicationRequest.dispenseRequest, DeviceRequest
* ^url = "http://esveikata.lt/Profile/lt-espbi-med-request/expectedDeliveryDate"
* ^status = #draft
* . ..1
* . ^short = "Planuojama pristatymo data, kai receptas buvo rezervuotas vaistinėje (nenuotoliniu būdu) / Planned delivery date when the prescription was reserved at the pharmacy (non-remote method)"
* . ^definition = "Planuojama pristatymo data, kai receptas buvo rezervuotas vaistinėje (nenuotoliniu būdu)"
* url = "http://esveikata.lt/Profile/lt-espbi-med-request/expectedDeliveryDate" (exactly)
* value[x] 1..
* value[x] only dateTime