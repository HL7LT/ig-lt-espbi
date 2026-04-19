Extension: LtEspbiExtPersonIdentityNumber
Id: LtEspbiExtPersonIdentityNumber
Context: Coverage.identifier
* ^url = "http://esveikata.lt/Profile/ltnhr-Coverage/personIdentityNumber"
* ^status = #draft
* . ..1
* . ^short = "Asmens tapatybės numeris nurodytas Europos sveikatos draudimo kortelėje / The personal identification number is indicated on the European Health Insurance Card"
* url = "http://esveikata.lt/Profile/ltnhr-Coverage/personIdentityNumber" (exactly)
* value[x] 1..
* value[x] only Identifier
* value[x].system 1..
* value[x].system = "http://esveikata.lt/classifiers/IdentityDocument/SerieNumber"
* value[x].value 1..