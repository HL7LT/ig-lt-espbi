Extension: LtEspbiExtUrgencyNote
Id: LtEspbiExtUrgencyNote
Description: "Skubumo priežastis / Reason for urgency"
Context: ServiceRequest
* ^url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-service-request-urgency-note"
* ^status = #draft
* . ..1
* . ^short = "Skubumo priežastis. Privaloma jei skubumas ServiceRequest.priority nustatyta į urgent."
* extension obeys ext-7
* extension contains
    type 1..1 and
    note 0..1
* extension[type] ^short = "Skubumo priežasties tipas / Reason for urgency type"
* extension[type].value[x] 1..
* extension[type].value[x] only CodeableConcept
* extension[type].value[x].id ..0
* extension[type].value[x].extension ..0
* extension[type].value[x].coding 1..1
* extension[type].value[x].coding.id ..0
* extension[type].value[x].coding.extension ..0
* extension[type].value[x].coding.system 1..
* extension[type].value[x].coding.system = "http://esveikata.lt/fhir/CodeSystem/lt-espbi-cs-reason-for-urgency"
* extension[type].value[x].coding.version ..0
* extension[type].value[x].coding.code 1..
* extension[type].value[x].coding.display 1..
* extension[type].value[x].coding.userSelected ..0
* extension[type].value[x].text ..0
* extension[note] ^short = "Nurodoma paslaugos suteikimo skubumo priežastis, kai pasirenkama reikšmė \"Kita\""
* extension[note] ^definition = "Jei laukas „Skubumo priežastis“ yra „Kita“, šis laukas turi būti užpildytas privalomai."
* extension[note].value[x] 1..
* extension[note].value[x] only string
* url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-service-request-urgency-note" (exactly)

Invariant: ext-7
Description: "If the type code is \"3\" (display - \"Kita\"), the note element must be provided."
* severity = #error
* expression = "extension.where(url='type').valueCodeableConcept.coding.code = '3' implies extension.where(url='note').value.exists()"