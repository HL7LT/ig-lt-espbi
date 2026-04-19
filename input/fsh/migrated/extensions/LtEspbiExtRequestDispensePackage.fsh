Extension: LtEspbiExtRequestDispensePackage
Id: LtEspbiExtRequestDispensePackage
Description: "Pakuotė / Package"
Context: MedicationRequest.dispenseRequest, DeviceRequest
* ^url = "http://esveikata.lt/Profile/lt-med-prescription/dispensePackage"
* ^status = #draft
* . ..1
* . ^short = "Pakuotė / Package"
* . ^definition = "Pakuotė"
* extension contains
    name 0..1 and
    size 0..1
* extension[name] ^short = "Pavadinimas / Name"
* extension[name] ^definition = "Pavadinimas."
* extension[name].value[x] 1..
* extension[name].value[x] only string
* extension[size] ^short = "Pakuotės dydis / Package size"
* extension[size] ^definition = "Pakuotės dydis."
* extension[size].value[x] 1..
* extension[size].value[x] only Quantity
* extension[size].value[x].id ..0
* extension[size].value[x].value 1..
* extension[size].value[x].comparator ..0
* extension[size].value[x].unit 1..
* extension[size].value[x].system 1..
* extension[size].value[x].code 1..
* url = "http://esveikata.lt/Profile/lt-med-prescription/dispensePackage" (exactly)