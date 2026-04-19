Extension: LtEspbiExtMessageAbout
Id: LtEspbiExtMessageAbout
Context: AdverseEvent
* ^url = "http://esveikata.lt/Profile/ltnhr-adverseevent/messageAbout"
* ^status = #draft
* . ..1
* . ^short = "ĮNR pranešimo forma/ SAR form"
* . ^definition = "kodas: MEDICATION | VACCINE"
* url = "http://esveikata.lt/Profile/ltnhr-adverseevent/messageAbout" (exactly)
* value[x] only code
* value[x] ^example.label = "example"
* value[x] ^example.valueCode = #MEDICATION