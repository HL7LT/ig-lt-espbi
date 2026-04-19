Alias: $lt-espbi-practitioner-role = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-practitioner-role

Extension: LtEspbiExtFamilyDoctor
Id: LtEspbiExtFamilyDoctor
Context: Patient.generalPractitioner
* ^url = "http://esveikata.lt/Profile/ltnhr-patient/familyDoctor"
* ^status = #draft
* . ..1
* . ^short = "Nuoroda į paciento šeimos gydytoją, kuris dirba šioje įstaigoje / Reference to Patient's family doctor, which is working in this organization"
* . ^definition = "Nuoroda į paciento šeimos gydytoją, kuris dirba šioje įstaigoje."
* url = "http://esveikata.lt/Profile/ltnhr-patient/familyDoctor" (exactly)
* value[x] 1..
* value[x] only Reference($lt-espbi-practitioner-role)
* value[x].reference 1..