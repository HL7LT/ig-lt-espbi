Alias: $lt-espbi-organization = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-organization

Extension: LtEspbiExtAuthorDepartment
Id: LtEspbiExtAuthorDepartment
Description: "Skyrius, kuriame dirba dokumento autorius (specialistas) / Department where specialist works"
Context: Composition
* ^url = "http://esveikata.lt/Profile/ltnhr-composition/authorDepartment"
* ^status = #draft
* . ..1
* . ^short = "Skyrius, kuriame dirba dokumento autorius (specialistas) / Department where specialist works "
* . ^definition = "Skyrius, kuriame dirba dokumento autorius (specialistas)"
* url = "http://esveikata.lt/Profile/ltnhr-composition/authorDepartment" (exactly)
* value[x] 1..
* value[x] only Reference($lt-espbi-organization)
* value[x].id ..0
* value[x].extension ..0
* value[x].reference 1..
* value[x].type ..0
* value[x].identifier ..0
* value[x].display ..0