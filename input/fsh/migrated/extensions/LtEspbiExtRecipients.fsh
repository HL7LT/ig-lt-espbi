Alias: $lt-espbi-organization = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-organization

Extension: LtEspbiExtRecipients
Id: LtEspbiExtRecipients
Context: DocumentReference
* ^url = "http://esveikata.lt/Profile/ltnhr-documentreference/recipients"
* ^status = #draft
* . ^short = "Informacija apie asmens sveikatos priežiūros įstaigą gaunančią dokumentą "
* . ^definition = "Informacija apie asmens sveikatos priežiūros įstaigą gaunančią dokumentą / Organization who is the receiver of the document "
* url = "http://esveikata.lt/Profile/ltnhr-documentreference/recipients" (exactly)
* value[x] 1..
* value[x] only Reference($lt-espbi-organization)