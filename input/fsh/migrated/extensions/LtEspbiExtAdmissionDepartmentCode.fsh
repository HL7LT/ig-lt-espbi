Extension: LtEspbiExtAdmissionDepartmentCode
Id: LtEspbiExtAdmissionDepartmentCode
Context: Encounter.admission
* ^url = "http://esveikata.lt/Profile/ltnhr-encounter/admission.departmentCode"
* ^status = #draft
* . ..1
* . ^short = "Skyriaus, į kurį yra nukreiptas pacientas, kodas / Code of the department to which the patient is referred"
* . ^definition = "Skyriaus, į kurį nukreiptas pacientas, kodas."
* url = "http://esveikata.lt/Profile/ltnhr-encounter/admission.departmentCode" (exactly)
* value[x] 1..
* value[x] only string