Alias: $addressIdentifier = http://esveikata.lt/Profile/ltnhr-organization/addressIdentifier
Alias: $licenses.status = http://esveikata.lt/Profile/ltnhr-organization/licenses.status
Alias: $licenses.statusChangedDate = http://esveikata.lt/Profile/ltnhr-organization/licenses.statusChangedDate

Profile: LtEspbiOrganization
Parent: Organization
Id: LtEspbiOrganization
* ^url = "http://esveikata.lt/fhir/StructureDefinition/lt-espbi-organization"
* ^status = #draft
* id MS
* id ^short = "Resurso identifikatorius / Logical id of the resource"
* id ^definition = "Resurso unikalus identifikatorius, naudojamas resurso URL adresuose. Kartą priskirta, ši reikšmė niekada nesikeičia."
* meta MS
* identifier 1.. MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.description = "Organizacijos identifikatoriai"
* identifier ^slicing.rules = #open
* identifier ^short = "Sveikatos priežiūros įstaigos identifikatorius / Identifier for the organization that is used to identify the organization."
* identifier ^definition = "Galimi identifikatoriai:\r\njuridinių asmenų registro (JAR) įstaigos kodas. Identifikuojančios sistemos pavadinimas - http://esveikata.lt/classifiers/Identifier/JAR, sveikatos priežiūros organizacinio vieneto (įstaigos, jos filialo, skyriaus, filialo skyriaus ir pan.)\r\n\r\nKodas SVEIDRA IS sistemoje, identifikuojančios sistemos pavadinimas - http://esveikata.lt/classifiers/Identifier/SVEIDRAID.\r\n\r\nVAPRIS veiklos vietos identifikatorius. Identifikuojančios sistemos pavadinimas - http://esveikata.lt/classifiers/Identifier/ActivityPlaceNumber\r\n\r\nSPĮLIS veiklos vietos identifikatorius. Identifikuojančios sistemos pavadinimas - http://esveikata.lt/classifiers/Identifier/SPILISActivityPlaceNumber"
* identifier contains
    JAR 0..1 and
    SVEIDRAID 0..1 and
    VAPRIS 0..1 and
    SPILIS 0..1
* identifier[JAR] ^short = "Sveikatinimo įstaigos kodas (JAR)"
* identifier[JAR] ^definition = "Sveikatinimo įstaigos kodas (JAR) / Registration Cod"
* identifier[JAR].system 1..
* identifier[JAR].system = "http://esveikata.lt/classifiers/Identifier/JAR"
* identifier[JAR].value 1..
* identifier[SVEIDRAID] ^short = "Sveikatos priežiūros organizacinio vieneto (įstaigos, jos filialo, skyriaus, filialo skyriaus ir pan.) kodas SVEIDRA IS sistemoje"
* identifier[SVEIDRAID] ^definition = "Sveikatos priežiūros organizacinio vieneto (įstaigos, jos filialo, skyriaus, filialo skyriaus ir pan.) kodas SVEIDRA IS sistemoje / SVEIDRA ID issued by National health insurance fund"
* identifier[SVEIDRAID].system 1..
* identifier[SVEIDRAID].system = "http://esveikata.lt/classifiers/Identifier/SVEIDRAID"
* identifier[SVEIDRAID].value 1..
* identifier[VAPRIS] ^short = "VAPRIS veiklos vietos identifikatorius"
* identifier[VAPRIS].system 1..
* identifier[VAPRIS].system = "http://esveikata.lt/classifiers/Identifier/ActivityPlaceNumber"
* identifier[VAPRIS].value 1..
* identifier[SPILIS] ^short = "SPĮLIS veiklos vietos identifikatorius"
* identifier[SPILIS].system 1..
* identifier[SPILIS].value 1..
* active MS
* active ^short = "Nurodo ar įstaiga yra aktyvi ir gali būti naudojama / Whether the organization's record is still in active use"
* active ^definition = "Jei laukas nenurodytas įstaiga yra aktyvi."
* type ..1 MS
* type ^short = "Organizacijos tipas: pagrindinis sveikatos priežiūros paslaugų teikėjas (visa ligoninė) arba jos skyrius / Type of organization: main Healthcare Provider (whole Hospital) or its department"
* type ^definition = "Nurodomas įstaigos tipas - sveikatinimo paslaugų įstaiga arba sveikatinimo paslaugų įstaigos padalinys.\r\nGalimos reikšmės nurodytos klasifikatoriuje organization-type.\r\n\r\nFHIR R5 numatyta, kad duomenys imami iš http://terminology.hl7.org/CodeSystem/organization-type."
* name MS
* name ^short = "Sveikatos priežiūros įstaigos pavadinimas / A name associated with the organization"
* contact 1.. MS
* contact ^short = "Organizacijos kontaktiniai duomenys/ Official contact details for the Organization"
* contact.telecom MS
* contact.telecom ^short = "Įstaigos ar padalinio kontaktiniai duomenys"
* contact.telecom ^definition = "Įstaigos ar padalinio kontaktiniai duomenys: telefono numeris (system - phone), mobilaus telefono numeris (system - phone, use - mobile),  elektroninio pašto adresas (system - email), E. pristatymo dėžutė (system - other) / Contact details"
* contact.telecom.value MS
* contact.address MS
* contact.address ^short = "Įstaigos registracijos adresas arba įstaigos ar jos padalinio veiklos adreso duomenys (vietovė, gatvė, namo numeris, korpuso numeris) / Address for the contact"
* contact.address.extension 1..
* contact.address.extension[ltExtAddressIdentifier] only $addressIdentifier
* contact.address.extension[ltExtAddressIdentifier] ^sliceName = "ltExtAddressIdentifier"
* contact.address.extension[ltExtAddressIdentifier] ^isModifier = false
* partOf only Reference(LtEspbiOrganization)
* partOf MS
* partOf ^short = "Tuo atveju jei ligoninės skyrius, nuoroda į tėvinį skyrių ar sveikatinimo organizaciją"
* partOf ^definition = "Tuo atveju jei ligoninės skyrius, nuoroda į tėvinį skyrių ar sveikatinimo organizaciją / In case of department, reference to parent department or health organization"
* partOf.reference 1..
* qualification MS
* qualification ^short = "Įstaigos licencijų duomenys / Organization licenses"
* qualification.extension 1..
* qualification.extension contains
    $licenses.status named ltExtLicensesStatus 0..* and
    $licenses.statusChangedDate named ltExtStatusChangeDate 0..*
* qualification.extension[ltExtLicensesStatus] ^isModifier = false
* qualification.extension[ltExtStatusChangeDate] ^isModifier = false
* qualification.identifier 1..1
* qualification.identifier ^short = "Licencijos numeris / License number"
* qualification.identifier.system 1..
* qualification.identifier.system = "http://esveikata.lt/Identifier/OrganizationLicenseNumber"
* qualification.identifier.value 1..
* qualification.code ^short = "Licencijos rūšis"
* qualification.code ^definition = "Licencijos rūšis / License type"
* qualification.code.coding MS
* qualification.code.coding ^slicing.discriminator.type = #pattern
* qualification.code.coding ^slicing.discriminator.path = "system"
* qualification.code.coding ^slicing.rules = #open
* qualification.code.coding contains
    LicenseType 0..1 and
    AdditionalLicenseType 0..1
* qualification.code.coding[LicenseType] ^short = "Licencijos rūšis"
* qualification.code.coding[LicenseType] ^definition = "Licencijos rūšis / License type"
* qualification.code.coding[LicenseType].system 1..
* qualification.code.coding[LicenseType].system = "http://esveikata.lt/classifiers/OrganizationLicenseType"
* qualification.code.coding[LicenseType].code 1..
* qualification.code.coding[LicenseType].display 1..
* qualification.code.coding[AdditionalLicenseType] ^short = "Papildomos licencijos rūšis"
* qualification.code.coding[AdditionalLicenseType] ^definition = "Papildomos licencijos rūšis / Additional license type"
* qualification.code.coding[AdditionalLicenseType].system 1..
* qualification.code.coding[AdditionalLicenseType].system = "http://esveikata.lt/classifiers/OrganizationAdditionalLicenseType"
* qualification.code.coding[AdditionalLicenseType].code 1..
* qualification.code.coding[AdditionalLicenseType].display 1..
* qualification.period 1.. MS
* qualification.period.start 1..
* qualification.period.start ^short = "Licencijos išdavimo data"
* qualification.period.start ^definition = "Licencijos išdavimo data / License issue date"