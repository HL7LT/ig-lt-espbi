Alias: $lt-organization = http://esveikata.lt/fhir/StructureDefinition/lt-organization

Extension: LtEspbiExtDevSecurityDepartment
Id: LtEspbiExtDevSecurityDepartment
Context: Meta.security, MedicationRequest.meta.security, DeviceRequest
* ^url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-security-department"
* ^status = #draft
* url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-security-department" (exactly)
* value[x] 1..
* value[x] only Reference($lt-organization)