Extension: LtEspbiExtGestationalAgeWeek
Id: LtEspbiExtGestationalAgeWeek
Description: "Nėštumo savaitė / Gestational age (in weeks)"
Context: Procedure
* ^url = "http://esveikata.lt/Profile/ltnhr-procedure/nestumoSavaite"
* ^status = #draft
* . 1..1
* . ^short = "Nėštumo savaitė / Gestational age (in weeks)"
* id ..0
* url = "http://esveikata.lt/Profile/ltnhr-procedure/nestumoSavaite" (exactly)
* value[x] 1..
* value[x] only Quantity
* value[x] ^example.label = "example"
* value[x] ^example.valueQuantity.value = 10
* value[x] ^example.valueQuantity.system = "http://unitsofmeasure.org"
* value[x] ^example.valueQuantity.unit = "week"
* value[x].id ..0
* value[x].value 1..
* value[x].comparator ..0
* value[x].unit 1..
* value[x].system = "http://unitsofmeasure.org" (exactly)
* value[x].unit = "weeks" (exactly)
* value[x].system 1..
* value[x].code ..0