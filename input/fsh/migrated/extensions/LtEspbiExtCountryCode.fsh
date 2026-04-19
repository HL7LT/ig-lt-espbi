Extension: LtEspbiExtCountryCode
Id: LtEspbiExtCountryCode
Description: "Sveikatos priežiūros specialisto šalies kodas / Health Care Specialist‘s country code"
Context: Practitioner
* ^url = "http://esveikata.lt/Profile/ltnhr-practitioner/countryCode"
* ^status = #draft
* . ..1
* url = "http://esveikata.lt/Profile/ltnhr-practitioner/countryCode" (exactly)
* value[x] 1..
* value[x] only string