Extension: LtEspbiExtDevicePrice
Id: LtEspbiExtDevicePrice
Description: "MPP ar medicinos prietaiso kainos / MPP or medical device prices"
Context: DeviceDispense
* ^url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-device-price"
* ^status = #draft
* . 1..1
* . ^short = "Vaisto ar MPP/MP kainos"
* extension contains
    retail 1..1 and
    paid 1..1 and
    compensated 1..1 and
    techPaid 0..1
* extension[retail] ^short = "Išduoto MPP ar medicinos prietaiso  kaina"
* extension[retail] ^definition = "Išduoto MPP ar medicinos prietaiso kaina"
* extension[retail].id ..0
* extension[retail].value[x] 1..
* extension[retail].value[x] only Money
* extension[retail].value[x].id ..0
* extension[retail].value[x].value 1..
* extension[retail].value[x].currency 1..
* extension[paid] ^short = "Išduoto MPP ar medicinos prietaiso kaina, kurią sumokėjo pacientas."
* extension[paid] ^definition = "Išduoto MPP ar medicinos prietaiso kaina, kurią sumokėjo pacientas."
* extension[paid].id ..0
* extension[paid].value[x] 1..
* extension[paid].value[x] only Money
* extension[paid].value[x].id ..0
* extension[paid].value[x].value 1..
* extension[paid].value[x].currency 1..
* extension[compensated] ^short = "Kompensuojama suma"
* extension[compensated] ^definition = "Kompensuojama suma"
* extension[compensated].value[x] 1..
* extension[compensated].value[x] only Money
* extension[compensated].value[x].id ..0
* extension[compensated].value[x].value 1..
* extension[compensated].value[x].currency 1..
* extension[techPaid] ^short = "Paciento priemoka už technologinius ypatumus."
* extension[techPaid] ^definition = "Paciento priemoka už technologinius ypatumus. Taikoma tik Medicininei priemonei akiniai/lęšiai."
* extension[techPaid].value[x] 1..
* extension[techPaid].value[x] only Money
* extension[techPaid].value[x].id ..0
* extension[techPaid].value[x].value 1..
* extension[techPaid].value[x].currency 1..
* url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-device-price" (exactly)