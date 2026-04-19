Alias: $v3-ActCode = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: $Type = http://esveikata.lt/classifiers/Encounter/Type
Alias: $ServiceType = http://esveikata.lt/classifiers/Encounter/ServiceType
Alias: $v3-ParticipationType = http://terminology.hl7.org/CodeSystem/v3-ParticipationType
Alias: $f025alk-discharge-type = http://esveikata.lt/classifiers/f025alk-discharge-type
Alias: $lt-espbi-encounter = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-encounter
Alias: $lt-espbi-observation-11535-2 = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-observation-11535-2

Profile: LtEspbiEncounterE003a
Parent: $lt-espbi-encounter
Id: LtEspbiEncounterE003a
Description: "Atvykimo duomenys / Patient Reception Data (E003/a)"
* ^status = #draft
* implicitRules ..0
* language ..0
* text ..0
* contained ..0
* extension[ltExtEmiNumber] ^sliceName = "ltExtEmiNumber"
* extension[ltExtEmiNumber].id ..0
* extension[ltExtEmiNumber].value[x] ^example.label = "example"
* extension[ltExtEmiNumber].value[x] ^example.valueString = "RS000003"
* extension[ltExtClosedBySystem] ^sliceName = "ltExtClosedBySystem"
* extension[ltExtClosedBySystem].value[x] ^example.label = "example"
* extension[ltExtClosedBySystem].value[x] ^example.valueBoolean = true
* extension contains ltExtPatientAgreementDocument 0..0
* modifierExtension ..0
* identifier.id ..0
* identifier.extension ..0
* identifier.use ..0
* identifier.type ..0
* identifier.period ..0
* identifier.assigner ..0
* status ^example.label = "example"
* status ^example.valueCode = #in-progress
* class ^example.label = "example"
* class ^example.valueCodeableConcept = $v3-ActCode#IMP "inpatient encounter"
* class.id ..0
* class.extension ..0
* class.coding.id ..0
* class.coding.extension ..0
* class.coding.version ..0
* class.coding.userSelected ..0
* priority ..0
* type 1..1
* type ^example.label = "example"
* type ^example.valueCodeableConcept = $Type#by_order
* type.id ..0
* type.extension ..0
* type.coding.id ..0
* type.coding.extension ..0
* type.coding.version ..0
* type.coding.userSelected ..0
* serviceType ^example.label = "example"
* serviceType ^example.valueCodeableReference.concept = $ServiceType#other "Kita"
* serviceType ^example.valueCodeableReference.concept.text = "Kito hospitalizavimo tipo įvardinimas"
* serviceType.id ..0
* serviceType.extension ..0
* serviceType.concept.id ..0
* serviceType.concept.extension ..0
* serviceType.concept.coding.id ..0
* serviceType.concept.coding.extension ..0
* serviceType.concept.coding.version ..0
* serviceType.concept.coding.userSelected ..0
* serviceType.reference ..0
* subject ^example.label = "example"
* subject ^example.valueReference.reference = "Patient/1000017309"
* subject.id ..0
* subject.extension ..0
* subject.type ..0
* subject.identifier ..0
* subject.display ..0
* subjectStatus ..0
* episodeOfCare ^example.label = "example"
* episodeOfCare ^example.valueReference.reference = "EpisodeOfCare/123"
* episodeOfCare.id ..0
* episodeOfCare.extension ..0
* episodeOfCare.type ..0
* episodeOfCare.identifier ..0
* episodeOfCare.display ..0
* basedOn ^example.label = "example"
* basedOn ^example.valueReference.reference = "ServiceRequest/0000789501"
* basedOn.id ..0
* basedOn.extension ..0
* basedOn.type ..0
* basedOn.identifier ..0
* basedOn.display ..0
* careTeam ..0
* partOf ..0
* serviceProvider ^example.label = "example"
* serviceProvider ^example.valueReference.reference = "Organization/1000015882"
* serviceProvider.id ..0
* serviceProvider.extension ..0
* serviceProvider.type ..0
* serviceProvider.identifier ..0
* serviceProvider.display ..0
* participant.extension ..0
* participant.modifierExtension ..0
* participant[admitterParticipant] ^sliceName = "admitterParticipant"
* participant[admitterParticipant].id ..0
* participant[admitterParticipant].extension ..0
* participant[admitterParticipant].modifierExtension ..0
* participant[admitterParticipant].type ^example.label = "example"
* participant[admitterParticipant].type ^example.valueCodeableConcept = $v3-ParticipationType#ADM
* participant[admitterParticipant].type.id ..0
* participant[admitterParticipant].type.extension ..0
* participant[admitterParticipant].type.coding.id ..0
* participant[admitterParticipant].type.coding.extension ..0
* participant[admitterParticipant].type.coding.version ..0
* participant[admitterParticipant].type.coding.userSelected ..0
* participant[admitterParticipant].period ..0
* participant[admitterParticipant].actor ^example.label = "example"
* participant[admitterParticipant].actor ^example.valueReference.reference = "PractitionerRole/1000017313"
* participant[admitterParticipant].actor.id ..0
* participant[admitterParticipant].actor.extension ..0
* participant[admitterParticipant].actor.type ..0
* participant[admitterParticipant].actor.identifier ..0
* participant[admitterParticipant].actor.display ..0
* participant[attenderParticipant] ^sliceName = "attenderParticipant"
* participant[attenderParticipant].id ..0
* participant[attenderParticipant].extension ..0
* participant[attenderParticipant].modifierExtension ..0
* participant[attenderParticipant].type ^example.label = "example"
* participant[attenderParticipant].type ^example.valueCodeableConcept = $v3-ParticipationType#ATND
* participant[attenderParticipant].type.id ..0
* participant[attenderParticipant].type.extension ..0
* participant[attenderParticipant].type.coding.id ..0
* participant[attenderParticipant].type.coding.extension ..0
* participant[attenderParticipant].type.coding.version ..0
* participant[attenderParticipant].type.coding.userSelected ..0
* participant[attenderParticipant].type.text ..0
* participant[attenderParticipant].period ..0
* participant[attenderParticipant].actor ^example.label = "example"
* participant[attenderParticipant].actor ^example.valueReference.reference = "PractitionerRole/1000015885"
* participant[attenderParticipant].actor.id ..0
* participant[attenderParticipant].actor.extension ..0
* participant[attenderParticipant].actor.type ..0
* participant[attenderParticipant].actor.identifier ..0
* participant[attenderParticipant].actor.display ..0
* appointment ..0
* virtualService ..0
* actualPeriod ^example.label = "example"
* actualPeriod ^example.valuePeriod.start = "2024-10-30T07:12:40.031+00:00"
* actualPeriod ^example.valuePeriod.end = "2024-10-31T07:12:40.031+00:00"
* actualPeriod.id ..0
* actualPeriod.extension ..0
* plannedStartDate ..0
* plannedEndDate ..0
* length ..0
* reason ..0
* diagnosis.id ..0
* diagnosis.extension ..0
* diagnosis.modifierExtension ..0
* diagnosis.condition ^example.label = "example"
* diagnosis.condition ^example.valueCodeableReference.reference.reference = "Condition/1112230200"
* diagnosis.condition.id ..0
* diagnosis.condition.extension ..0
* diagnosis.condition.concept ..0
* diagnosis.condition.reference.id ..0
* diagnosis.condition.reference.extension ..0
* diagnosis.condition.reference.type ..0
* diagnosis.condition.reference.identifier ..0
* diagnosis.condition.reference.display ..0
* diagnosis.use ..0
* account ..0
* dietPreference ..0
* specialArrangement ..0
* specialCourtesy ..0
* admission.id ..0
* admission.extension[ltExtAdmissionDischargeDiagnosis] ^sliceName = "ltExtAdmissionDischargeDiagnosis"
* admission.extension[ltExtAdmissionDischargeDiagnosis].id ..0
* admission.extension[ltExtAdmissionDischargeDiagnosis].value[x] only Reference($lt-espbi-observation-11535-2)
* admission.extension[ltExtAdmissionDischargeDiagnosis].value[x] ^example.label = "example"
* admission.extension[ltExtAdmissionDischargeDiagnosis].value[x] ^example.valueReference.reference = "Observation/021004065"
* admission.extension[ltExtAdmissionDischargeDiagnosis].value[x].id ..0
* admission.extension[ltExtAdmissionDischargeDiagnosis].value[x].extension ..0
* admission.extension[ltExtAdmissionDischargeDiagnosis].value[x].reference 1..
* admission.extension[ltExtAdmissionDischargeDiagnosis].value[x].type ..0
* admission.extension[ltExtAdmissionDischargeDiagnosis].value[x].identifier ..0
* admission.extension[ltExtAdmissionDischargeDiagnosis].value[x].display ..0
* admission.extension[ltExtAdmissionDepartmentCode] ^sliceName = "ltExtAdmissionDepartmentCode"
* admission.extension[ltExtAdmissionDepartmentCode].id ..0
* admission.extension[ltExtAdmissionDepartmentCode].value[x] ^example.label = "example"
* admission.extension[ltExtAdmissionDepartmentCode].value[x] ^example.valueString = "some_department_code"
* admission.extension[ltExtAdmissionLocationBedDays] ^sliceName = "ltExtAdmissionLocationBedDays"
* admission.extension[ltExtAdmissionLocationBedDays].id ..0
* admission.extension[ltExtAdmissionLocationBedDays].value[x] ^example.label = "example"
* admission.extension[ltExtAdmissionLocationBedDays].value[x] ^example.valueInteger = 3
* admission.modifierExtension ..0
* admission.preAdmissionIdentifier ..0
* admission.origin ^definition = "Informacija apie GMP įstaigą (GMP įstaigos pavadinimas ir GMP įstaigos SVEIDRA ID)."
* admission.origin ^example.label = "example"
* admission.origin ^example.valueReference.reference = "Organization/1000015891"
* admission.origin.id ..0
* admission.origin.extension ..0
* admission.origin.type ..0
* admission.origin.identifier ..0
* admission.origin.display ..0
* admission.admitSource ..0
* admission.reAdmission ..0
* admission.destination ^example.label = "example"
* admission.destination ^example.valueReference.reference = "Organization/2000017505"
* admission.destination.id ..0
* admission.destination.extension ..0
* admission.destination.type ..0
* admission.destination.identifier ..0
* admission.destination.display ..0
* admission.dischargeDisposition 1..
* admission.dischargeDisposition ^example.label = "example"
* admission.dischargeDisposition ^example.valueCodeableConcept = $f025alk-discharge-type#1 "Perkėlimas į kitą ligoninę dėl aktyviojo stacionarinio gydymo"
* admission.dischargeDisposition.id ..0
* admission.dischargeDisposition.extension ..0
* admission.dischargeDisposition.coding.id ..0
* admission.dischargeDisposition.coding.extension ..0
* admission.dischargeDisposition.coding.version ..0
* admission.dischargeDisposition.coding.userSelected ..0
* admission.dischargeDisposition.text ..0
* location.id ..0
* location.extension[ltExtAdmissionLocationBedDays] ^sliceName = "ltExtAdmissionLocationBedDays"
* location.extension[ltExtAdmissionLocationBedDays].id ..0
* location.extension[ltExtAdmissionLocationBedDays].value[x] ^example.label = "example"
* location.extension[ltExtAdmissionLocationBedDays].value[x] ^example.valueInteger = 3
* location.modifierExtension ..0
* location.location ^example.label = "Example"
* location.location ^example.valueReference.reference = "Location/114850"
* location.location.id ..0
* location.location.extension ..0
* location.location.type ..0
* location.location.identifier ..0
* location.location.display ..0
* location.status ..0
* location.form ..0
* location.period ^example.label = "example"
* location.period ^example.valuePeriod.start = "2024-10-30T07:12:40.031+00:00"
* location.period ^example.valuePeriod.end = "2024-10-31T07:12:40.031+00:00"
* location.period.id ..0
* location.period.extension ..0