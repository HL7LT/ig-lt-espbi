Extension: LtEspbiExtAddressIdentifier
Id: LtEspbiExtAddressIdentifier
Context: Organization.contact.address
* ^url = "http://esveikata.lt/Profile/ltnhr-organization/addressIdentifier"
* ^status = #draft
* . ^short = "Įstaigos registracijos adreso informacija"
* . ^definition = "Įstaigos registracijos adreso informacija / Address of registration information"
* extension contains
    Type 0..1 and
    text 0..1 and
    addressID 0..1 and
    municipalityID 0..1 and
    cityID 0..1 and
    streetID 0..1 and
    house 0..1 and
    hull 0..1 and
    flat 0..1 and
    postCode 0..1
* extension[Type] ^short = "Įstaigos adreso tipas"
* extension[Type] ^definition = "Įstaigos adreso tipas / Type of address"
* extension[Type].value[x] 1..
* extension[Type].value[x] only CodeableConcept
* extension[Type].value[x].coding 1..1
* extension[Type].value[x].coding.system 1..
* extension[Type].value[x].coding.system = "http://esveikata.lt/classifiers/AddressIdentifier/Type"
* extension[Type].value[x].coding.code 1..
* extension[text] ^short = "Įstaigos tekstinis adresas"
* extension[text] ^definition = "Įstaigos tekstinis adresas / Text representation of the address"
* extension[text].value[x] 1..
* extension[text].value[x] only string
* extension[addressID] ^short = "Adreso identifikatorius"
* extension[addressID] ^definition = "Adreso identifikatorius / Address ID"
* extension[addressID].value[x] 1..
* extension[addressID].value[x] only Identifier
* extension[addressID].value[x].system 1..
* extension[addressID].value[x].system = "http://esveikata.lt/classifiers/Address/AddressIdentifier"
* extension[addressID].value[x].value 1..
* extension[municipalityID] ^short = "Savivaldybės identifikatorius"
* extension[municipalityID] ^definition = "Savivaldybės identifikatorius / Municipality ID"
* extension[municipalityID].value[x] 1..
* extension[municipalityID].value[x] only string
* extension[cityID] ^short = "Vietovės identifikatorius"
* extension[cityID] ^definition = "Vietovės identifikatorius / City ID"
* extension[cityID].value[x] 1..
* extension[cityID].value[x] only string
* extension[streetID] ^short = "Gatvės identifikatorius"
* extension[streetID] ^definition = "Gatvės identifikatorius / Street ID"
* extension[streetID].value[x] 1..
* extension[streetID].value[x] only string
* extension[house] ^short = "Namo numeris"
* extension[house] ^definition = "Namo numeris / House number"
* extension[house].value[x] 1..
* extension[house].value[x] only string
* extension[hull] ^short = "Korpuso numeris"
* extension[hull] ^definition = "Korpuso numeris / Hull number"
* extension[hull].value[x] 1..
* extension[hull].value[x] only string
* extension[flat] ^short = "Buto numeris"
* extension[flat] ^definition = "Buto numeris / Flat number"
* extension[flat].value[x] 1..
* extension[flat].value[x] only string
* extension[postCode] ^short = "Pašto kodas"
* extension[postCode] ^definition = "Pašto kodas / Post code"
* extension[postCode].value[x] 1..
* extension[postCode].value[x] only string
* url = "http://esveikata.lt/Profile/ltnhr-organization/addressIdentifier" (exactly)