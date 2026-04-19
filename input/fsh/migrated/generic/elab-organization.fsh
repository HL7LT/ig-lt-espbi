Profile: ElabOrganization
Parent: Organization
Id: elab-organization
Description: "Įstaiga arba padalinys / Organization"
* ^version = "0.3.28"
* ^status = #active
* ^date = "2023-02-09"
* ^publisher = "Registrų Centras"
* ^contact.name = "Registrų Centras"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "https://www.registrucentras.lt/"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "esveikata@registrucentras.lt"
* ^jurisdiction = urn:iso:std:iso:3166#LT "Lithuania"
* identifier 3..
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier.system 1..
* identifier.value 1..
* identifier contains
    SVEIDRA 0..1 MS and
    JAR 1..1 MS and
    ESPBI 0..1 MS
* identifier[SVEIDRA] ^short = "SVEIDRA identifikatorius / SVEIDRA identifier"
* identifier[SVEIDRA].system = "http://esveikata.lt/Identifier/SVEIDRAID"
* identifier[JAR] ^short = "JAR kodas / JAR code"
* identifier[JAR].system = "http://esveikata.lt/classifiers/Identifier/JAR"
* identifier[ESPBI] ^short = "ESPBI id"
* identifier[ESPBI].system = "http://esveikata.lt/Identifier/ESPBI"
* active 1.. MS
* active ^short = "Ar įstaiga yra veikianti / Whether the organization's record is still in active use"
* name 1.. MS
* name ^short = "Įstaigos pavadinimas / Title"
* contact 1.. MS
* contact ^short = "Įstaigos kontaktinė informacija / Official contact details for the Organization"
* contact.telecom 1..
* contact.telecom ^slicing.discriminator.type = #value
* contact.telecom ^slicing.discriminator.path = "system"
* contact.telecom ^slicing.rules = #open
* contact.telecom ^short = "Contact details (phone/email and more)"
* contact.telecom.value 1..
* contact.telecom[Phone] ^sliceName = "Phone"
* contact.telecom[Phone] ^short = "Telefono numeris / Phone number"
* contact.telecom[Phone] ^mustSupport = true
* contact.telecom[Phone].system = #phone (exactly)
* contact.telecom[Email] ^sliceName = "Email"
* contact.telecom[Email] ^short = "Elektroninio pašto adresas / Email"
* contact.telecom[Email] ^mustSupport = true
* contact.telecom[Email].system = #email (exactly)
* contact.address 1.. MS
* contact.address ^short = "Įstaigos adresas / Adress"
* partOf only Reference(ElabOrganization)
* partOf MS
* partOf ^short = "Įstaiga, kuriai priklausi ši įstaiga/padalinys / The organization of which this organization forms a part"