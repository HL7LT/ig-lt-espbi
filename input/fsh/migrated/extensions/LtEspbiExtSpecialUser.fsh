Extension: LtEspbiExtSpecialUser
Id: LtEspbiExtSpecialUser
Description: "Sisteminis naudotojas / System user"
Context: PractitionerRole
* ^url = "http://esveikata.lt/Profile/ltnhr-practitionerrole/specialUser"
* ^status = #draft
* . 1..1
* . ^short = "Sisteminis naudotojas / System user"
* . ^definition = "Sisteminis naudotojas"
* url = "http://esveikata.lt/Profile/ltnhr-practitionerrole/specialUser" (exactly)
* value[x] 1..
* value[x] only boolean