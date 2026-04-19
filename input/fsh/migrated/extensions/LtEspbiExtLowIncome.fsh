Extension: LtEspbiExtLowIncome
Id: LtEspbiExtLowIncome
Description: "Jei pacientas yra asmuo, gaunantis mažas pajamas / If the patient is a low-income person"
Context: MedicationDispense, DeviceDispense
* ^url = "http://esveikata.lt/Profile/lt-med-dispense/lowIncome"
* ^status = #draft
* . ..1
* . ^short = "Jei pacientas yra asmuo, gaunantis mažas pajamas / If the patient is a low-income person"
* . ^definition = "Jei pacientas yra asmuo, gaunantis mažas pajamas"
* extension contains
    surchargeCompensated 1..1 and
    tag 1..1 and
    surchargeEligible 0..1
* extension[surchargeCompensated] ^short = "Kompensuojamoji priemoka"
* extension[surchargeCompensated].value[x] 1..
* extension[surchargeCompensated].value[x] only Money
* extension[surchargeCompensated].value[x].id ..0
* extension[surchargeCompensated].value[x].value 1..
* extension[surchargeCompensated].value[x].currency 1..
* extension[tag] ^short = "Požymis, ar pacientas yra asmuo, gaunantis mažas pajamas"
* extension[tag].value[x] 1..
* extension[tag].value[x] only boolean
* extension[surchargeEligible] ^short = "Požymis, ar sukauptas Priemokų krepšelis"
* extension[surchargeEligible].value[x] 1..
* extension[surchargeEligible].value[x] only boolean
* url = "http://esveikata.lt/Profile/lt-med-dispense/lowIncome" (exactly)