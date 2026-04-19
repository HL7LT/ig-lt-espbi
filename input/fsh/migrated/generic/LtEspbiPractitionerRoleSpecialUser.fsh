Alias: $specialUser = http://esveikata.lt/Profile/ltnhr-practitionerrole/specialUser
Alias: $blocked = http://esveikata.lt/Profile/ltnhr-practitionerrole/blocked
Alias: $lt-espbi-organization = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-organization

Profile: LtEspbiPractitionerRoleSpecialUser
Parent: PractitionerRole
Id: LtEspbiPractitionerRoleSpecialUser
Description: "Sveikatos priežiūros specialisto vaidmens profilis, skirtas duomenims apie sisteminį naudotoją pateikti / PractitionerRole for providing system user data"
* ^url = "http://esveikata.lt/fhir/StructureDefinition/lt-espbi-practitioner-role-special-user"
* ^status = #draft
* id MS
* id ^short = "Sveikatos priežiūros specialisto vaidmens resurso id / Logical id of this artifact"
* meta MS
* extension 1.. MS
* extension contains
    $specialUser named ltEspbiExtSpecialUser 0..* and
    $blocked named ltEspbiExtBlocked 0..*
* identifier ..1 MS
* identifier ^short = "Identifikatorius, skirtas identifikuoti sisteminį naudotoją"
* identifier ^definition = "Siekiant identifikuoti sisteminį naudotoją, naudojamas sisteminio naudotojo identifikacinis kodas. Identifikuojančios sistemos pavadinimas (system): http://esveikata.lt/Identifier/SystemUser."
* identifier.system 1..
* identifier.system = "http://esveikata.lt/Identifier/SystemUser"
* identifier.value 1..
* period 1.. MS
* period ^short = "Laikotarpis, per kurį sisteminis naudotojas įgaliotas atlikti šias pareigas / The period during which the system user is authorized to act in these role(s) for the organization."
* period ^definition = "Teikiant duomenis apie sisteminį naudotoją - kada ir iki kada sisteminis naudotojas priskiriamas sveikatos priežiūros įstaigai. Nurodomi duomenys - metai, mėnuo, diena."
* period.start 1..
* period.end MS
* organization 1.. MS
* organization only Reference($lt-espbi-organization)
* organization ^short = "Nuoroda į sveikatos priežiūros įstaigos (SPĮ) resursą, kurioje dirba sveikatos priežiūros specialistas arba kuri naudojasi sisteminiu naudotoju./ The organization where the Practitioner performs the roles associated"
* organization ^definition = "Nuoroda į sveikatos priežiūros įstaigos (SPĮ) resursą, kurioje dirba sveikatos priežiūros specialistas arba kuri naudojasi sisteminiu naudotoju.\n\nNuoroda į organizaciją nurodoma be organizacijos resurso istorinės versijos: Pvz.: \"Organization/123456789\". Sveikatos priežiūros specialistas gali būti įdarbintas keliose sveikatos priežiūros įstaigose."
* organization.reference 1..
* code ..1 MS
* code ^short = "Vaidmuo, kurį specialistas atlieka sveikatos priežiūros įstaigoje / Roles which this practitioner is authorized to perform "
* code ^definition = "Sveikatos priežiūros specialisto vaidmuo, kurį specialistas atlieka sveikatos priežiūros įstaigoje.\r\nGalimos reikšmės nurodytos klasifikatoriuje special-user-type (http://esveikata.lt/classifiers/SpecialUserType)"
* code.coding 1..1
* code.coding.system 1..
* code.coding.system = "https://ws.esveikata.lt/cxf/Classifiers/special-user-type"
* code.coding.code 1..