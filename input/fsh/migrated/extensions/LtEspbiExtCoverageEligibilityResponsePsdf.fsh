Alias: $lt-espbi-coverage-eligibility-request-psdf = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-coverage-eligibility-request-psdf

Extension: LtEspbiExtCoverageEligibilityResponsePsdf
Id: LtEspbiExtCoverageEligibilityResponsePsdf
Context: Encounter
* ^url = "http://esveikata.lt/fhir/Extension/lt-espbi-encounter-coverage-eligibility-response-psdf"
* ^status = #draft
* . 1..1
* . ^short = "Draustumo (PSDF) būsenos informacija / Insurance (PSDF) status information"
* . ^definition = "Draustumo (PSDF) būsenos informacija - ar pacientas draustas PSDF draudimu, draustumo būsenos tikrinimo laikas ir kt."
* url = "http://esveikata.lt/fhir/Extension/lt-espbi-encounter-coverage-eligibility-response-psdf" (exactly)
* value[x] 1..
* value[x] only Reference($lt-espbi-coverage-eligibility-request-psdf)