Extension: LtEspbiExtMppBarcode
Id: LtEspbiExtMppBarcode
Description: "MPP brūkšninis kodas / MPP barcode"
Context: MedicationDispense
* ^url = "http://esveikata.lt/Profile/lt-med-dispense/mppBarcode"
* ^status = #draft
* . ..1
* . ^short = "MPP brūkšninis kodas."
* . ^definition = "MPP brūkšninis kodas. Privalomas kompensuojamam MPP "
* url = "http://esveikata.lt/Profile/lt-med-dispense/mppBarcode" (exactly)
* value[x] 1..
* value[x] only string