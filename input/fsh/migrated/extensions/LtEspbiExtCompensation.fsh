Extension: LtEspbiExtCompensation
Id: LtEspbiExtCompensation
Context: MedicationKnowledge.cost
* ^url = "http://esveikata.lt/Profile/ltnhr-medication-knowledge/compensation"
* ^status = #draft
* . ^short = "Vaistinio preparato kompensavimas / Medication compensation data"
* extension contains
    compensationCode 0..1 and
    percentage 0..1 and
    surcharge 0..1 and
    compensationLimitPeriod 0..1 and
    compensationPeriod 0..1
* extension[compensationCode] ^short = "Vaistinio preparato kompensavimo rūšis / Compensation type"
* extension[compensationCode] ^definition = "Vaistinio preparato kompensavimo rūšies kodas bei pavadinimas.\r\nGalimos reikšmės nurodytos klasifikatoriuje compensation-type (http://esveikata.lt/classifiers/Medication/CompensationCode)."
* extension[compensationCode].value[x] 1..
* extension[compensationCode].value[x] only CodeableConcept
* extension[compensationCode].value[x].coding 1..1
* extension[compensationCode].value[x].coding.system 1..
* extension[compensationCode].value[x].coding.system = "http://esveikata.lt/classifiers/Medication/CompensationCode" (exactly)
* extension[compensationCode].value[x].coding.code 1..
* extension[compensationCode].value[x].coding.display 1..
* extension[percentage] ^short = "Vaistinio preparato kompensavimo procentas / Compensation percentage"
* extension[percentage] ^definition = "Vaistinio preparato kompensavimo procentas"
* extension[percentage].value[x] 1..
* extension[percentage].value[x] only unsignedInt
* extension[surcharge] ^short = "Vaistinio preparato priemoka  / Surcharge"
* extension[surcharge] ^definition = "Vaistinio preparato priemoka"
* extension[surcharge].value[x] 1..
* extension[surcharge].value[x] only Money
* extension[surcharge].value[x].value 1..
* extension[surcharge].value[x].currency 1..
* extension[compensationLimitPeriod] ^short = "Vaistinio preparato ar MPP kompensavimo ribojimų periodas / Compensation limitation period"
* extension[compensationLimitPeriod] ^definition = "Vaistinio preparato ar MPP kompensavimo ribojimų periodas."
* extension[compensationLimitPeriod].value[x] 1..
* extension[compensationLimitPeriod].value[x] only Period
* extension[compensationPeriod] ^short = "Vaistinio preparato kompensavimo periodas / Compensation period"
* extension[compensationPeriod] ^definition = "Vaistinio preparato kompensavimo periodas (pradžios ir pabaigos datos (metai, mėnuo, diena)). "
* extension[compensationPeriod].value[x] only Period
* url = "http://esveikata.lt/Profile/ltnhr-medication-knowledge/compensation" (exactly)