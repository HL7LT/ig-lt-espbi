Extension: LtEspbiExtDueDate
Id: LtEspbiExtDueDate
Description: "Data, iki kada faktiškai užteks išduoto vaisto ar MPP kiekio / Date by which the quantity of the medicine or MPP dispensed will actually be sufficient"
Context: MedicationDispense
* ^url = "http://esveikata.lt/Profile/lt-med-dispense/dueDate"
* ^status = #draft
* . 1..1
* . ^short = "Data, iki kada faktiškai užteks išduoto vaisto ar MPP kiekio "
* url = "http://esveikata.lt/Profile/lt-med-dispense/dueDate" (exactly)
* value[x] 1..
* value[x] only date