Alias: $lt-espbi-condition = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-condition
Alias: $lt-espbi-patient = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-patient
Alias: $lt-espbi-organization = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-organization
Alias: $lt-espbi-service-request = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-service-request
Alias: $lt-espbi-practitioner-role = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-practitioner-role

Profile: LtEspbiEpisodeOfCare
Parent: EpisodeOfCare
Id: LtEspbiEpisodeOfCare
* ^url = "http://esveikata.lt/fhir/StructureDefinition/lt-espbi-episode-of-care"
* ^status = #draft
* id MS
* id ^short = "Resurso identifikatorius / Logical id of the resource"
* id ^definition = "Resurso unikalus identifikatorius, naudojamas resurso URL adresuose. Kartą priskirta, ši reikšmė niekada nesikeičia."
* implicitRules ..0
* language ..0
* text ..0
* contained ..0
* extension ..0
* modifierExtension ..0
* identifier ..0
* status MS
* status ^short = "Gydymo epizodo būsena / Status of episode of care"
* status ^definition = "FHIR R5 naudojamas reikšmių sąrašas http://hl7.org/fhir/ValueSet/episode-of-care-status. Galimos reikšmės: planned | waitlist | active | onhold | finished | cancelled | entered-in-error. "
* status ^example.label = "example"
* status ^example.valueCode = #active
* statusHistory ..0
* type ..1 MS
* type ^short = "Gydymo epizodo tipas / A classification of the type of episode of care"
* type ^definition = "FHIR R5 siūlomas naudoti reikšmių sąrašas http://hl7.org/fhir/ValueSet/episodeofcare-type.\r\nGalimos reikšmės: Home and Community Care (Priežiūra namuose ir bendruomenėje), Post Acute Care (Priežiūra po ūmios būklės), Post coordinated diabetes program (Po koordinuotos diabeto programos), Drug and alcohol rehabilitation (Priklausomybės nuo narkotikų ir alkoholio reabilitacija), Community-based aged care (Bendruomeninė pagyvenusių asmenų priežiūra)."
* type.id ..0
* type.extension ..0
* type.coding.id ..0
* type.coding.extension ..0
* type.coding.version ..0
* type.coding.userSelected ..0
* reason ..0
* diagnosis 1.. MS
* diagnosis ^short = "Diagnozės, dėl kurių registruojamas gydymo epizodas / The list of medical conditions that were addressed during the episode of care"
* diagnosis.id ..0
* diagnosis.extension ..0
* diagnosis.modifierExtension ..0
* diagnosis.condition 1..
* diagnosis.condition.id ..0
* diagnosis.condition.extension ..0
* diagnosis.condition.concept ..0
* diagnosis.condition.reference 1..
* diagnosis.condition.reference only Reference($lt-espbi-condition)
* diagnosis.condition.reference.id ..0
* diagnosis.condition.reference.extension ..0
* diagnosis.condition.reference.reference 1..
* diagnosis.condition.reference.type ..0
* diagnosis.condition.reference.identifier ..0
* diagnosis.condition.reference.display ..0
* diagnosis.use ..0
* patient only Reference($lt-espbi-patient)
* patient MS
* patient ^short = "Pacientas, kuriam registruojamas gydymo epizodas /The patient who is the focus of this episode of care"
* patient ^example.label = "example"
* patient ^example.valueReference.reference = "Patient/123456"
* patient.id ..0
* patient.extension ..0
* patient.reference 1..
* patient.type ..0
* patient.identifier ..0
* patient.display ..0
* managingOrganization only Reference($lt-espbi-organization)
* managingOrganization MS
* managingOrganization ^short = "Organizacija, atsakinga už gydymo epizodo vykdymą / Organization that assumes responsibility for care coordination"
* managingOrganization ^example.label = "example"
* managingOrganization ^example.valueReference.reference = "Organization/1000015882"
* managingOrganization.id ..0
* managingOrganization.extension ..0
* managingOrganization.reference 1..
* managingOrganization.type ..0
* managingOrganization.identifier ..0
* managingOrganization.display ..0
* period MS
* period ^short = "Laikotarpis, kurio metu gydymo epizodas yra ar buvo teikiamas / Interval during responsibility is assumed"
* period ^example.label = "example"
* period ^example.valuePeriod.start = "2025-03-12T09:00:00+00:00"
* period.id ..0
* period.extension ..0
* period.start 1..
* period.end MS
* referralRequest only Reference($lt-espbi-service-request)
* referralRequest MS
* referralRequest ^short = "Skyrimo (siuntimo), nuo kurio pradedamas gydymo epizodas, duomenys / Originating Referral Request(s)"
* referralRequest.id ..0
* referralRequest.extension ..0
* referralRequest.reference 1..
* referralRequest.type ..0
* referralRequest.identifier ..0
* referralRequest.display ..0
* careManager only Reference($lt-espbi-practitioner-role)
* careManager MS
* careManager ^short = "Paciento gydymo epizodo koordinatorius / Care coordinator for the patient"
* careManager ^definition = "Nurodomas už paciento gydymo epizodą atsakingas sveikatos priežiūros specialistas."
* careManager.id ..0
* careManager.extension ..0
* careManager.reference 1..
* careManager.type ..0
* careManager.identifier ..0
* careManager.display ..0
* careTeam ..0
* account ..0