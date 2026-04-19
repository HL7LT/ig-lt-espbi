Extension: LtEspbiExtAnesthesia
Id: LtEspbiExtAnesthesia
Description: "Anestezija / Anesthesia"
Context: Procedure
* ^url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-anesthesia"
* ^status = #draft
* . ^short = "Anestezija / Anesthesia"
* url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-anesthesia" (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] ^short = "Anestezija / Anesthesia"
* value[x] ^definition = "Reikšmė turėtų būti pasirenkama iš klasifikatoriaus.\r\n\r\n- Klasifikatoriaus rinkinio kodas: anesthesia."
* value[x].coding 1..1
* value[x].coding.system 1..
* value[x].coding.system = "http://esveikata.lt/classifiers/NGN/Anesthesia"
* value[x].coding.code 1..