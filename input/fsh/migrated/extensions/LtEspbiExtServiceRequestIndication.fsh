Extension: LtEspbiExtServiceRequestIndication
Id: LtEspbiExtServiceRequestIndication
Description: "Siuntimo požymis / Service request indication"
Context: ServiceRequest
* ^url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-service-request-indication"
* ^status = #draft
* . ..1
* . ^short = "Siuntimo požymis / Service request indication"
* . ^definition = "Siuntimo požymis"
* url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-service-request-indication" (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] obeys ext-6
* value[x].id ..0
* value[x].extension ..0
* value[x].coding 1..1
* value[x].coding.id ..0
* value[x].coding.extension ..0
* value[x].coding.system 1..
* value[x].coding.system = "http://esveikata.lt/fhir/CodeSystem/lt-espbi-cs-service-request-indication"
* value[x].coding.version ..0
* value[x].coding.code 1..
* value[x].coding.display 1..
* value[x].coding.userSelected ..0
* value[x].text ^short = "Siuntimo požymio detalizavimas"
* value[x].text ^definition = "Kai pasirenkama reikšmė \"Kita\", nurodomas siuntimo požymis, neįtrauktas į sąrašą."

Invariant: ext-6
Description: "If code is \"12\" (display - \"Kita\"), CodeableConcept.text must be present and not empty."
* severity = #error
* expression = "coding.where(system = 'http://esveikata.lt/fhir/CodeSystem/lt-espbi-cs-service-request-indication' and code = '12').exists() implies (text.exists() and text.trim() != '')"