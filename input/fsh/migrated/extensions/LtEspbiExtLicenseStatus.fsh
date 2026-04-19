Extension: LtEspbiExtLicenseStatus
Id: LtEspbiExtLicenseStatus
Context: Practitioner.qualification
* ^url = "http://esveikata.lt/Profile/ltnhr-practitioner/licenseStatus"
* ^status = #draft
* . 1..1
* . ^short = "Licencijos būsena / License status"
* . ^definition = "Sveikatos priežiūros specialisto licencijos būsena (galiojanti, sustabdyta, atnaujinta, panaikinta).\r\nGalimos reikšmės nurodytos klasifikatoriuje license-status (http://esveikata.lt/classifiers/LicenseStatus)."
* url = "http://esveikata.lt/Profile/ltnhr-practitioner/licenseStatus" (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x].coding 1..1
* value[x].coding.system 1..
* value[x].coding.system = "http://esveikata.lt/classifiers/LicenseStatus"
* value[x].coding.code 1..
* value[x].coding.display 1..