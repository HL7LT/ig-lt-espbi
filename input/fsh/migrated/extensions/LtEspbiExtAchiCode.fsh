Extension: LtEspbiExtAchiCode
Id: LtEspbiExtAchiCode
Description: "ACHI kodas / ACHI code"
Context: ImagingStudy
* ^url = "http://esveikata.lt/Profile/ltnhr-imagingstudy/achi-code"
* ^status = #draft
* . ..1
* . ^short = "Tyrimo ACHI kodas / ACHI code"
* . ^definition = "Tyrimo ACHI kodas. Laukas naudojamas susijusių (ne pagrindinių) tyrimų ACHI kodui saugoti."
* url = "http://esveikata.lt/Profile/ltnhr-imagingstudy/achi-code" (exactly)
* value[x] 1..
* value[x] only string