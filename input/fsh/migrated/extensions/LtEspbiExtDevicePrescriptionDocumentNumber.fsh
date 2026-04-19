Extension: LtEspbiExtDevicePrescriptionDocumentNumber
Id: LtEspbiExtDevicePrescriptionDocumentNumber
Description: "Recepto, kuriuo skiriami MPP ar medicinos prietaisai numeris (Composition id)."
Context: DeviceDispense.basedOn
* ^url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-device-prescription-document-number"
* ^status = #draft
* . ..1
* . ^short = "Recepto, kuriuo skiriami MPP ar medicinos prietaisai numeris (Composition id)."
* . ^definition = "Recepto, kuriuo skiriami MPP ar medicinos prietaisai numeris (Composition id)."
* url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-device-prescription-document-number" (exactly)
* value[x] 1..
* value[x] only string