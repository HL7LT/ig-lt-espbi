Alias: $lt-espbi-coverage = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-coverage

Extension: LtEspbiExtCoverage
Id: LtEspbiExtCoverage
Context: Encounter
* ^url = "http://esveikata.lt/fhir/Extension/lt-espbi-encounter-coverage"
* ^status = #draft
* . ^short = "Draustumo duomenys / Insurance data"
* . ^definition = "Draustumo duomenys, kai pacientas apdraustas EEE šalyje ar Šveicarijoje, nuoroda į draudimo dokumentą, kai pacientas draustas kitoje šalyje."
* url = "http://esveikata.lt/fhir/Extension/lt-espbi-encounter-coverage" (exactly)
* value[x] 1..
* value[x] only Reference($lt-espbi-coverage)