Extension: LtEspbiExtDevPaperPrescriptionMedicalAids
Id: LtEspbiExtDevPaperPrescriptionMedicalAids
Context: DeviceRequest
* ^url = "http://esveikata.lt/Profile/lt-dev-request/paperPrescriptionMedicalAids"
* ^status = #draft
* extension contains
    GroupCode 0..1 and
    GroupName 0..1 and
    Name 0..1
* extension[GroupCode] ^short = "Popieriniame recepte nurodytas MPP grupės kodas / In the paper prescription the MPP group code"
* extension[GroupCode] ^definition = "Popieriniame recepte nurodytas MPP grupės kodas."
* extension[GroupCode].value[x] 1..
* extension[GroupCode].value[x] only string
* extension[GroupName] ^short = "Popieriniame recepte nurodytas MPP grupės pavadinimas / In the paper prescription the MPP group name"
* extension[GroupName] ^definition = "Popieriniame recepte nurodytas MPP grupės pavadinimas."
* extension[GroupName].extension ..0
* extension[Name] ^short = "Popieriniame recepte nurodytas MPP konkretus pavadinimas / In the paper prescription the MPP name"
* extension[Name] ^definition = "Popieriniame recepte nurodytas MPP konkretus pavadinimas."
* extension[Name].extension ..0
* url = "http://esveikata.lt/Profile/lt-dev-request/paperPrescriptionMedicalAids" (exactly)