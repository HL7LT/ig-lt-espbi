Extension: LtEspbiExtDeviceDispensePackage
Id: LtEspbiExtDeviceDispensePackage
Description: "MPP ar medicinos prietaiso pakuotė / MPP or medical device package"
Context: DeviceDispense
* ^url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-device-dispense-package"
* ^status = #draft
* . ..1
* . ^short = "MPP ar medicinos prietaiso pakuotė / MPP or medical device package"
* . ^definition = "MPP ar medicinos prietaiso pakuotė"
* extension contains
    name 1..1 and
    size 0..1
* extension[name] ^short = "Pavadinimas / Name"
* extension[name] ^definition = "Pavadinimas."
* extension[name].value[x] 1..
* extension[name].value[x] only string
* extension[size] ^short = "Dydis / Size"
* extension[size] ^definition = "Dydis."
* extension[size].value[x] 1..
* extension[size].value[x] only Quantity
* extension[size].value[x].id ..0
* extension[size].value[x].value 1..
* extension[size].value[x].comparator ..0
* extension[size].value[x].unit 1..
* extension[size].value[x].system 1..
* extension[size].value[x].system = "http://unitsofmeasure.org"
* extension[size].value[x].code 1..
* url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-device-dispense-package" (exactly)