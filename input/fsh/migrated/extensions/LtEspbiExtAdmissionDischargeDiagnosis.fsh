Alias: $lt-espbi-observation = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-observation

Extension: LtEspbiExtAdmissionDischargeDiagnosis
Id: LtEspbiExtAdmissionDischargeDiagnosis
Context: Encounter.admission
* ^url = "http://esveikata.lt/Profile/ltnhr-encounter/admission.dischargeDiagnosis"
* ^status = #draft
* . ..1
* . ^short = "Paciento būklė išrašymo metu / Patient condition on dispatch"
* . ^definition = "Paciento būklės aprašymas."
* url = "http://esveikata.lt/Profile/ltnhr-encounter/admission.dischargeDiagnosis" (exactly)
* value[x] 1..
* value[x] only Reference($lt-espbi-observation)