Extension: LtEspbiExtPrescriptionForm
Id: LtEspbiExtPrescriptionForm
Description: "Recepto forma / Prescription form"
Context: MedicationDispense, DeviceDispense.basedOn, MedicationDispense.authorizingPrescription
* ^url = "http://esveikata.lt/Profile/lt-med-dispense/prescriptionForm"
* ^status = #draft
* . ..1
* . ^short = "Recepto forma / Prescription form"
* . ^definition = "Galimos reikšmės:\r\n- el : Elektroninis receptas\r\n- pp : Popierinis receptas"
* url = "http://esveikata.lt/Profile/lt-med-dispense/prescriptionForm" (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x].id ..0
* value[x].extension ..0
* value[x].coding 1..1
* value[x].coding.id ..0
* value[x].coding.extension ..0
* value[x].coding.system 1..
* value[x].coding.system = "http://esveikata.lt/fhir/CodeSystem/lt-espbi-cs-prescription-form" (exactly)
* value[x].coding.version ..0
* value[x].coding.code 1..
* value[x].coding.userSelected ..0
* value[x].text ..0