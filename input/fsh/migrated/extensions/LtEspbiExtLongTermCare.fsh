Extension: LtEspbiExtLongTermCare
Id: LtEspbiExtLongTermCare
Description: "Siuntimas ilgalaikei priežiūrai / Referral for long-term care"
Context: ServiceRequest
* ^url = "http://esveikata.lt/Profile/ltnhr-servicerequest/longTermCare"
* ^status = #draft
* . ..1
* . ^short = "Siuntimas ilgalaikei priežiūrai / Referral for long-term care"
* . ^definition = "Siuntimas ilgalaikei priežiūrai"
* url = "http://esveikata.lt/Profile/ltnhr-servicerequest/longTermCare" (exactly)
* value[x] 1..
* value[x] only boolean