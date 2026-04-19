Alias: $lt-espbi-practitioner-role = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-practitioner-role

Extension: LtEspbiExtNotifiedSpecialist
Id: LtEspbiExtNotifiedSpecialist
Context: AdverseEvent
* ^url = "http://esveikata.lt/Profile/ltnhr-adverseevent/notifiedSpecialist"
* ^status = #draft
* . ..1
* . ^short = "Specialisto informavimo aprašymas / Notification of the Specialist"
* extension contains
    option 1..1 and
    resource 0..1
* extension[option] ^short = "Kuris specialistas informuotas / Which specialist is informed"
* extension[option].value[x] only string
* extension[option].value[x] ^example.label = "example"
* extension[option].value[x] ^example.valueString = "Informuotas gydytojas ir vaistininkas"
* extension[resource] ^short = "Nuoroda į sveikatos priežiūros specialisto resursą / Reference to PractitionerRole "
* extension[resource].value[x] only Reference($lt-espbi-practitioner-role)
* extension[resource].value[x] ^example.label = "example"
* extension[resource].value[x] ^example.valueReference.reference = "PractitionerRole/1000000003"
* url = "http://esveikata.lt/Profile/ltnhr-adverseevent/notifiedSpecialist" (exactly)