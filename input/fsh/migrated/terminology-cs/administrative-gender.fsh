CodeSystem: AdministrativeGender
Id: administrative-gender
Description: "The gender of a person used for administrative purposes."
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2023-07-28T11:20:34.752+00:00"
* ^version = "0.3.28"
* ^status = #active
* ^date = "2023-03-25T00:00:00Z"
* ^publisher = "Registrų Centras"
* ^contact.name = "Registrų Centras"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "https://www.registrucentras.lt/"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "esveikata@registrucentras.lt"
* ^jurisdiction = urn:iso:std:iso:3166#LT "Lithuania"
* ^caseSensitive = true
* ^content = #complete
* ^count = 4
* #female "Female" "Female."
* #female ^designation[0].language = #en
* #female ^designation[=].use.code = #definition
* #female ^designation[=].value = "Female."
* #female ^designation[+].language = #en
* #female ^designation[=].use.code = #display
* #female ^designation[=].value = "Female"
* #male "Male" "Male."
* #male ^designation[0].language = #en
* #male ^designation[=].use.code = #definition
* #male ^designation[=].value = "Male."
* #male ^designation[+].language = #en
* #male ^designation[=].use.code = #display
* #male ^designation[=].value = "Male"
* #other "Other" "Other."
* #other ^designation[0].language = #en
* #other ^designation[=].use.code = #definition
* #other ^designation[=].value = "Other."
* #other ^designation[+].language = #en
* #other ^designation[=].use.code = #display
* #other ^designation[=].value = "Other"
* #unknown "Unknown" "Unknown."
* #unknown ^designation[0].language = #en
* #unknown ^designation[=].use.code = #definition
* #unknown ^designation[=].value = "Unknown."
* #unknown ^designation[+].language = #en
* #unknown ^designation[=].use.code = #display
* #unknown ^designation[=].value = "Unknown"