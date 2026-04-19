Extension: LtEspbiExtCreationDate
Id: LtEspbiExtCreationDate
Description: "Dokumento sukūrimo data ir laikas / Document creation date and time"
Context: DocumentReference
* ^url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-creation-date"
* ^status = #draft
* . ^short = "Dokumento sukūrimo data ir laikas / Document creation date and time"
* . ^definition = "Dokumento sukūrimo data ir laikas."
* url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-creation-date" (exactly)
* value[x] 1..
* value[x] only dateTime