Extension: LtEspbiExtDispenseTags
Id: LtEspbiExtDispenseTags
Description: "Vaisto ar MPP išdavimo būdo žymos / Drug or MPP dispensing method tags"
Context: MedicationDispense
* ^url = "http://esveikata.lt/Profile/lt-med-dispense/dispenseTags"
* ^status = #draft
* . ..1
* . ^short = "Vaisto ar MPP išdavimo būdo žymos "
* . ^definition = "Vaisto ar MPP išdavimo būdo žymos "
* extension contains
    dispenseBySubstances 1..1 and
    noValidPrescriptionTag 1..1 and
    overLimitQuantityTag 1..1
* extension[dispenseBySubstances] ^short = "Išdavimas atskiromis veikliosioms medžiagomis"
* extension[dispenseBySubstances].extension 1..
* extension[dispenseBySubstances].extension contains
    tag 1..1 and
    groupId 0..1
* extension[dispenseBySubstances].extension[tag] ^short = "Išdavimo atskiromis veikliosioms medžiagomis žyma"
* extension[dispenseBySubstances].extension[tag].value[x] 1..
* extension[dispenseBySubstances].extension[tag].value[x] only boolean
* extension[dispenseBySubstances].extension[groupId] ^short = "Išdavimo veiksmo unikalus identifikatorius. Būtinas, kai vaistas išduodamas atskiromis veikliosioms medžiagomis"
* extension[dispenseBySubstances].extension[groupId].value[x] 1..
* extension[dispenseBySubstances].extension[groupId].value[x] only string
* extension[noValidPrescriptionTag] ^short = "Išdavimas be galiojančio recepto"
* extension[noValidPrescriptionTag].value[x] 1..
* extension[noValidPrescriptionTag].value[x] only boolean
* extension[overLimitQuantityTag] ^short = "Išduodamas didesnis vaisto/MPP kiekis"
* extension[overLimitQuantityTag].value[x] 1..
* extension[overLimitQuantityTag].value[x] only boolean
* url = "http://esveikata.lt/Profile/lt-med-dispense/dispenseTags" (exactly)