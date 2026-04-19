Extension: LtEspbiExtDispensePackage
Id: LtEspbiExtDispensePackage
Description: "Pakuotė / Package"
Context: MedicationDispense
* ^url = "http://esveikata.lt/Profile/lt-med-dispense/dispensePackage"
* ^status = #draft
* . ..1
* . ^short = "Pakuotė"
* extension ..2
* extension contains
    name 0..1 and
    size 0..1
* extension[name] ^short = "Pavadinimas"
* extension[name].value[x] 1..
* extension[name].value[x] only string
* extension[size].value[x] 1..
* extension[size].value[x] only Quantity
* extension[size].value[x] ^short = "Dydis"
* extension[size].value[x].id ..0
* extension[size].value[x].value 1..
* extension[size].value[x].comparator ..0
* extension[size].value[x].unit 1..
* extension[size].value[x].system 1..
* extension[size].value[x].code 1..
* url = "http://esveikata.lt/Profile/lt-med-dispense/dispensePackage" (exactly)