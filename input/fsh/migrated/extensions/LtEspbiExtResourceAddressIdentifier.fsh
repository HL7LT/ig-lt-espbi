Extension: LtEspbiExtResourceAddressIdentifier
Id: LtEspbiExtResourceAddressIdentifier
Context: Patient.address, Practitioner.address
* ^url = "http://esveikata.lt/Profile/ltnhr-resource/addressIdentifier"
* ^status = #draft
* . ^short = "Deklaruotos/gyvenamosios vietos adreso duomenys / Data on the declared/residential address"
* . ^definition = "Deklaruotos/gyvenamosios vietos adreso duomenys. Deklaruotas gyvenamosios vietos adresas gaunamas iš LR gyventojų registro. Gyvenamosios vietos adresas įvedamas bei tikrinamas ar egzistuoja Adresų registre."
* extension contains
    type 0..1 and
    addressID 0..1 and
    municipalityID 0..1 and
    cityID 0..1 and
    streetID 0..1 and
    house 0..1 and
    hull 0..1 and
    flat 0..1
* extension[type] ^short = "Adreso tipas / Type of address"
* extension[type] ^definition = "Adreso tipas. Asmeniui - deklaruotos arba gyvenamosios vietos adresas."
* extension[type].value[x] 1..
* extension[type].value[x] only CodeableConcept
* extension[type].value[x].coding 1..1
* extension[type].value[x].coding.system 1..
* extension[type].value[x].coding.system = "http://esveikata.lt/classifiers/Address/Type"
* extension[type].value[x].coding.code 1..
* extension[addressID] ^short = "Adreso identifikatorius / Address ID"
* extension[addressID] ^definition = "Adreso identifikatorius iš Lietuvos adresų registro."
* extension[addressID].value[x] 1..
* extension[addressID].value[x] only Identifier
* extension[addressID].value[x].system 1..
* extension[addressID].value[x].system = "http://esveikata.lt/classifiers/Address/AddressIdentifier"
* extension[addressID].value[x].value 1..
* extension[municipalityID] ^short = "Savivaldybės identifikatorius iš adresų registro / Municipality ID"
* extension[municipalityID] ^definition = "Savivaldybės identifikatorius iš Lietuvos adresų registro."
* extension[municipalityID].value[x] 1..
* extension[municipalityID].value[x] only string
* extension[cityID] ^short = "Vietovės identifikatorius iš adresų registro / City ID"
* extension[cityID] ^definition = "Vietovės identifikatorius iš Lietuvos adresų registro."
* extension[cityID].value[x] 1..
* extension[cityID].value[x] only string
* extension[streetID] ^short = "Gatvės identifikatorius iš adresų registro / Street ID"
* extension[streetID] ^definition = "Gatvės identifikatorius iš Lietuvos adresų registro."
* extension[streetID].value[x] 1..
* extension[streetID].value[x] only string
* extension[house] ^short = "Namo (sklypo) numeris / House number"
* extension[house] ^definition = "Namo (sklypo) numeris."
* extension[house].value[x] 1..
* extension[house].value[x] only string
* extension[hull] ^short = "Korpuso numeris / Hull number"
* extension[hull] ^definition = "Namo (sklypo) numeris."
* extension[hull].value[x] 1..
* extension[hull].value[x] only string
* extension[flat] ^short = "Buto numeris / Flat number"
* extension[flat] ^definition = "Buto numeris."
* extension[flat].value[x] 1..
* extension[flat].value[x] only string
* url = "http://esveikata.lt/Profile/ltnhr-resource/addressIdentifier" (exactly)