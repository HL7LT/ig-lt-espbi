Alias: $Type = http://esveikata.lt/classifiers/RelatedPerson/Type
Alias: $lt-espbi-related-person = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-related-person

Profile: LtEspbiRelatedPersonMotherOfDeceased
Parent: $lt-espbi-related-person
Id: LtEspbiRelatedPersonMotherOfDeceased
* ^status = #draft
* implicitRules ..0
* language ..0
* text ..0
* contained ..0
* extension[ltExtRelatedPerson] ^sliceName = "ltExtRelatedPerson"
* extension[ltExtRelatedPerson] ^definition = "Nuoroda į susijusio asmens (motinos) Patient resursą."
* extension[ltExtRelatedPerson].id ..0
* extension[ltExtRelatedPerson].value[x] ^example[0].label = "example"
* extension[ltExtRelatedPerson].value[x] ^example[=].valueReference.reference = "Patient/1000092495"
* extension[ltExtRelatedPerson].value[x].id ..0
* extension[ltExtRelatedPerson].value[x].extension ..0
* extension[ltExtRelatedPerson].value[x].type ..0
* extension[ltExtRelatedPerson].value[x].identifier ..0
* extension[ltExtRelatedPerson].value[x].display ..0
* modifierExtension ..0
* identifier 1..
* identifier.id ..0
* identifier.extension ..0
* identifier.use ..0
* identifier.type ..0
* identifier.system ^example[0].label = "example"
* identifier.system ^example[=].valueUri = "http://esveikata.lt/Identifier/PersonalCode"
* identifier.value ^example[0].label = "example"
* identifier.value ^example[=].valueString = "45612120010"
* identifier.period ..0
* identifier.assigner ..0
* active ..0
* patient ^example[0].label = "example"
* patient ^example[=].valueReference.reference = "Patient/1000017309"
* patient.id ..0
* patient.extension ..0
* patient.type ..0
* patient.identifier ..0
* patient.display ..0
* relationship ^slicing.discriminator.type = #value
* relationship ^slicing.discriminator.path = "coding.system"
* relationship ^slicing.rules = #open
* relationship.id ..0
* relationship.extension ..0
* relationship.coding.id ..0
* relationship.coding.extension ..0
* relationship.coding.version ..0
* relationship.coding.userSelected ..0
* relationship contains mother 1..1
* relationship[mother].id ..0
* relationship[mother].extension ..0
* relationship[mother].coding ^example[0].label = "example"
* relationship[mother].coding ^example[=].valueCoding = $Type#1 "mama"
* relationship[mother].coding.id ..0
* relationship[mother].coding.extension ..0
* relationship[mother].coding.version ..0
* relationship[mother].coding.code = #1 (exactly)
* relationship[mother].coding.userSelected ..0
* relationship[other_relationships] ^sliceName = "other_relationships"
* relationship[other_relationships].id ..0
* relationship[other_relationships].extension ..0
* relationship[other_relationships].coding.id ..0
* relationship[other_relationships].coding.extension ..0
* relationship[other_relationships].coding.version ..0
* relationship[other_relationships].coding.userSelected ..0
* name 1..
* name ^example[0].label = "example"
* name ^example[=].valueHumanName.family = "Pavardenė"
* name ^example[=].valueHumanName.given[0] = "Vardenė"
* name ^example[=].valueHumanName.given[+] = "Antravardenė"
* name.id ..0
* name.extension ..0
* name.use ..0
* name.text ..0
* name.family 1..
* name.given 1..
* name.prefix ..0
* name.suffix ..0
* name.period ..0
* telecom ^example[0].label = "example"
* telecom ^example[=].valueContactPoint.system = #phone
* telecom ^example[=].valueContactPoint.value = "+37065656565"
* telecom ^example[+].label = "example"
* telecom ^example[=].valueContactPoint.system = #email
* telecom ^example[=].valueContactPoint.value = "vardene.pavardene@gmail.com"
* telecom.id ..0
* telecom.extension ..0
* telecom.use ..0
* telecom.use ^definition = "Kontakto naudojimo tipas.\r\n\r\nPagal FHIR R5 turi būti naudojamas reikšmių sąrašas http://hl7.org/fhir/ValueSet/contact-point-use. Galimos reikšmės: home | work | temp | old | mobile.\r\n\r\n"
* telecom.rank ..0
* telecom.period ..0
* gender ..0
* birthDate ..0
* address ..0
* photo ..0
* period ..0
* communication ..0