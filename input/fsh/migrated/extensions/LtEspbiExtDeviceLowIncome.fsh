Alias: $lt-espbi-coverage = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-coverage

Extension: LtEspbiExtDeviceLowIncome
Id: LtEspbiExtDeviceLowIncome
Context: DeviceDispense
* ^url = "http://esveikata.lt/Profile/lt-device-dispense/lowIncome"
* ^status = #draft
* . ..1
* extension contains
    Compensated 1..1 and
    Tag 1..1 and
    SurchargeEligible 0..1
* extension[Compensated] ^short = "Kompensuojamoji priemoka / Allowance for compensation"
* extension[Compensated] ^definition = "Kompensuojamoji priemoka."
* extension[Compensated].value[x] 1..
* extension[Compensated].value[x] only Money
* extension[Tag] ^short = "Požymis, ar pacientas yra asmuo, gaunantis mažas pajamas / Indication of whether the patient is a low-income individual "
* extension[Tag] ^definition = "Požymis, ar pacientas yra asmuo, gaunantis mažas pajamas."
* extension[Tag].value[x] 1..
* extension[Tag].value[x] only boolean
* extension[SurchargeEligible] ^short = "Požymis, ar sukauptas Priemokų krepšelis / Attribute if Copayment busket was created"
* extension[SurchargeEligible] ^definition = "Požymis, ar sukauptas Priemokų krepšelis."
* extension[SurchargeEligible].value[x] only Reference($lt-espbi-coverage)
* url = "http://esveikata.lt/fhir/StructureDefinition/lt-espbi-med-dispense/lowIncome" (exactly)