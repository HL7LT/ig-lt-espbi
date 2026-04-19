Alias: $documentCountry = http://esveikata.lt/Profile/ltnhr-patient/documentCountry
Alias: $documentRegisteredBy = http://esveikata.lt/Profile/ltnhr-patient/documentRegisteredBy
Alias: $documentRegisteredDate = http://esveikata.lt/Profile/ltnhr-patient/documentRegisteredDate
Alias: $lt-espbi-address = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-address
Alias: $lt-espbi-practitioner-role = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-practitioner-role
Alias: $lt-espbi-organization = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-organization
Alias: $careProviderActivityType = http://esveikata.lt/Profile/ltnhr-patient/careProviderActivityType
Alias: $registeredPeriod = http://esveikata.lt/Profile/ltnhr-patient/registeredPeriod
Alias: $familyDoctor = http://esveikata.lt/Profile/ltnhr-patient/familyDoctor
Alias: $lt-espbi-patient-identifier = http://esveikata.lt/fhir/ValueSet/lt-espbi-patient-identifier

Profile: LtEspbiPatient
Parent: Patient
Id: LtEspbiPatient
* ^url = "http://esveikata.lt/fhir/StructureDefinition/lt-espbi-patient"
* ^status = #draft
* id MS
* id ^short = "Resurso identifikatorius / Logical id of the resource"
* id ^definition = "Resurso unikalus identifikatorius, naudojamas resurso URL adresuose. Kartą priskirta, ši reikšmė niekada nesikeičia."
* identifier MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^definition = "Paciento identifikatorius skirtas identifikuoti pacientą pagal tam tikra unikalų kodą.\r\n\r\nPaciento identifikatoriais gali būti Lietuvos Piliečio Asmens kodas, unikalus paciento ESI numeris arba asmens draudžiamojo asmens identifikacinis kodas iš draudžiamųjų privalomuoju sveikatos draudimo registro."
* identifier contains
    ESI 1..1 and
    others 0..* MS
* identifier[ESI] ^short = "ESI id / Patient EHI No"
* identifier[ESI] ^definition = "Unikalus paciento ESI numeris."
* identifier[ESI] ^example[0].label = "ESI"
* identifier[ESI] ^example[=].valueIdentifier.system = "http://esveikata.lt/Identifier/Patient/ESI"
* identifier[ESI] ^example[=].valueIdentifier.value = "232233"
* identifier[ESI].system 1..
* identifier[ESI].system = "http://esveikata.lt/Identifier/Patient/ESI"
* identifier[ESI].value 1..
* identifier[others] obeys pat-idn-1
* identifier[others] ^short = "Kiti identifikatoriai / Other identifiers"
* identifier[others] ^definition = "Paciento identifikatoriai skirti identifikuoti pacientą pagal tam tikrą unikalų kodą.\r\nIdentifikuojančios sistemos pavadinimas (system):\r\n- http://esveikata.lt/Identifier/PersonalCode. Lietuvos piliečio asmens kodas. Pastaba: jei asmuo turi asmens kodą.\r\n- http://esveikata.lt/Identifier/Patient/ESPBI. ESPBI id.\r\n- http://esveikata.lt/Identifier/Patient/DIK. Asmens draudžiamojo identifikacinis kodas iš draudžiamųjų privalomuoju sveikatos draudimo registro (DIK).\r\n- http://esveikata.lt/Identifier/Patient/SveidraID. Asmens identifikatorius SVEIDRA IS.\r\n- http://esveikata.lt/Identifier/Patient/eFormNumber. Užsienio valstybės piliečio Europos sveikatos draudimo kortelės arba laikinai ją pakeičiančio ES šalies narės piliečio sertifikato ar E formos pažymos nr.\r\n- http://esveikata.lt/Identifier/Patient/ForeignPersonalCode. Užsienio valstybės piliečio asmens kodas arba kitas identifikavimo numeris.\r\n- http://esveikata.lt/Identifier/eDelivery. Asmens E. pristatymo dėžutės duomenys.\r\n- http://esveikata.lt/classifiers/IdentityDocument/SerieNumber. Užsienio valstybės piliečio asmens tapatybę patvirtinančio dokumento serija ir numeris.\r\n"
* identifier[others] ^example[0].label = "Personal code"
* identifier[others] ^example[=].valueIdentifier.system = "http://esveikata.lt/Identifier/PersonalCode"
* identifier[others] ^example[=].valueIdentifier.value = "37512092729"
* identifier[others] ^example[+].label = "ESPBI"
* identifier[others] ^example[=].valueIdentifier.system = "http://esveikata.lt/Identifier/Patient/ESPBI"
* identifier[others] ^example[=].valueIdentifier.value = "454455"
* identifier[others] ^example[+].label = "DIK"
* identifier[others] ^example[=].valueIdentifier.system = "http://esveikata.lt/Identifier/Patient/DIK"
* identifier[others] ^example[=].valueIdentifier.value = "232233"
* identifier[others] ^example[+].label = "Sveidra ID"
* identifier[others] ^example[=].valueIdentifier.system = "http://esveikata.lt/Identifier/Patient/SveidraID"
* identifier[others] ^example[=].valueIdentifier.value = "1073765"
* identifier[others] ^example[+].label = "E form number"
* identifier[others] ^example[=].valueIdentifier.system = "http://esveikata.lt/Identifier/Patient/eFormNumber"
* identifier[others] ^example[=].valueIdentifier.value = "ABC123456"
* identifier[others] ^example[+].label = "Foreign personal code"
* identifier[others] ^example[=].valueIdentifier.system = "http://esveikata.lt/Identifier/Patient/ForeignPersonalCode"
* identifier[others] ^example[=].valueIdentifier.value = "987654321"
* identifier[others] ^example[+].label = "e-delivery"
* identifier[others] ^example[=].valueIdentifier.system = "http://esveikata.lt/Identifier/eDelivery"
* identifier[others] ^example[=].valueIdentifier.value = "vardpav123456"
* identifier[others] ^example[+].label = "Serie number"
* identifier[others] ^example[=].valueIdentifier.system = "http://esveikata.lt/classifiers/IdentityDocument/SerieNumber"
* identifier[others] ^example[=].valueIdentifier.value = "ABC123456"
* identifier[others].extension contains $documentCountry named ltExtDocumentCountry 0..1 MS
* identifier[others].extension[ltExtDocumentCountry] ^short = "Užsienio valstybės piliečio asmens tapatybę patvirtinantį dokumentą išdavusios šalies triraidis kodas / Three-letter code of the country that issued the identity document of a foreign citizen"
* identifier[others].extension[ltExtDocumentCountry] ^definition = "Užsienio valstybės piliečio asmens tapatybę patvirtinantį dokumentą išdavusios šalies triraidis kodas."
* identifier[others].extension[ltExtDocumentCountry] ^isModifier = false
* identifier[others].extension[ltExtDocumentRegisteredBy] only $documentRegisteredBy
* identifier[others].extension[ltExtDocumentRegisteredBy] ^sliceName = "ltExtDocumentRegisteredBy"
* identifier[others].extension[ltExtDocumentRegisteredBy] ^short = "Užsienio valstybės piliečio dokumentą užregistravęs specialistas /The practitioner registered insurance document of a foreign citizen"
* identifier[others].extension[ltExtDocumentRegisteredBy] ^definition = "Užsienio valstybės piliečio dokumentą užregistravęs specialistas.\r\n\r\nValidacinė taisyklė:\r\n- Privaloma pateikti, kai system = \"http://esveikata.lt/classifiers/IdentityDocument/SerieNumber\"."
* identifier[others].extension[ltExtDocumentRegisteredBy] ^mustSupport = true
* identifier[others].extension[ltExtDocumentRegisteredBy] ^isModifier = false
* identifier[others].extension[ltExtDocumentRegisteredDate] only $documentRegisteredDate
* identifier[others].extension[ltExtDocumentRegisteredDate] ^sliceName = "ltExtDocumentRegisteredDate"
* identifier[others].extension[ltExtDocumentRegisteredDate] ^short = "Data, kada užregistruotas užsienio valstybės piliečio dokumentas / Date when the foreign citizen's document was registered"
* identifier[others].extension[ltExtDocumentRegisteredDate] ^definition = "Data, kada užregistruotas užsienio valstybės piliečio dokumentas.\r\n\r\nValidacinė taisyklė:\r\n- Privaloma pateikti, kai system = \"http://esveikata.lt/classifiers/IdentityDocument/SerieNumber\"."
* identifier[others].extension[ltExtDocumentRegisteredDate] ^mustSupport = true
* identifier[others].extension[ltExtDocumentRegisteredDate] ^isModifier = false
* identifier[others].type MS
* identifier[others].type ^short = "Užsienio valstybės piliečio asmens tapatybę patvirtinančio dokumento rūšis / Type of identity document of a foreign citizen"
* identifier[others].type ^definition = "Užsienio valstybės piliečio asmens tapatybę patvirtinančio dokumento rūšis, pavyzdžiui, Vairuotojo pažymėjimas, Socialinio draudimo pažymėjimas."
* identifier[others].type.coding 1..1
* identifier[others].type.coding.system 1..
* identifier[others].type.coding.system = "http://esveikata.lt/classifiers/IdentityDocument/Type"
* identifier[others].type.coding.code 1..
* identifier[others].system 1..
* identifier[others].system from $lt-espbi-patient-identifier (extensible)
* identifier[others].value 1..
* name MS
* name ^short = "Paciento vardo/pavardės duomenys / Patient name data"
* name ^definition = "Paciento vardas ir pavardė."
* name.family MS
* name.family ^short = "Paciento pavardė / Patient surname"
* name.family ^definition = "Paciento pavardė."
* name.given MS
* name.given ^short = "Paciento vardas(-ai) / Patient name(-s)"
* name.given ^definition = "Paciento vardas(-ai)."
* telecom MS
* telecom ^short = "Paciento kontaktiniai duomenys / Patient contact details"
* telecom ^definition = "Paciento kontaktiniai duomenys - telefono numeris, elektroninio pašto adresas.\r\n\r\nPagal FHIR R5 turi būti naudojamas reikšmių sąrašas http://hl7.org/fhir/ValueSet/contact-point-system. Galimos reikšmės: phone | fax | email | pager | url | sms | other."
* telecom.system 1..
* telecom.value 1..
* gender MS
* gender ^short = "Paciento lytis / Patient gender"
* gender ^definition = "Paciento lytis.\r\n\r\nPagal FHIR R5 turi būti naudojamas reikšmių sąrašas http://hl7.org/fhir/ValueSet/administrative-gender. Galimos reikšmės: male | female | other | unknown."
* birthDate MS
* birthDate ^short = "Paciento gimimo data / Patient birthday"
* birthDate ^definition = "Paciento gimimo data."
* birthDate.extension[patBirthTime] only PatBirthTime
* birthDate.extension[patBirthTime] ^sliceName = "patBirthTime"
* birthDate.extension[patBirthTime] ^short = "Paciento gimimo data ir laikas / Time of day of birth"
* birthDate.extension[patBirthTime] ^definition = "Paciento gimimo data ir laikas (aktualu naujagimių ir negyvagimių atveju)."
* birthDate.extension[patBirthTime] ^isModifier = false
* birthDate.extension[patBirthTime].value[x] ^example[0].label = "example"
* birthDate.extension[patBirthTime].value[x] ^example[=].valueDateTime = "2025-09-17T14:13:54.031+00:00"
* deceased[x] only dateTime
* deceased[x] MS
* deceased[x] ^short = "Paciento mirties data / Date of death"
* deceased[x] ^definition = "Paciento mirties data. Privalomas, jei pacientas mirė."
* address only $lt-espbi-address
* address MS
* address ^short = "Paciento deklaruotos/gyvenamosios vietos adresas / Declared/residential address of patient"
* address ^definition = "Paciento deklaruotos/gyvenamosios vietos adreso duomenys."
* address.extension[ltEspbiExtResourceAddressIdentifier] ^sliceName = "ltEspbiExtResourceAddressIdentifier"
* address.extension[ltEspbiExtResourceAddressIdentifier] ^definition = "Lietuvoje gyvenančio paciento deklaruotos/gyvenamosios vietos adreso duomenys. Deklaruotas gyvenamosios vietos adresas gaunamas iš LR gyventojų registro. Gyvenamosios vietos adresas įvedamas bei tikrinamas ar egzistuoja Adresų registre.\r\n\r\nNaudojama tik Lietuvos valstybės pacientams. Užsienio piliečiams šis laukas nenaudojamas (naudojamas address laukas)."
* address.extension[ltEspbiExtResourceAddressIdentifier].extension MS
* address.extension[ltEspbiExtResourceAddressIdentifier].extension[type] ^sliceName = "type"
* address.extension[ltEspbiExtResourceAddressIdentifier].extension[type] ^mustSupport = true
* address.extension[ltEspbiExtResourceAddressIdentifier].extension[addressID] ^sliceName = "addressID"
* address.extension[ltEspbiExtResourceAddressIdentifier].extension[addressID] ^mustSupport = true
* address.extension[ltEspbiExtResourceAddressIdentifier].extension[municipalityID] ^sliceName = "municipalityID"
* address.extension[ltEspbiExtResourceAddressIdentifier].extension[municipalityID] ^mustSupport = true
* address.extension[ltEspbiExtResourceAddressIdentifier].extension[cityID] ^sliceName = "cityID"
* address.extension[ltEspbiExtResourceAddressIdentifier].extension[cityID] ^mustSupport = true
* address.extension[ltEspbiExtResourceAddressIdentifier].extension[streetID] ^sliceName = "streetID"
* address.extension[ltEspbiExtResourceAddressIdentifier].extension[streetID] ^mustSupport = true
* address.extension[ltEspbiExtResourceAddressIdentifier].extension[house] ^sliceName = "house"
* address.extension[ltEspbiExtResourceAddressIdentifier].extension[house] ^mustSupport = true
* address.extension[ltEspbiExtResourceAddressIdentifier].extension[hull] ^sliceName = "hull"
* address.extension[ltEspbiExtResourceAddressIdentifier].extension[hull] ^mustSupport = true
* address.extension[ltEspbiExtResourceAddressIdentifier].extension[flat] ^sliceName = "flat"
* address.extension[ltEspbiExtResourceAddressIdentifier].extension[flat] ^mustSupport = true
* maritalStatus MS
* maritalStatus ^short = "Paciento šeimyninė padėtis / Patient marital status"
* maritalStatus ^definition = "Paciento šeimyninė padėtis.\r\n\r\nPagal FHIR R5 naudojamas reikšmių sąrašas http://hl7.org/fhir/ValueSet/marital-status."
* maritalStatus.coding 1..1
* maritalStatus.coding.system 1..
* maritalStatus.coding.system ^definition = "Klasifikatorius / Classifier: http://hl7.org/fhir/ValueSet/marital-status."
* maritalStatus.coding.code 1..
* maritalStatus.coding.display MS
* multipleBirth[x] only integer
* multipleBirth[x] MS
* multipleBirth[x] ^short = "Daugiavaisio nėštumo indikatorius / Multiple pregnancy indicator"
* multipleBirth[x] ^definition = "Daugiavaisio nėštumo indikatorius. Nurodoma ar pacientas yra iš daugiavaisio nėštumo bei jo gimimo eiliškumas."
* photo ..1 MS
* photo ^short = "Paciento veido atvaizdas / Patient photo"
* photo ^definition = "Paciento nuotrauka."
* photo.contentType 1..
* photo.data MS
* photo.url MS
* photo.title MS
* generalPractitioner only Reference($lt-espbi-practitioner-role or $lt-espbi-organization)
* generalPractitioner MS
* generalPractitioner ^slicing.discriminator.type = #value
* generalPractitioner ^slicing.discriminator.path = "extension('http://esveikata.lt/Profile/ltnhr-patient/careProviderActivityType').value.coding.code"
* generalPractitioner ^slicing.rules = #open
* generalPractitioner ^short = "Nuoroda į paciento pasirinkto sveikatos priežiūros specialisto/įstaigos resursą / Reference to family doctor/ healthcare facility resource"
* generalPractitioner ^definition = "Nuoroda į paciento pasirinkto sveikatos priežiūros specialisto resursą (skritas Lietuvos piliečiams). Taip pat nuoroda į įstaiga, prie kurios pacientas prisirašęs."
* generalPractitioner contains
    familyDoctor 0..* MS and
    registeredOrganization 0..* MS and
    mentalHealthCenter 0..* MS
* generalPractitioner[familyDoctor] only Reference($lt-espbi-practitioner-role)
* generalPractitioner[familyDoctor] ^short = "Nuoroda į paciento pasirinkto sveikatos priežiūros specialisto resursą / Reference to family doctor resource"
* generalPractitioner[familyDoctor] ^definition = "Paciento pasirinktas sveikatos priežiūros specialistas. "
* generalPractitioner[familyDoctor].extension 1..
* generalPractitioner[familyDoctor].extension contains $careProviderActivityType named ltExtCareProviderActivityType 1..1
* generalPractitioner[familyDoctor].extension[ltExtCareProviderActivityType] ^isModifier = false
* generalPractitioner[familyDoctor].reference 1..
* generalPractitioner[registeredOrganization] only Reference($lt-espbi-organization)
* generalPractitioner[registeredOrganization] ^short = "Asmens sveikatos priežiūros įstaiga, prie kurios pacientas yra prisirašęs / Patient's nominated care provider (organization)"
* generalPractitioner[registeredOrganization] ^definition = "Asmens sveikatos priežiūros įstaiga, prie kurios pacientas yra prisirašęs."
* generalPractitioner[registeredOrganization].extension 2..
* generalPractitioner[registeredOrganization].extension[ltExtRegisteredPeriod] only $registeredPeriod
* generalPractitioner[registeredOrganization].extension[ltExtRegisteredPeriod] ^sliceName = "ltExtRegisteredPeriod"
* generalPractitioner[registeredOrganization].extension[ltExtRegisteredPeriod] ^isModifier = false
* generalPractitioner[registeredOrganization].extension contains $careProviderActivityType named ltExtCareProviderActivityType 1..1
* generalPractitioner[registeredOrganization].extension[ltExtCareProviderActivityType] ^isModifier = false
* generalPractitioner[registeredOrganization].extension[ltExtFamilyDoctor] only $familyDoctor
* generalPractitioner[registeredOrganization].extension[ltExtFamilyDoctor] ^sliceName = "ltExtFamilyDoctor"
* generalPractitioner[registeredOrganization].extension[ltExtFamilyDoctor] ^mustSupport = true
* generalPractitioner[registeredOrganization].extension[ltExtFamilyDoctor] ^isModifier = false
* generalPractitioner[registeredOrganization].reference 1..
* generalPractitioner[mentalHealthCenter] only Reference($lt-espbi-organization)
* generalPractitioner[mentalHealthCenter] ^short = "Psichikos sveikatos centras, prie kurios pacientas yra prisirašęs / Patient's nominated care provider (organization)"
* generalPractitioner[mentalHealthCenter] ^definition = "Psichikos sveikatos centras, prie kurios pacientas yra prisirašęs."
* generalPractitioner[mentalHealthCenter].extension 2..
* generalPractitioner[mentalHealthCenter].extension[ltExtRegisteredPeriod] only $registeredPeriod
* generalPractitioner[mentalHealthCenter].extension[ltExtRegisteredPeriod] ^sliceName = "ltExtRegisteredPeriod"
* generalPractitioner[mentalHealthCenter].extension[ltExtRegisteredPeriod] ^isModifier = false
* generalPractitioner[mentalHealthCenter].extension contains $careProviderActivityType named ltExtCareProviderActivityType 1..1
* generalPractitioner[mentalHealthCenter].extension[ltExtCareProviderActivityType] ^isModifier = false
* generalPractitioner[mentalHealthCenter].reference 1..
* link ..1 MS
* link ^short = "Nuorodą į tikrąjį pacientą / Reference to the identified patient"
* link ^definition = "Nuoroda į kitą Patient resursą naudojama nurodyti tikrąjį pacientą. Nuorodą yra naudojama tuo atvejų, jeigu esamas Patient resursas buvo sukurtas laikinai SPĮ sistemoje, kai pagal paciento duomenis nebuvo galimybės gauti Patient resurso iš ESPBI IS (neatpažinto paciento atvejis)."
* link.other only Reference(LtEspbiPatient)
* link.other ^short = "Nurodą į tikrąjį pacientą, kurio duomenis turi būti naudojami vietoje šio neatpažinto paciento/ Reference to the identified patient which data should be used instead of this unknown patient"
* link.other ^definition = "Nuoroda į tikrąjį pacientą, kurio duomenis turi būti naudojami vietoje šio neatpažinto paciento."
* link.other.reference 1..
* link.type ^short = "Nurodos tipas (replace pagal nutylėjimą) / Link type (replace by default)"
* link.type ^definition = "Nuorodos tipas.\r\n\r\nGalimos reikšmės:\r\n- **replaces** : Nurodo, kad nuorodoje nurodomo paciento duomenis turi būti naudojami vietoj esamo paciento duomenų.\r\n\r\nPagal FHIR R5 turi būti naudojamas reikšmių sąrašas http://hl7.org/fhir/ValueSet/link-type. Galimos reikšmės: replaced-by | replaces | refer | seealso.\r\n\r\nReikšmė pagal nutylėjimą \"replaces\"."

Invariant: pat-idn-1
Description: "When identifier.system is IdentityDocument/SerieNumber, both ltExtDocumentRegisteredBy and ltExtDocumentRegisteredDate extensions are required."
* severity = #error
* expression = "(system = 'http://esveikata.lt/classifiers/IdentityDocument/SerieNumber') implies (extension.where(url = 'http://esveikata.lt/Profile/ltnhr-patient/documentRegisteredBy').exists() and extension.where(url = 'http://esveikata.lt/Profile/ltnhr-patient/documentRegisteredDate').exists())"