Extension: LtEspbiExtReported
Id: LtEspbiExtReported
Description: "Požymis, ar tyrimas yra aprašytas / Study reported flag"
Context: ImagingStudy
* ^url = "http://esveikata.lt/Profile/ltnhr-imagingstudy/reported"
* ^status = #draft
* . 1..1
* . ^short = "Požymis, ar tyrimas yra aprašytas / Study reported flag"
* url = "http://esveikata.lt/Profile/ltnhr-imagingstudy/reported" (exactly)
* value[x] 1..
* value[x] only boolean