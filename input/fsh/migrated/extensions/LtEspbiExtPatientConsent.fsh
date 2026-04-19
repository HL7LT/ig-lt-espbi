Extension: LtEspbiExtPatientConsent
Id: LtEspbiExtPatientConsent
Description: "Paciento sutikimas. Naudojamas rizikos veiksnio aprašyme."
Context: Observation
* ^url = "http://esveikata.lt/Profile/ltnhr-observation/patientConsent"
* ^status = #draft
* url = "http://esveikata.lt/Profile/ltnhr-observation/patientConsent" (exactly)
* value[x] 1..
* value[x] only boolean