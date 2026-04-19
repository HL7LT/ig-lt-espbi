Extension: LtEspbiExtDevPaperPrescriptionTags
Id: LtEspbiExtDevPaperPrescriptionTags
Context: DeviceRequest
* ^url = "http://esveikata.lt/Profile/lt-dev-request/paperPrescriptionTags"
* ^status = #draft
* extension contains
    GkTag 0..1 and
    SpecialTag 0..1 and
    SpecialistDecisionTag 0..1 and
    LabelingExemptionTag 0..1 and
    Nominal 0..1
* extension[GkTag] ^short = "Popieriniame recepte nurodyta GK sprendimo žyma / The GK decision mark is indicated on the paper prescription"
* extension[GkTag] ^definition = "Popieriniame recepte nurodyta GK sprendimo žyma."
* extension[GkTag].value[x] 1..
* extension[GkTag].value[x] only boolean
* extension[SpecialTag] ^short = "Popieriniame recepte nurodyta ypatingo skyrimo žyma / Special prescription tag indicated on paper prescription"
* extension[SpecialTag] ^definition = "Popieriniame recepte nurodyta ypatingo skyrimo žyma."
* extension[SpecialTag].value[x] 1..
* extension[SpecialTag].value[x] only boolean
* extension[SpecialistDecisionTag] ^short = "Popieriniame recepte nurodyta Specialisto sprendimu žyma / The paper prescription is marked with the Specialist's Decision tag"
* extension[SpecialistDecisionTag] ^definition = "Popieriniame recepte nurodyta Specialisto sprendimu žyma."
* extension[SpecialistDecisionTag].value[x] 1..
* extension[SpecialistDecisionTag].value[x] only boolean
* extension[LabelingExemptionTag] ^short = "Popieriniame recepte nurodyta ženklinimo išimtis žyma / The paper prescription is marked with a labeling exception tag"
* extension[LabelingExemptionTag] ^definition = "Popieriniame recepte nurodyta ženklinimo išimtis žyma."
* extension[LabelingExemptionTag].value[x] 1..
* extension[LabelingExemptionTag].value[x] only boolean
* extension[Nominal] obeys medreq-Nom-01
* extension[Nominal] ^short = "Popieriniame recepte nurodytas vardinis vaistas žyma / Brand name medication label specified in paper prescription tag"
* extension[Nominal] ^definition = "Popieriniame recepte nurodytas vardinis vaistas žyma."
* extension[Nominal].extension 1..
* extension[Nominal].extension contains
    NominalTag 1..1 and
    Confirm 0..1
* extension[Nominal].extension[NominalTag] ^short = "Popieriniame recepte nurodyta Vardinio vaisto žyma / The Brand Name Drug Tag is indicated on the paper prescription"
* extension[Nominal].extension[NominalTag] ^definition = "Popieriniame recepte nurodyta Vardinio vaisto žyma."
* extension[Nominal].extension[NominalTag].value[x] 1..
* extension[Nominal].extension[NominalTag].value[x] only boolean
* extension[Nominal].extension[Confirm] ^short = "Popieriniame recepte nurodytas patvirtinimas, jog yra paciento sutikimas vartoti vardinius vaistus ir yra užpildytas vardinio vaisto skyrimo pareiškimas  / The paper prescription includes confirmation that the patient has consented to use branded medications and that a branded medication prescription form has been completed"
* extension[Nominal].extension[Confirm] ^definition = "Popieriniame recepte nurodytas patvirtinimas, jog yra paciento sutikimas vartoti vardinius vaistus ir yra užpildytas vardinio vaisto skyrimo pareiškimas (privalomas, jeigu žyma yra true)."
* extension[Nominal].extension[Confirm].extension 2..
* extension[Nominal].extension[Confirm].extension contains
    ConfirmTag 1..1 and
    DeclarationValid 1..1
* extension[Nominal].extension[Confirm].extension[ConfirmTag] ^short = "Popieriniame recepte nurodyta patvirtinimo žyma / In paper prescription confirmation tag"
* extension[Nominal].extension[Confirm].extension[ConfirmTag] ^definition = "Popieriniame recepte nurodyta patvirtinimo žyma"
* extension[Nominal].extension[Confirm].extension[ConfirmTag].value[x] 1..
* extension[Nominal].extension[Confirm].extension[ConfirmTag].value[x] only boolean
* extension[Nominal].extension[Confirm].extension[DeclarationValid] ^short = "Popieriniame recepte nurodyta pareiškimo galiojimas / The validity of the statement is indicated on the paper prescription"
* extension[Nominal].extension[Confirm].extension[DeclarationValid] ^definition = "Popieriniame recepte nurodyta pareiškimo galiojimas"
* extension[Nominal].extension[Confirm].extension[DeclarationValid].value[x] 1..
* extension[Nominal].extension[Confirm].extension[DeclarationValid].value[x] only date
* url = "http://esveikata.lt/Profile/lt-dev-request/paperPrescriptionTags" (exactly)

Invariant: medreq-Nom-01
Description: "If extension 'Tag' is true, extension 'Confirm' must exis"
* severity = #error
* expression = "extension.where(url = 'Tag').valueBoolean = true implies extension.where(url = 'Confirm').exists()"
* requirements = "Jei plėtinio Tag reikšmė true tada plėtinis Confirm turi būti pildomas"