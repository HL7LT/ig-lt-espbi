Alias: $elab-practitioner = http://esveikata.lt/fhir/StructureDefinition/elab-practitioner
Alias: $elab-organization = http://esveikata.lt/fhir/StructureDefinition/elab-organization

Profile: ElabPractitionerRole
Parent: PractitionerRole
Id: elab-practitionerRole
Description: "Sveikatos priežiūros specialisto rolė įstaigoje / Practitioner role in organization"
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
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier.system 1..
* identifier.value 1..
* identifier contains
    ESPBI 1..1 MS and
    StampCode 0..1 MS
* identifier[ESPBI] ^short = "ESPBI Practitioner resurso identifikatorius / ESPBI Practitioner id"
* identifier[ESPBI].system = "http://esveikata.lt/Identifier/ESPBI"
* identifier[StampCode] ^short = "Spaudo numeris / Stamp code"
* identifier[StampCode].system = "http://esveikata.lt/Identifier/StampCode"
* period 1.. MS
* period ^short = "Laiko periodas, kuriuo specialistas turi šią rolę įstaigoje / The period during which the practitioner is authorized to perform in these role(s)"
* practitioner 1.. MS
* practitioner only Reference($elab-practitioner)
* practitioner ^short = "Specialistas / Practitioner that provides services for the organization"
* organization 1.. MS
* organization only Reference($elab-organization)
* organization ^short = "Įstaiga, kurioje dirba šis specialistas (arba padalinys, jei dirbama ne tėvinėje įstaigoje) / Practitioner workplace organization (or subunit, if working outside the parent organization)"
* code MS
* code ^short = "Specialisto vaidmuo įstaigoje / Roles which this practitioner may perform"
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding.code 1..
* code.coding contains RoleType 1..1 MS
* code.coding[RoleType].system 1..
* code.coding[RoleType].system = "http://esveikata.lt/classifiers/RoleType"
* specialty 1..1 MS
* specialty ^short = "Specialisto profesija / Specific specialty of the practitioner"
* specialty.coding ^slicing.discriminator.type = #value
* specialty.coding ^slicing.discriminator.path = "system"
* specialty.coding ^slicing.rules = #open
* specialty.coding.code 1..
* specialty.coding contains QualificationCode 1..1 MS
* specialty.coding[QualificationCode].system 1..
* specialty.coding[QualificationCode].system = "http://esveikata.lt/classifiers/QualificationCode"
* contact MS
* contact ^short = "Specialisto darbo vietos kontaktinė informacija / Official contact details relating to this PractitionerRole"
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
* contact.telecom[Email] ^short = "Elektroninis paštas / Email"
* contact.telecom[Email] ^mustSupport = true
* contact.telecom[Email].system = #email (exactly)