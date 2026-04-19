Alias: $relatedPerson.reference = http://esveikata.lt/Profile/ltnhr-related-person/relatedPerson.reference
Alias: $lt-espbi-patient = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-patient

Profile: LtEspbiRelatedPerson
Parent: RelatedPerson
Id: LtEspbiRelatedPerson
* ^url = "http://esveikata.lt/fhir/StructureDefinition/lt-espbi-related-person"
* ^status = #draft
* id MS
* id ^short = "Resurso identifikatorius / Logical id of the resource"
* id ^definition = "Resurso unikalus identifikatorius, naudojamas resurso URL adresuose. Kartą priskirta, ši reikšmė niekada nesikeičia."
* meta MS
* extension MS
* extension contains $relatedPerson.reference named ltExtRelatedPerson 0..* MS
* identifier MS
* identifier.system 1..
* identifier.system ^mustSupport = false
* identifier.value 1..
* patient only Reference($lt-espbi-patient)
* patient MS
* patient ^short = "Pacientas, su kuriuo yra susijęs šis asmuo / Patient to whom this person is related"
* patient ^definition = "Nuoroda į pacientą, su kuriuo yra susijęs šis asmuo."
* patient.reference 1..
* relationship MS
* relationship ^short = "Paciento giminystės arba kito ryšio tipas (pvz., sutuoktinis, tėvas, mama) / Type of related person"
* relationship ^definition = "Ryšio tipas tarp paciento ir jo kontaktinio asmens.\r\n\r\nGalimos reikšmės nurodytos klasifikatoriuje related-person-type."
* relationship.coding 1..1
* relationship.coding.system 1..
* relationship.coding.system = "http://esveikata.lt/classifiers/RelatedPerson/Type"
* relationship.coding.code 1..
* relationship.coding.display MS
* relationship.text MS
* name ..1 MS
* name ^short = "Susijusio asmens vardas, pavardė / Related person name, surname"
* name ^definition = "Kontaktinio asmens vardas ir pavardė."
* name.family MS
* name.family ^short = "Susijusio asmens pavardė / Related person surname"
* name.family ^definition = "Kontaktinio asmens pavardė."
* name.given MS
* name.given ^short = "Susijusio asmens vardas(-ai) / Related person name(-s)"
* name.given ^definition = "Kontaktinio asmens vardas (-ai)."
* telecom MS
* telecom ^short = "Susijusio asmens kontaktiniai duomenys / Related person contact details, e.g. a telephone number or an email address"
* telecom ^definition = "Paciento kontaktinio asmens kontaktiniai duomenys."
* telecom.system 1..
* telecom.system ^definition = "Kontakto tipas.\r\n\r\nPagal FHIR R5 turi būti naudojamas reikšmių sąrašas http://hl7.org/fhir/ValueSet/contact-point-system. Galimos reikšmės: phone | fax | email | pager | url | sms | other."
* telecom.value 1..
* telecom.value ^definition = "Kontaktiniai duomenys (telefono numeris, el. pašto adresas)."
* telecom.use MS
* telecom.use ^definition = "Kontakto naudojimo tipas.\r\n\r\nPagal FHIR R5 turi būti naudojamas reikšmių sąrašas http://hl7.org/fhir/ValueSet/contact-point-use. Galimos reikšmės: home | work | temp | old | mobile.\r\n\r\n"