Alias: $emiNumber = http://esveikata.lt/Profile/ltnhr-encounter/emiNumber
Alias: $closedBySystem = http://esveikata.lt/Profile/ltnhr-encounter/closedBySystem
Alias: $patientAgreementDocument = http://esveikata.lt/Profile/ltnhr-encounter/patientAgreementDocument
Alias: $lt-espbi-encounter-coverage-eligibility-response-psdf = http://esveikata.lt/fhir/Extension/lt-espbi-encounter-coverage-eligibility-response-psdf
Alias: $lt-espbi-encounter-coverage = http://esveikata.lt/fhir/Extension/lt-espbi-encounter-coverage
Alias: $lt-espbi-patient = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-patient
Alias: $lt-espbi-episode-of-care = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-episode-of-care
Alias: $lt-espbi-service-request = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-service-request
Alias: $lt-espbi-organization = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-organization
Alias: $lt-espbi-practitioner-role = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-practitioner-role
Alias: $lt-espbi-condition = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-condition
Alias: $admission.dischargeDiagnosis = http://esveikata.lt/Profile/ltnhr-encounter/admission.dischargeDiagnosis
Alias: $admission.departmentCode = http://esveikata.lt/Profile/ltnhr-encounter/admission.departmentCode
Alias: $admission-location.bedDays = http://esveikata.lt/Profile/ltnhr-encounter/admission-location.bedDays
Alias: $lt-espbi-location = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-location

Profile: LtEspbiEncounter
Parent: Encounter
Id: LtEspbiEncounter
* ^url = "http://esveikata.lt/fhir/StructureDefinition/lt-espbi-encounter"
* ^status = #draft
* id MS
* id ^short = "Resurso identifikatorius / Logical id of the resource"
* id ^definition = "Resurso unikalus identifikatorius, naudojamas resurso URL adresuose. Kartą priskirta, ši reikšmė niekada nesikeičia."
* meta MS
* extension 2.. MS
* extension contains
    $emiNumber named ltExtEmiNumber 0..* and
    $closedBySystem named ltExtClosedBySystem 0..* MS and
    $patientAgreementDocument named ltExtPatientAgreementDocument 0..* MS and
    $lt-espbi-encounter-coverage-eligibility-response-psdf named ltEspbiExtCoverageEligibilityResponsePsdf 0..* and
    $lt-espbi-encounter-coverage named ltEspbiExtCoverage 0..*
* extension[ltExtEmiNumber] ^definition = "Ligos istorijos nr. (stacionare) arba asmens sveikatos istorijos nr. (poliklinikoje). SPĮ pacientui suteiktas EMI numeris, kuris yra unikalus SPĮ ribose."
* identifier MS
* identifier ^definition = "Dokumento antraštės identifikatorius kompozicijoje."
* identifier.system 1..
* identifier.value 1..
* status MS
* status ^short = "Registruoto atvykimo būsena / Current state of the encounter"
* status ^definition = "Registruojamo apsilankymo/atvykimo būsena.\r\nBūsena „cancelled“ neleidžiama, jeigu ESPBI IS yra bent vienas neatšauktas elektroninis dokumentas, kuris yra susietas su šiuo atvykimu.\r\n\r\nPagal FHIR R5 turi būti naudojamas reikšmių sąrašas http://hl7.org/fhir/ValueSet/encounter-status. Galimos reikšmės: planned | in-progress | on-hold | discharged | completed | cancelled | discontinued | entered-in-error | unknown."
* class 1..1 MS
* class ^short = "Atvykimo įvykis / Classification of the encounter"
* class ^definition = "Atvykimo įvykis. Priklauso nuo įstaigos, kurioje apsilankė pacientas, tipo.\r\n\r\nRedaguojant atvykimo duomenis įvykį leidžiama keisti tik tuo atveju, jeigu nėra pateikta su apsilankymu susietų E025 arba E003 medicininių dokumentų.\r\n\r\nPagal FHIR R5 turi būti naudojamas reikšmių sąrašas http://terminology.hl7.org/ValueSet/encounter-class. Galimos reikšmės: inpatient encounter | ambulatory | observation encounter | emergency | virtual | home health."
* class ^binding.strength = #extensible
* class.coding 1..1
* class.coding.system 1..
* class.coding.code 1..
* type MS
* type ^short = "Atvykimo tipas / Specific type of encounter"
* type ^definition = "Apsilankymo/atvykimo tipas.\r\n\r\nGalimos reikšmės nurodytos klasifikatoriuje encounter-type."
* type.coding 1..1
* type.coding.system 1..
* type.coding.system = "http://esveikata.lt/classifiers/Encounter/Type"
* type.coding.code 1..
* type.coding.display MS
* serviceType 1..1 MS
* serviceType ^short = "Hospitalizavimo/Pagalbos tipas / Service Type"
* serviceType ^definition = "Suteiktos pagalbos tipas (būtinoji, planinė ar kita pagalba).\r\n\r\nGalimos reikšmės nurodytos klasifikatoriuje encounter-service-type."
* serviceType.concept 1..
* serviceType.concept.coding 1..1
* serviceType.concept.coding ^definition = "Nuorodą į pagalbos tipo kodo struktūrą (klasifikatoriaus pavadinimas ir kodas)."
* serviceType.concept.coding.system 1..
* serviceType.concept.coding.system = "http://esveikata.lt/classifiers/Encounter/ServiceType"
* serviceType.concept.coding.system ^definition = "Unikalus klasifikatoriaus pavadinimas (URI)."
* serviceType.concept.coding.code 1..
* serviceType.concept.coding.code ^definition = "Reikšmė iš klasifikatoriaus.\r\n\r\nValues: \"emergency_assistance\" : Būtinoji pagalba | \"planned\" : Planinė pagalba | \"other\" : Kita."
* serviceType.concept.coding.display 1..
* serviceType.concept.coding.display ^definition = "Tekstinė klasifikatoriaus reikšmės reprezentacija. Skirta žmogui lengviau perskaityti ir suprasti klasifikatoriaus reikšmę."
* subject 1.. MS
* subject only Reference($lt-espbi-patient)
* subject ^short = "Paciento, kuriam registruotas atvykimas, duomenys / The patient present at the encounter"
* subject ^definition = "Pacientas, kuriam registruotas atvykimas/apsilankymas."
* subject.reference 1..
* episodeOfCare only Reference($lt-espbi-episode-of-care)
* episodeOfCare MS
* episodeOfCare ^short = "Gydymo epizodas"
* episodeOfCare.reference 1..
* basedOn ..1 MS
* basedOn only Reference($lt-espbi-service-request)
* basedOn ^short = "Nuoroda į siuntimą / Reference to ServiceRequest"
* basedOn ^definition = "Nuoroda į skyrimo duomenis (ServiceRequest resursas) jei apsilankymas/atvykimas registruojamas pagal siuntimą.\r\n\r\nSiuntimas yra privalomas jeigu atvykimo įvykyje nurodyta įvykis 24: \"Paslaugų suteikimas pacientui neatvykus į SPĮ\".\r\n\r\nJeigu pasirinktas įvykis 24: \"Paslaugų suteikimas pacientui neatvykus į SPĮ\", privaloma nurodyti vieną iš šių siuntimų dokumentų: E200, E014, ir aktyvios E027-1 pažymos kūrimo užduotys. Jeigu pasirinktas kitas įvykis, galima nurodyti vieną E027 siuntimo dokumentą.\r\n\r\nLeidžiami naudoti šie siuntimų resursai:\r\n- kurių pagrindu sukurti ir yra aktyvūs (būsena Pasirašytas) E027, E200, E014 medicininiai dokumentai;\r\n- kurių pagrindu sukurta aktyvi E027-1 pažymos kūrimo užduotis."
* basedOn.reference 1..
* serviceProvider 1.. MS
* serviceProvider only Reference($lt-espbi-organization)
* serviceProvider ^short = "Informacija apie atvykimą registruojančią sveikatos priežiūros įstaigą / Health care organization registered the encounter"
* serviceProvider ^definition = "Informacija apie atvykimą registruojančią sveikatos priežiūros įstaigą (SPĮ)."
* serviceProvider.reference 1..
* participant MS
* participant ^slicing.discriminator.type = #value
* participant ^slicing.discriminator.path = "type.coding"
* participant ^slicing.rules = #open
* participant ^short = "Informacija apie specialistą, kuris registruoja atvykimą ir specialistą, pas kurį nukreiptas (registruotas) pacientas / Encounter author (Practitioner) and the practitioner responsible for providing the service"
* participant ^definition = "Informacija apie specialistą, kuris registruoja atvykimą ir specialistą, pas kurį nukreiptas (registruotas) pacientas."
* participant contains
    admitterParticipant 1..1 and
    attenderParticipant 0..1 MS
* participant[admitterParticipant] ^short = "Informaciją apie specialistą, kuris registruoja atvykimą / Encounter author (Practitioner)"
* participant[admitterParticipant] ^definition = "Informacija apie specialistą, kuris registruoja atvykimą."
* participant[admitterParticipant].type 1..1
* participant[admitterParticipant].type ^definition = "Specialisto rolė registruotame atvykime.\r\n\r\nReikšmė pagal nutylėjimą \"ADM\"."
* participant[admitterParticipant].type.coding 1..1
* participant[admitterParticipant].type.coding.system 1..
* participant[admitterParticipant].type.coding.code 1..
* participant[admitterParticipant].type.coding.code = #ADM (exactly)
* participant[admitterParticipant].type.coding.display MS
* participant[admitterParticipant].actor 1..
* participant[admitterParticipant].actor only Reference($lt-espbi-practitioner-role)
* participant[admitterParticipant].actor ^definition = "Nuoroda į specialisto duomenis."
* participant[admitterParticipant].actor.reference 1..
* participant[attenderParticipant] ^short = "Informacija apie specialistą, pas kurį nukreiptas (registruotas) pacientas / The practitioner responsible for providing the service"
* participant[attenderParticipant] ^definition = "Informacija apie specialistą pas kurį nukreiptas (registruotas) pacientas."
* participant[attenderParticipant].type 1..1
* participant[attenderParticipant].type ^definition = "Specialisto rolė registruotame atvykime.\r\n\r\nReikšmė pagal nutylėjimą \"ATND\"."
* participant[attenderParticipant].type.coding 1..1
* participant[attenderParticipant].type.coding.system 1..
* participant[attenderParticipant].type.coding.code 1..
* participant[attenderParticipant].type.coding.code = #ATND (exactly)
* participant[attenderParticipant].type.coding.display MS
* participant[attenderParticipant].actor 1..
* participant[attenderParticipant].actor only Reference($lt-espbi-practitioner-role)
* participant[attenderParticipant].actor.reference 1..
* actualPeriod 1.. MS
* actualPeriod ^short = "Atvykimo/Hospitalizavimo data ir laikas / Date and Time of Service of Hospitalization/arrival/visit"
* actualPeriod ^definition = "Atvykimo / Hospitalizavimo periodas."
* actualPeriod.start 1..
* actualPeriod.start ^short = "Atvykimo į SPĮ data ir laikas / Visit Date and Time"
* actualPeriod.start ^definition = "Periodo pradžios data. Patenka į periodą imtinai."
* actualPeriod.end MS
* actualPeriod.end ^short = "Išrašymo data / End Date of Service (Discharge date)"
* actualPeriod.end ^definition = "Periodo pabaigos data. Jeigu datos nėra yra laikoma, kad periodas tęsiasi (nėra pasibaigęs)."
* reason ..1 MS
* reason ^short = "Atvykimo aptarnavimo būdas / Encounter service mode"
* reason ^definition = "Atvykimo aptarnavimo būdas. Turi būti pildomas, jeigu pagal nurodytą atvykimo tipą yra galimų atvykimo aptarnavimo būdo klasifikatoriaus reikšmių.\r\n\r\nGalimos reikšmės nurodytos klasifikatoriuje encounter-reason."
* reason.use 1..1
* reason.use.coding 1..1
* reason.use.coding.system 1..
* reason.use.coding.system = "http://esveikata.lt/classifiers/Encounter/ReasonCode"
* reason.use.coding.code 1..
* reason.use.coding.display MS
* diagnosis MS
* diagnosis ^short = "Informacija apie GMP nurodytą(-as) diagnozę(-es) / EMS brigade diagnosis"
* diagnosis ^definition = "Informacija apie GMP nurodytą diagnozę (diagnozės TLK-10-AM kodas ir pavadinimas)."
* diagnosis.condition 1..1
* diagnosis.condition only CodeableReference($lt-espbi-condition)
* diagnosis.condition.reference 1..
* diagnosis.condition.reference.reference 1..
* admission MS
* admission ^definition = "Paciento hospitalizavimo informacija.\r\nDuomenys apie paciento hospitalizavimą stacionare."
* admission.extension MS
* admission.extension contains
    $admission.dischargeDiagnosis named ltExtAdmissionDischargeDiagnosis 0..* MS and
    $admission.departmentCode named ltExtAdmissionDepartmentCode 0..* MS and
    $admission-location.bedDays named ltExtAdmissionLocationBedDays 0..* MS
* admission.extension[ltExtAdmissionDischargeDiagnosis] ^isModifier = false
* admission.extension[ltExtAdmissionDepartmentCode] ^isModifier = false
* admission.extension[ltExtAdmissionLocationBedDays] ^short = "Lovadienių skaičius / Number of bed-days"
* admission.extension[ltExtAdmissionLocationBedDays] ^isModifier = false
* admission.origin only Reference($lt-espbi-organization)
* admission.origin MS
* admission.origin ^short = "Informacija apie GMP įstaigą / EMS brigade Organization"
* admission.origin ^definition = "Informacija apie GMP įstaigą."
* admission.origin.reference 1..
* admission.destination only Reference($lt-espbi-organization)
* admission.destination MS
* admission.destination ^short = "Organizacijos pavadinimas, jeigu perkelimas į kitą ligoninę dėl aktyviojo stacionarinio gydymo / organization name in case dischardeDisposition is another Health care provider"
* admission.destination ^definition = "Nuoroda į organizaciją (SPĮ), jeigu pacientas išvyko į kitą stacionarą.\r\n\r\nPrivalomas, jei nurodyta, kad Perkėlimas į kitą ligoninę dėl aktyviojo stacionarinio gydymo (laukas \"dischargeDisposition\").\r\n\r\n"
* admission.destination.reference 1..
* admission.dischargeDisposition MS
* admission.dischargeDisposition ^short = "Paciento išvykimo informacija / Patient departure information"
* admission.dischargeDisposition ^definition = "Paciento išvykimo informacija. Kur pacientas išvyko po gydymo (į namus, kitą stacionarą ar mirė).\r\n\r\nGalimos reikšmės nurodytos klasifikatoriuje f025alk-discharge-type."
* admission.dischargeDisposition.coding 1..1
* admission.dischargeDisposition.coding ^definition = "Nuorodą į kodo struktūrą (klasifikatoriaus pavadinimas ir kodas)."
* admission.dischargeDisposition.coding.system 1..
* admission.dischargeDisposition.coding.system = "http://esveikata.lt/classifiers/f025alk-discharge-type"
* admission.dischargeDisposition.coding.system ^definition = " Unikalus klasifikatoriaus pavadinimas (URI)."
* admission.dischargeDisposition.coding.code 1..
* admission.dischargeDisposition.coding.code ^definition = "Reikšmė iš klasifikatoriaus.\r\n\r\nKodas, nurodantis, kur pacientas išvyko po gydymo (į namus, kitą stacionarą ar mirė)."
* admission.dischargeDisposition.coding.display 1..
* admission.dischargeDisposition.coding.display ^definition = "Tekstinė klasifikatoriaus reikšmės reprezentacija. Skirta žmogui lengviau perskaityti ir suprasti klasifikatoriaus reikšmę."
* location MS
* location ^short = "Gydytas skyriuose / Treated in Departments"
* location ^definition = "Skyrių, kuriuose gydytas pacientas, informacija (skyriaus pavadinimas, lovadienių skaičius skyriuje, gydymo stacionare periodas). Informacija nurodoma ir pateikiama E003 dokumente."
* location.extension 1..
* location.extension ^mustSupport = false
* location.extension contains $admission-location.bedDays named ltExtAdmissionLocationBedDays 1..*
* location.extension[ltExtAdmissionLocationBedDays] ^short = "Lovadieniai skyriuje / Bed days during accommodation in specific department"
* location.extension[ltExtAdmissionLocationBedDays] ^definition = "Lovadienių skaičius skyriuje."
* location.extension[ltExtAdmissionLocationBedDays] ^isModifier = false
* location.location only Reference($lt-espbi-location)
* location.location ^short = "Skyrius, kuriame gydytas pacientas / Department where the patient was treated"
* location.location ^definition = "Skyrius, kuriame gydytas pacientas."
* location.location.reference 1..
* location.period 1..
* location.period ^short = "Gydymo stacionare datos (lovadieniai) / Inpatient treatment dates (bed days)"
* location.period ^definition = "Gydymo stacionare periodas (pradžios ir pabaigos data bei laikas)."
* location.period.start 1..
* location.period.start ^short = "Gydymo skyriuje pradžios data / Accommodation in department start date"
* location.period.start ^definition = "Gydymo stacionare periodo pradžios data. Patenka į periodą imtinai."
* location.period.end 1..
* location.period.end ^short = "Gydymo skyriuje pabaigos data / End Date of accommodation in department"
* location.period.end ^definition = "Gydymo stacionare periodo pabaigos data. Patenka į periodą imtinai."