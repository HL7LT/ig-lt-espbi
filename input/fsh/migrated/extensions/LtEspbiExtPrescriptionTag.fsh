Extension: LtEspbiExtPrescriptionTag
Id: LtEspbiExtPrescriptionTag
Description: "Recepto išrašymo žyma / Prescription tag"
Context: MedicationRequest.dispenseRequest, DeviceRequest
* ^url = "http://esveikata.lt/Profile/lt-med-prescription/prescriptionTag"
* ^status = #draft
* . ..1
* . ^short = "Recepto išrašymo žyma / Prescription tag"
* . ^definition = "Recepto išrašymo žyma / Prescription tag"
* url = "http://esveikata.lt/Profile/lt-med-prescription/prescriptionTag" (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x].id ..0
* value[x].extension ..0
* value[x].coding 1..1
* value[x].coding.id ..0
* value[x].coding.extension ..0
* value[x].coding.system 1..
* value[x].coding.version ..0
* value[x].coding.code 1..
* value[x].coding.display 1..
* value[x].coding.userSelected ..0
* value[x].text ..0