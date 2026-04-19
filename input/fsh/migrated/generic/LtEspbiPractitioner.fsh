Alias: $countryCode = http://esveikata.lt/Profile/ltnhr-practitioner/countryCode
Alias: $lt-espbi-ext-profession = http://esveikata.lt/fhir/Extension/lt-espbi-ext-profession
Alias: $licenseStatus = http://esveikata.lt/Profile/ltnhr-practitioner/licenseStatus

Profile: LtEspbiPractitioner
Parent: Practitioner
Id: LtEspbiPractitioner
* ^url = "http://esveikata.lt/fhir/StructureDefinition/lt-espbi-practitioner"
* ^status = #draft
* id MS
* id ^short = "Sveikatos priežiūros specialisto resurso id / Logical id of this artifact"
* meta MS
* extension contains
    $countryCode named ltEspbiExtCountryCode 0..* and
    $lt-espbi-ext-profession named ltEspbiExtProfession 0..*
* identifier MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^short = "Specialisto identifikatorius skirtas identifikuoti specialistą pagal jo unikalų kodą"
* identifier ^definition = "Specialisto identifikatorius skirtas identifikuoti specialistą pagal jo unikalų kodą. \r\n\r\nSpecialisto identifikatorius gali būti Lietuvos Piliečio Asmens kodas ir/arba sveikatos priežiūros specialistui suteikto spaudo numeris.\r\nIdentifikuojančios sistemos pavadinimas (system): http://esveikata.lt/classifiers/Identifier/PersonalCode ir/arba http://esveikata.lt/classifiers/Identifier/StampCode.\r\n\r\nTaip pat, identifikatorius gali būti naudojamas specialisto E. pristatymo dėžutės adresui nurodyti. E. pristatymo dėžutės identifikatoriaus system lauko reikšmė: http://esveikata.lt/Identifier/eDelivery."
* identifier contains
    PersonalCode 1..1 and
    StampCode 0..* and
    eDelivery 0..1
* identifier[PersonalCode] ^short = "Specialisto asmens kodas / Health Care Specialist personal Code"
* identifier[PersonalCode] ^definition = "Specialisto asmens kodas"
* identifier[PersonalCode].system 1..
* identifier[PersonalCode].system = "http://esveikata.lt/classifiers/Identifier/PersonalCode"
* identifier[PersonalCode].value 1..
* identifier[StampCode] ^short = "Sveikatos priežiūros specialisto spaudo informacija / Health Care Specialist‘s stamp information"
* identifier[StampCode] ^definition = "Sveikatos priežiūros specialisto spaudo informacija"
* identifier[StampCode].system 1..
* identifier[StampCode].system = "http://esveikata.lt/Identifier/StampCode"
* identifier[StampCode].value 1..
* identifier[StampCode].period 1..
* identifier[StampCode].period ^short = "Sveikatos priežiūros specialisto spaudo galiojimo laikotarpis"
* identifier[StampCode].period.start 1..
* identifier[StampCode].period.start ^short = "Sveikatos priežiūros specialisto spaudo suteikimo data (metai, mėnuo, diena) "
* identifier[StampCode].period.start ^definition = "Sveikatos priežiūros specialisto spaudo suteikimo data (metai, mėnuo, diena). Pateikiama tuo atveju, kai nurodomas sveikatos priežiūros specialistui suteikto spaudo numeris."
* identifier[StampCode].period.end ^short = "Sveikatos priežiūros specialisto spaudo panaikinimo data (metai, mėnuo, diena)"
* identifier[StampCode].period.end ^definition = "Sveikatos priežiūros specialisto spaudo panaikinimo data (metai, mėnuo, diena). Pateikiama tuo atveju, kai nurodomas sveikatos priežiūros specialistui suteikto spaudo numeris."
* identifier[eDelivery] ^short = "Asmens E. pristatymo dėžutės duomenys"
* identifier[eDelivery] ^definition = "Asmens E. pristatymo dėžutės duomenys / Person eDelivery address"
* identifier[eDelivery].system 1..
* identifier[eDelivery].system = "http://esveikata.lt/Identifier/eDelivery"
* identifier[eDelivery].value 1..
* name 1..1 MS
* name ^short = "Specialisto vardas, pavardė"
* name ^definition = "Specialisto vardas, pavardė / Health Care Specialist name"
* name.family 1..
* name.family ^short = "Pavardė "
* name.family ^definition = "Pavardė / Last Name"
* name.given 1..
* name.given ^short = "Vardas"
* name.given ^definition = "Vardas / First Name"
* photo MS
* photo ^short = "Specialisto nuotrauka / Specialist photo"
* photo ^definition = "Sveikatos priežiūros specialisto nuotrauka."
* qualification MS
* qualification ^short = "Sveikatos priežiūros specialisto profesinė kvalifikacija / Health Care Specialist‘s Qualification"
* qualification ^definition = "Sveikatos priežiūros specialisto profesinės kvalifikacijos duomenys - licencija, profesinės kvalifikacijos kodas."
* qualification.extension 1..
* qualification.extension contains $licenseStatus named ltExtLicenseStatus 0..*
* qualification.extension[ltExtLicenseStatus] ^isModifier = false
* qualification.identifier 1..1 MS
* qualification.identifier ^short = "Licencijos numeris / License number"
* qualification.identifier ^definition = "Sveikatos priežiūros specialistui suteiktos licencijos numeris. Vienas specialistas gali turėti kelias licencijas.\r\nPateikiami duomenys apie licencijos numerį iš http://esveikata.lt/classifiers/LicenceCode."
* qualification.identifier.system 1..
* qualification.identifier.system = "http://esveikata.lt/classifiers/LicenseCode"
* qualification.identifier.value 1..
* qualification.code ^short = "Sveikatos priežiūros specialisto profesinė kvalifikacija / Coded representation of the qualification"
* qualification.code ^definition = "Sveikatos priežiūros specialisto profesinės kvalifikacijos kodas ir pavadinimas.\r\nGalimos reikšmės nurodytos klasifikatoriuje qualification-code (http://esveikata.lt/classifiers/QualificationCode).\r\n\r\nPagal FHIR R5 turėtų būti naudojamas reikšmių sąrašas http://terminology.hl7.org/ValueSet/v2-0360."
* qualification.code.coding 1..1
* qualification.code.coding ^short = "Profesinės kvalifikacijos kodas"
* qualification.code.coding ^definition = "Profesinės kvalifikacijos kodas / Qualification code"
* qualification.code.coding.system 1..
* qualification.code.coding.system = "http://esveikata.lt/classifiers/QualificationCode"
* qualification.code.coding.code 1..
* qualification.code.coding.display 1..
* qualification.period 1.. MS
* qualification.period ^short = "Licencijos galiojimo laikotarpis / The period during which license is valid"
* qualification.period ^definition = "Sveikatos priežiūros specialisto licencijos galiojimo laikotarpis - licencijos išdavimo ir sustabdymo datos (metai, mėnuo, diena)."
* qualification.period.start 1..