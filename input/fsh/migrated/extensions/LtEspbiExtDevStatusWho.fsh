Alias: $lt-practitoner = http://esveikata.lt/fhir/StructureDefinition/lt-practitoner

Extension: LtEspbiExtDevStatusWho
Id: LtEspbiExtDevStatusWho
Context: DeviceRequest.status
* ^url = "http://esveikata.lt/Profile/lt-dev-request/statusWho"
* ^status = #draft
* url = "http://esveikata.lt/Profile/lt-dev-request/statusWho" (exactly)
* value[x] 1..
* value[x] only Reference($lt-practitoner)