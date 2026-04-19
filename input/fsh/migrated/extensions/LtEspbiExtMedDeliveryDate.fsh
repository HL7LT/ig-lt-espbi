Extension: LtEspbiExtMedDeliveryDate
Id: LtEspbiExtMedDeliveryDate
Description: "Išdavimo (gavimo) data - data, kai pacientas ar jo atstovas gavo vaistinį preparatą/mpp į rankas / Date of issue (receipt) - the date when the patient or their representative received the medicinal product/medication in their hands"
Context: MedicationRequest.dispenseRequest, MedicationDispense
* ^url = "http://esveikata.lt/Profile/lt-espbi-med-dispense/medDeliveryDate"
* ^status = #draft
* . ..1
* . ^short = "Išdavimo (gavimo) data - data, kai pacientas ar jo atstovas gavo vaistinį preparatą/mpp į rankas."
* . ^definition = "Išdavimo (gavimo) data - data, kai pacientas ar jo atstovas gavo vaistinį preparatą/mpp į rankas. Pridedamas tik tuo atveju, kai įsigyjama nuotoliniu būdu"
* url = "http://esveikata.lt/Profile/lt-espbi-med-dispense/medDeliveryDate" (exactly)
* value[x] 1..
* value[x] only date