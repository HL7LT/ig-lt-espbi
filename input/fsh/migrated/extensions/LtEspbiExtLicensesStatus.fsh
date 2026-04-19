Extension: LtEspbiExtLicensesStatus
Id: LtEspbiExtLicensesStatus
Context: Organization.qualification
* ^url = "http://esveikata.lt/Profile/ltnhr-organization/licenses.status"
* ^status = #draft
* . 1..1
* . ^short = "Licencijos būsena"
* . ^definition = "Licencijos būsena / License status"
* url = "http://esveikata.lt/Profile/ltnhr-organization/licenses.status" (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x].coding 1..1
* value[x].coding.system 1..
* value[x].coding.system = "http://esveikata.lt/classifiers/OrganizationLicenseStatus"
* value[x].coding.code 1..
* value[x].coding.display 1..