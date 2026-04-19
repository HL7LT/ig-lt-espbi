Extension: LtEspbiExtPrescriptionDocumentNumber
Id: LtEspbiExtPrescriptionDocumentNumber
Description: "Elektroninio recepto numeris (Composition id) / Electronic prescription number (Composition id)"
Context: MedicationDispense.authorizingPrescription
* ^url = "http://esveikata.lt/Profile/lt-med-dispense/prescriptionDocumentNumber"
* ^status = #draft
* . ..1
* . ^short = "Elektroninio recepto numeris (Composition id)"
* . ^definition = "Elektroninio recepto numeris (Composition id). Būtinas jei recepto forma el (elektroninis). Neprivalomas nuo v29, kai recepto forma yra popierinė"
* url = "http://esveikata.lt/Profile/lt-med-dispense/prescriptionDocumentNumber" (exactly)
* value[x] 1..
* value[x] only string