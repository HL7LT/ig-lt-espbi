Alias: $deviceType = http://esveikata.lt/classifiers/deviceType
Alias: $lt-espbi-device = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-device

Profile: LtEspbiDeviceImplants
Parent: $lt-espbi-device
Id: LtEspbiDeviceImplants
* ^status = #draft
* extension ..0
* modifierExtension ..0
* identifier ..0
* displayName ..0
* definition ..0
* udiCarrier ..0
* status ..0
* availabilityStatus ..0
* biologicalSourceEvent ..0
* manufactureDate ..0
* expirationDate ..0
* lotNumber ^short = "Implanto/medicininės  priemonės ID / Implant/medical device ID"
* lotNumber ^definition = "Implanto / med. priemonės ID."
* lotNumber ^example.label = "example"
* lotNumber ^example.valueString = "MNT2024A1045"
* serialNumber ..0
* name 1..1
* name ^short = "Implanto/naudojamos medicininės priemonės pavadinimas / Name of the implant/medical device used"
* name.extension ..0
* name.modifierExtension ..0
* name.value ^short = "Implanto/naudojamos medicininės priemonės pavadinimas / Name of the implant/medical device used"
* name.value ^definition = "Implanto / naudojamos med. priemonės pavadinimas."
* name.value ^example.label = "example"
* name.value ^example.valueString = "Kelio sąnario endoprotezė"
* name.display ..0
* modelNumber ..0
* partNumber ..0
* category ..0
* type ^short = "Implanto / naudojamos med. priemonės tipas / Type of implant/medical device used"
* type ^definition = "Implanto / naudojamos med. priemonės tipas.\r\n\r\nGalimos reikšmės nurodytos klasifikatoriuje device-type (http://esveikata.lt/classifiers/deviceType)."
* type ^example.label = "example"
* type ^example.valueCodeableConcept = $deviceType#6 "Kiti prietaisai"
* type.extension ..0
* type.coding.extension ..0
* type.coding.system = "http://esveikata.lt/classifiers/deviceType"
* type.coding.version ..0
* type.coding.userSelected ..0
* type.text ..0
* version ..0
* conformsTo ..0
* property ..0
* mode ..0
* cycle ..0
* duration ..0
* owner ..0
* contact ..0
* location ..0
* url ..0
* endpoint ..0
* gateway ..0
* note ..0
* safety ..0
* parent ..0