Alias: $ControlledType = http://esveikata.lt/classifiers/ControlledType

Extension: LtEspbiExtControlledType
Id: LtEspbiExtControlledType
Context: Substance
* ^url = "http://esveikata.lt/Profile/ltnhr-substance/controlledType"
* ^status = #draft
* . ..1
* . ^short = "Kontroliuojamos medžiagos tipas / Controlled substance type"
* . ^definition = "Vaistinio preparato komponento sudėtyje esančios kontroliuojamos medžiagos tipas.\r\nGalimos reikšmės nurodytos klasifikatoriuje controlled-type (http://esveikata.lt/classifiers/ControlledType)."
* url = "http://esveikata.lt/Profile/ltnhr-substance/controlledType" (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] ^example.label = "example"
* value[x] ^example.valueCodeableConcept = $ControlledType#1 "Narkotinė"
* value[x].coding 1..1
* value[x].coding.system 1..
* value[x].coding.system = "http://esveikata.lt/classifiers/ControlledType"
* value[x].coding.code 1..
* value[x].coding.display 1..