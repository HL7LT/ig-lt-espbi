Alias: $SubstanceSource = http://esveikata.lt/classifiers/Substance/SubstanceSource

Extension: LtEspbiExtSubstanceSource
Id: LtEspbiExtSubstanceSource
Context: Substance
* ^url = "http://esveikata.lt/Profile/ltnhr-substance/substanceSource"
* ^status = #draft
* . ..1
* . ^short = "Veikliosios medžiagos šaltinis / Substance source"
* . ^definition = "Veikliosios medžiagos šaltinis.\r\nGalimos reikšmės nurodytos klasifikatoriuje substance-source (http://esveikata.lt/classifiers/Substance/SubstanceSource)."
* url = "http://esveikata.lt/Profile/ltnhr-substance/substanceSource" (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] ^example.label = "example"
* value[x] ^example.valueCodeableConcept = $SubstanceSource#1 "INN"
* value[x].coding 1..1
* value[x].coding.system 1..
* value[x].coding.system = "http://esveikata.lt/classifiers/Substance/SubstanceSource"
* value[x].coding.code 1..
* value[x].coding.display 1..