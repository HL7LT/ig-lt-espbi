Alias: $department = http://esveikata.lt/Profile/ltnhr-practitioner/department
Alias: $lt-espbi-practitioner = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-practitioner
Alias: $lt-espbi-organization = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-organization

Profile: LtEspbiPractitionerRole
Parent: PractitionerRole
Id: LtEspbiPractitionerRole
Description: "Sveikatos priežiūros specialisto vaidmens organizacijoje profilis / PractitionerRole profile "
* ^url = "http://esveikata.lt/fhir/StructureDefinition/lt-espbi-practitioner-role"
* ^status = #draft
* id MS
* id ^short = "Sveikatos priežiūros specialisto vaidmens resurso id / Logical id of this artifact"
* meta MS
* extension MS
* extension contains $department named ltEspbiExtDepartment 0..*
* identifier ..1 MS
* identifier ^short = "Specialisto identifikatorius, skirtas identifikuoti specialistą pagal sveikatos priežiūros specialistui suteikto spaudo numerį"
* identifier ^definition = "Specialisto identifikatorius skirtas identifikuoti specialistą pagal sveikatos priežiūros specialistui suteikto spaudo numerį (http://esveikata.lt/classifiers/Identifier/StampCode)."
* identifier.system 1..
* identifier.system = "http://esveikata.lt/classifiers/Identifier/StampCode"
* identifier.value 1..
* identifier.period 1..
* identifier.period ^short = "Sveikatos priežiūros specialisto spaudo galiojimo laikotarpis Time period when id is/was valid for use"
* identifier.period ^definition = "Sveikatos priežiūros specialisto spaudo galiojimo laikotarpis"
* identifier.period.start 1..
* identifier.period.start ^short = "Sveikatos priežiūros specialisto spaudo suteikimo data (metai, mėnuo, diena)."
* identifier.period.start ^definition = "Sveikatos priežiūros specialisto spaudo suteikimo data (metai, mėnuo, diena). Pateikiama tuo atveju, kai nurodomas sveikatos priežiūros specialistui suteikto spaudo numeris."
* identifier.period.end ^short = "Sveikatos priežiūros specialisto spaudo panaikinimo data (metai, mėnuo, diena)."
* identifier.period.end ^definition = "Sveikatos priežiūros specialisto spaudo panaikinimo data (metai, mėnuo, diena). Pateikiama tuo atveju, kai nurodomas sveikatos priežiūros specialistui suteikto spaudo numeris."
* period 1.. MS
* period ^short = "Laikotarpis, per kurį specialistas įgaliotas atlikti šias pareigas / The period during which the person is authorized to act as a practitioner in these role(s) for the organization."
* period ^definition = "Nuo kada ir iki kada sveikatos priežiūros specialistas įdarbintas sveikatos priežiūros įstaigoje. Laikotarpis apskaičiuojamas pagal visų sveikatos priežiūros specialisto įdarbinimų organizacijos skyriuose duomenis.\r\nNurodomi duomenys - metai, mėnuo, diena."
* period.start 1..
* period.end MS
* practitioner 1.. MS
* practitioner only Reference($lt-espbi-practitioner)
* practitioner ^short = "Sveikatos priežiūros specialistas / Practitioner that provides services for the organization"
* practitioner.reference 1..
* organization 1.. MS
* organization only Reference($lt-espbi-organization)
* organization ^short = "Nuoroda į sveikatos priežiūros įstaigos (SPĮ) resursą, kurioje dirba sveikatos priežiūros specialistas / The organization where the Practitioner performs the roles associated"
* organization ^definition = "Nuoroda į sveikatos priežiūros įstaigos (SPĮ) resursą, kurioje dirba sveikatos priežiūros specialistas. "
* organization.reference 1..
* code ..1 MS
* code ^short = "Vaidmuo, kurį specialistas atlieka sveikatos priežiūros įstaigoje / Roles which this practitioner is authorized to perform "
* code ^definition = "Sveikatos priežiūros specialisto vaidmuo, kurį specialistas atlieka sveikatos priežiūros įstaigoje.\r\nGalimos reikšmės nurodytos klasifikatoriuje role-type (http://esveikata.lt/classifiers/RoleType)."
* code.coding 1..1
* code.coding.system 1..
* code.coding.system = "https://ws.esveikata.lt/cxf/Classifiers/role-type"
* code.coding.code 1..
* specialty ..1 MS
* specialty ^short = "Sveikatos priežiūros specialisto profesija, nurodyta spaude / Health Care Specialist‘s profession, as indicated in the stamp"
* specialty ^definition = "Sveikatos priežiūros specialisto profesija, nurodyta spaude.\r\nGalimos reikšmės nurodytos klasifikatoriuje qualification-code (http://esveikata.lt/classifiers/QualificationCode)."
* specialty.coding 1..1
* specialty.coding.system 1..
* specialty.coding.system = "http://esveikata.lt/classifiers/QualificationCode"
* specialty.coding.code 1..
* specialty.coding.display 1..
* contact MS
* contact ^short = "Sveikatos priežiūros specialisto kontaktiniai duomenys / Official contact details relating to this PractitionerRole"
* contact.telecom MS
* contact.telecom ^short = "Sveikatos priežiūros specialisto kontaktiniai duomenys"
* contact.telecom ^definition = "Sveikatos priežiūros specialisto kontaktiniai duomenys - telefono numeris ir/arba elektroninio pašto adresas darbovietėje. Gali būti pildomi ir vaizduojami daugiau nei vienas tel. nr. (pvz. darbo, mobilus) / Contact details"
* contact.telecom.value MS
* characteristic MS
* characteristic ^short = "Specialisto pareigos / Specialist position"
* characteristic ^definition = "Specialisto pareigos.\r\nGalimos reikšmės nurodytos klasifikatoriuje practitioner-position (http://esveikata.lt/classifiers/PractitionerPosition)."
* characteristic.coding 1..1
* characteristic.coding.system 1..
* characteristic.coding.system = "http://esveikata.lt/classifiers/PractitionerPosition"
* characteristic.coding.code 1..
* characteristic.coding.display 1..