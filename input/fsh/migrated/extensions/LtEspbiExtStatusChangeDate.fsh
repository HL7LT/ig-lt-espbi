Extension: LtEspbiExtStatusChangeDate
Id: LtEspbiExtStatusChangeDate
Context: Organization.qualification
* ^url = "http://esveikata.lt/Profile/ltnhr-organization/licenses.statusChangedDate"
* ^status = #draft
* . ..1
* . ^short = "Licencijos būsenos pasikeitimo data"
* . ^definition = "Licencijos būsenos pasikeitimo data / Date when license status was changed"
* url = "http://esveikata.lt/Profile/ltnhr-organization/licenses.statusChangedDate" (exactly)
* value[x] 1..
* value[x] only date