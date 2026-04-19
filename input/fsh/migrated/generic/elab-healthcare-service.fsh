Alias: $elab-organization = http://esveikata.lt/fhir/StructureDefinition/elab-organization

Profile: ElabHealthcareService
Parent: HealthcareService
Id: elab-healthcare-service
Description: "Įstaigos atliekamas tyrimas"
* ^version = "0.3.28"
* ^status = #active
* ^date = "2024-12-16"
* ^publisher = "Registrų Centras"
* ^contact.name = "Registrų Centras"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "https://www.registrucentras.lt/"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "esveikata@registrucentras.lt"
* ^jurisdiction = urn:iso:std:iso:3166#LT "Lithuania"
* extension 1..
* extension contains LMB 1..1 MS
* extension[LMB] only Extension
* extension[LMB] ^short = "LMB papildomos savybės / LMB additional fields"
* extension[LMB] ^type.targetProfile = "http://termx.snomed.lt/fhir/StructureDefinition/elab-ext-healthcareService-labTestExtradata"
* active 1.. MS
* active ^short = "Ar ši paslauga aktyvi / Whether this HealthcareService is in active use"
* providedBy 1.. MS
* providedBy only Reference($elab-organization)
* providedBy ^short = "Paslaugą teikiantis padalinys / Organization that provides this service"
* category 1.. MS
* category ^short = "Paslaugos kategorija / Broad category of service being performed or delivered"
* category.coding ^slicing.discriminator.type = #value
* category.coding ^slicing.discriminator.path = "system"
* category.coding ^slicing.rules = #open
* category.coding contains observation-category 1..1 MS
* category.coding[observation-category].system 1..
* category.coding[observation-category].system = "https://www.hl7.org/fhir/valueset-observation-category.html"
* category.coding[observation-category].code 1..
* type 1.. MS
* type ^short = "Paslaugos tipas / Type of service that may be delivered or performed"
* type.coding ^slicing.discriminator.type = #value
* type.coding ^slicing.discriminator.path = "system"
* type.coding ^slicing.rules = #open
* type.coding contains LMB 1..1 MS
* type.coding[LMB].system 1..
* type.coding[LMB].system = "http://termx.snomed.lt/fhir/CodeSystem/lt-klt-nomenclature"
* type.coding[LMB].code 1..

Mapping: workflow
Id: workflow
Title: "Workflow Pattern"
Source: ElabHealthcareService
Target: "http://hl7.org/fhir/workflow"

Mapping: v2
Id: v2
Title: "HL7 V2 Mapping"
Source: ElabHealthcareService
Target: "http://hl7.org/v2"