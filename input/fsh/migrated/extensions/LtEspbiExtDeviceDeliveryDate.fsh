Extension: LtEspbiExtDeviceDeliveryDate
Id: LtEspbiExtDeviceDeliveryDate
Description: "Išdavimo (gavimo) data - data, kai pacientas ar jo atstovas gavo MPP ar medicinos prietaisą į rankas / Date of issue (receipt) - the date on which the patient or his representative received the MPP or medical device in his hands"
Context: DeviceDispense, DeviceRequest
* ^url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-device-delivery-date"
* ^status = #draft
* . ..1
* . ^short = "Išdavimo (gavimo) data - data, kai pacientas ar jo atstovas gavo MPP ar medicinos prietaisą į rankas"
* . ^definition = "Išdavimo (gavimo) data - data, kai pacientas ar jo atstovas gavo MPP ar medicinos prietaisą į rankas. Pridedamas tik tuo atveju, kai įsigyjama nuotoliniu būdu."
* url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-device-delivery-date" (exactly)
* value[x] 1..
* value[x] only date