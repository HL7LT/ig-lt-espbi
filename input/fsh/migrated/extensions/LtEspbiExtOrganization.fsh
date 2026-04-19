Alias: $lt-espbi-organization = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-organization

Extension: LtEspbiExtOrganization
Id: LtEspbiExtOrganization
Description: "Tyrimą pateikianti įstaiga / Organization of imaging study"
Context: ImagingStudy
* ^url = "http://esveikata.lt/Profile/ltnhr-imagingstudy/organization"
* ^status = #draft
* . 1..1
* . ^short = "Tyrimą pateikianti įstaiga / Organization of imaging study"
* . ^definition = "Tyrimą pateikianti įstaiga."
* url = "http://esveikata.lt/Profile/ltnhr-imagingstudy/organization" (exactly)
* value[x] 1..
* value[x] only Reference($lt-espbi-organization)
* value[x].id ..0
* value[x].extension ..0
* value[x].reference 1..
* value[x].type ..0
* value[x].identifier ..0
* value[x].display ..0