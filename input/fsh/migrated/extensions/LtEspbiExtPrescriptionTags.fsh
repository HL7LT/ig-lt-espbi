Extension: LtEspbiExtPrescriptionTags
Id: LtEspbiExtPrescriptionTags
Description: "Papildomos recepto žymos / Additional prescription tags"
Context: MedicationRequest.dispenseRequest
* ^url = "http://esveikata.lt/Profile/lt-med-prescription/prescriptionTags"
* ^status = #draft
* . ..1
* . ^short = "Papildomos recepto žymos / Additional prescription tags"
* . ^definition = "Papildomos recepto žymos"
* extension contains
    Gkk 0..1 and
    special 0..1 and
    nominal 0..1 and
    firstPrescribingTag 0..1 and
    specialistDecisionTag 0..1 and
    labelingExemptionTag 0..1 and
    byDemandTag 0..1
* extension[Gkk] obeys ext-3
* extension[Gkk] ^short = "GK sprendimas"
* extension[Gkk] ^definition = "GK sprendimas"
* extension[Gkk].extension 1..
* extension[Gkk].extension contains
    tag 1..1 and
    exp 0..1
* extension[Gkk].extension[tag] ^short = "GK sprendimo žyma"
* extension[Gkk].extension[tag] ^definition = "GK sprendimo žyma"
* extension[Gkk].extension[tag].value[x] 1..
* extension[Gkk].extension[tag].value[x] only boolean
* extension[Gkk].extension[exp] ^short = "GK skyrimo pagrindimas (privalomas, jeigu žyma yra true)"
* extension[Gkk].extension[exp] ^definition = "GK skyrimo pagrindimas (privalomas, jeigu žyma yra true)"
* extension[Gkk].extension[exp].value[x] 1..
* extension[Gkk].extension[exp].value[x] only string
* extension[special] ^short = "Ypatingas skyrimas / Special appointment"
* extension[special] ^definition = "Ypatingas skyrimas."
// WARNING: The constraint index in the following rule (e.g., constraint[0]) may be incorrect.
// Please compare with the constraint array in the original definition's snapshot and adjust as necessary.
* extension[special] ^constraint.key = "ext-3"
// WARNING: The constraint index in the following rule (e.g., constraint[0]) may be incorrect.
// Please compare with the constraint array in the original definition's snapshot and adjust as necessary.
* extension[special] ^constraint.severity = #error
// WARNING: The constraint index in the following rule (e.g., constraint[0]) may be incorrect.
// Please compare with the constraint array in the original definition's snapshot and adjust as necessary.
* extension[special] ^constraint.human = "If 'tag' is true, a string value for 'exp' must be provided"
// WARNING: The constraint index in the following rule (e.g., constraint[0]) may be incorrect.
// Please compare with the constraint array in the original definition's snapshot and adjust as necessary.
* extension[special] ^constraint.expression = "extension.where(url = 'tag').valueBoolean = true implies extension.where(url = 'exp').valueString.exists()"
* extension[special].extension 1..
* extension[special].extension contains
    tag 1..1 and
    exp 0..1
* extension[special].extension[tag] ^short = "Ypatingo skyrimo žyma / Special designation tag"
* extension[special].extension[tag] ^definition = "Ypatingo skyrimo žyma."
* extension[special].extension[tag].value[x] 1..
* extension[special].extension[tag].value[x] only boolean
* extension[special].extension[exp] ^short = "Ypatingo skyrimo pagrindimas (privalomas, jeigu žyma yra true) / Justification for special appointment (required if Tag is true)"
* extension[special].extension[exp] ^definition = "Ypatingo skyrimo pagrindimas (privalomas, jeigu žyma yra true)."
* extension[special].extension[exp].value[x] 1..
* extension[special].extension[exp].value[x] only string
* extension[nominal] obeys ext-4
* extension[nominal] ^short = "Vardinis vaistas / Nominal medication"
* extension[nominal] ^definition = "Vardinis vaistas."
* extension[nominal].extension 1..
* extension[nominal].extension contains
    tag 1..1 and
    confirm 0..1
* extension[nominal].extension[tag] ^short = "Vardinio vaisto žyma / Nominal medication tag"
* extension[nominal].extension[tag] ^definition = "Vardinio vaisto žyma.."
* extension[nominal].extension[tag].value[x] 1..
* extension[nominal].extension[tag].value[x] only boolean
* extension[nominal].extension[confirm] ^short = "Patvirtinimas, jog yra paciento sutikimas vartoti vardinius vaistus ir yra užpildytas vardinio vaisto skyrimo pareiškimas (privalomas, jeigu žyma yra true) / Confirmation that the patient has consented to use branded medication and that a branded medication prescription statement has been statement was signed (required if the flag is true)"
* extension[nominal].extension[confirm] ^definition = "Patvirtinimas, jog yra paciento sutikimas vartoti vardinius vaistus ir yra užpildytas vardinio vaisto skyrimo pareiškimas (privalomas, jeigu žyma yra true)."
* extension[nominal].extension[confirm].extension 2..
* extension[nominal].extension[confirm].extension contains
    tag 1..1 and
    declarationValid 1..1
* extension[nominal].extension[confirm].extension[tag] ^short = "Patvirtinimo žyma / Given consent tag"
* extension[nominal].extension[confirm].extension[tag] ^definition = "Patvirtinimo žyma."
* extension[nominal].extension[confirm].extension[tag].value[x] 1..
* extension[nominal].extension[confirm].extension[tag].value[x] only boolean
* extension[nominal].extension[confirm].extension[declarationValid] ^short = "Pareiškimo galiojimo pabaigos data / The expiration date of the confirmation"
* extension[nominal].extension[confirm].extension[declarationValid] ^definition = "Pareiškimo galiojimo pabaigos data."
* extension[nominal].extension[confirm].extension[declarationValid].value[x] 1..
* extension[nominal].extension[confirm].extension[declarationValid].value[x] only date
* extension[firstPrescribingTag] ^short = "Pirmo paskyrimo žyma / First prescribtion tag"
* extension[firstPrescribingTag] ^definition = "Pirmo paskyrimo žyma."
* extension[firstPrescribingTag].value[x] 1..
* extension[firstPrescribingTag].value[x] only boolean
* extension[specialistDecisionTag] ^short = "Specialisto sprendimu žyma / Specialist decision tag"
* extension[specialistDecisionTag] ^definition = "Specialisto sprendimu žyma."
* extension[specialistDecisionTag].value[x] 1..
* extension[specialistDecisionTag].value[x] only boolean
* extension[labelingExemptionTag] ^short = "Ženklinimo išimtis žyma / Labeling exemption tag"
* extension[labelingExemptionTag] ^definition = "Ženklinimo išimtis žyma"
* extension[labelingExemptionTag].value[x] 1..
* extension[labelingExemptionTag].value[x] only boolean
* extension[byDemandTag] ^short = "Esant poreikiui žyma / By demand tag"
* extension[byDemandTag] ^definition = "Esant poreikiui žyma."
* extension[byDemandTag].value[x] 1..
* extension[byDemandTag].value[x] only boolean
* url = "http://esveikata.lt/Profile/lt-med-prescription/prescriptionTags" (exactly)

Invariant: ext-3
Description: "If 'tag' is true, a string value for 'exp' must be provided."
* severity = #error
* expression = "extension.where(url = 'tag').valueBoolean = true implies extension.where(url = 'exp').valueString.exists()"

Invariant: ext-4
Description: "If 'tag' is true, the 'confirm' extension must be present"
* severity = #error
* expression = "extension.where(url = 'tag').valueBoolean = true implies extension.where(url = 'confirm').exists()"