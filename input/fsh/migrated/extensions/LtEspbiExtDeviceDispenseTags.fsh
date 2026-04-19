Extension: LtEspbiExtDeviceDispenseTags
Id: LtEspbiExtDeviceDispenseTags
Description: "MPP ar medicinos prietaiso išdavimo būdo žymos / MPP or medical device dispensing method tags"
Context: DeviceDispense
* ^url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-device-dispense-tags"
* ^status = #draft
* . ..1
* . ^short = "MPP ar medicinos prietaiso išdavimo būdo žymos / MPP or medical device dispensing method tags"
* . ^definition = "MPP ar medicinos prietaiso išdavimo būdo žymos"
* extension contains
    TagsNoValidPrescriptionTag 1..1 and
    OverLimitQuantityTag 1..1
* extension[TagsNoValidPrescriptionTag] ^short = "Išdavimas be galiojančio recepto / Dispensing without a valid prescription"
* extension[TagsNoValidPrescriptionTag] ^definition = "Išdavimas be galiojančio recepto"
* extension[TagsNoValidPrescriptionTag].value[x] 1..
* extension[TagsNoValidPrescriptionTag].value[x] only boolean
* extension[OverLimitQuantityTag] ^short = "Išduodamas didesnis MPP ar medicinos prietaisų kiekis / A larger quantity of MPP or medical devices is issued"
* extension[OverLimitQuantityTag] ^definition = "Išduodamas didesnis MPP ar medicinos prietaisų kiekis"
* extension[OverLimitQuantityTag].value[x] 1..
* extension[OverLimitQuantityTag].value[x] only boolean
* url = "http://esveikata.lt/fhir/Extension/lt-espbi-ext-device-dispense-tags" (exactly)