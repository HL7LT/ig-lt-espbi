Extension: LtExtPatientAgreementContext
Id: LtExtPatientAgreementContext
Description: " Paciento sutikimo kontekstas / Context of patient consent"
Context: Consent
* ^url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-patient-agreement-context"
* ^status = #draft
* . ^short = " Paciento sutikimo kontekstas / Context of patient consent"
* . ^definition = "Nurodo paciento sutikimo, pageidavimo ar nurodymo kontekstą. Tai gali būti reikšmė iš paciento sutikimų kontekstų klasifikatoriaus."
* url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-patient-agreement-context" (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x].coding 1..1
* value[x].coding ^definition = "Tai gali būti reikšmė iš paciento sutikimų kontekstų klasifikatoriaus patient-agreement-context."
* value[x].coding.system 1..
* value[x].coding.system = "http://esveikata.lt/classifiers/PatientAgreementContext"
* value[x].coding.code 1..
* value[x].coding.display MS