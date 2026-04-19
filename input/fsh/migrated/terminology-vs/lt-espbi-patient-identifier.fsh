Alias: $lt-espbi-identifier = http://esveikata.lt/fhir/CodeSystem/lt-espbi-identifier

ValueSet: LtEspbiPatientIdentifier
Id: lt-espbi-patient-identifier
Description: "Pacientų identifikavimo sistemų sąrašas / A curated list of identifier systems for patients"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = false
* $lt-espbi-identifier#http://esveikata.lt/Identifier/PersonalCode "Personal Code"
* $lt-espbi-identifier#http://esveikata.lt/Identifier/Patient/ESPBI "ESPBI"
* $lt-espbi-identifier#http://esveikata.lt/Identifier/Patient/DIK "DIK"
* $lt-espbi-identifier#http://esveikata.lt/Identifier/Patient/SveidraID "SveidraID"
* $lt-espbi-identifier#http://esveikata.lt/Identifier/Patient/eFormNumber "eFormNumber"
* $lt-espbi-identifier#http://esveikata.lt/Identifier/Patient/ForeignPersonalCode "ForeignPersonalCode"
* $lt-espbi-identifier#http://esveikata.lt/Identifier/eDelivery "eDelivery"
* $lt-espbi-identifier#http://esveikata.lt/classifiers/IdentityDocument/SerieNumber "SerieNumber"