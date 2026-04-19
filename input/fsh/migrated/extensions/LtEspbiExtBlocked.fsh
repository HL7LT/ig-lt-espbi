Extension: LtEspbiExtBlocked
Id: LtEspbiExtBlocked
Description: "Užblokuotas sisteminis naudotojas / Blocked system user"
Context: PractitionerRole
* ^url = "http://esveikata.lt/Profile/ltnhr-practitionerrole/blocked"
* ^status = #draft
* . ..1
* . ^short = "Užblokuotas sisteminis naudotojas / Blocked system user"
* . ^definition = "Užblokuotas sisteminis naudotojas"
* url = "http://esveikata.lt/Profile/ltnhr-practitionerrole/blocked" (exactly)
* value[x] 1..
* value[x] only boolean