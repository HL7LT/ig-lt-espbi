Extension: LtEspbiExtEmergencyRoom
Id: LtEspbiExtEmergencyRoom
Description: "Skubiosios medicinos pagalbos skyrius / Emergency room"
Context: ServiceRequest
* ^url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-emergency-room"
* ^status = #draft
* . ..1
* . ^short = "Skubiosios medicinos pagalbos skyrius / Emergency room"
* . ^definition = "Skubiosios medicinos pagalbos skyrius.\r\n\r\nPožymis, ar pacientas yra siunčiamas skubiajai medicinos pagalbai (priėmimo skyriuje) suteikti. \n\nPrivaloma pažymėti tuo atveju, jei \"Sveikatos priežiūros specialisto, kuriam siunčiama, profesinė kvalifikacija\" lauke nenurodyta  sveikatos priežiūros specialisto, kuriam siunčiama, profesinė kvalifikacija ir pacientui turi būti suteikta pagalba skubiosios medicinos pagalbos skyriuje."
* url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-emergency-room" (exactly)
* value[x] 1..
* value[x] only boolean
* value[x] obeys ext-1

Invariant: ext-1
Description: "If code is \"Kita\", CodeableConcept.text must be present and not empty."
* severity = #error
* expression = "coding.where(system = 'http://esveikata.lt/fhir/CodeSystem/lt-espbi-cs-service-request-indication' and code = 'Kita').exists() implies (text.exists() and text.trim() != '')"