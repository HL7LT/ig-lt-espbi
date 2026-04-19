Extension: LtEspbiExtMessageType
Id: LtEspbiExtMessageType
Context: AdverseEvent
* ^url = "http://esveikata.lt/Profile/ltnhr-adverseevent/messageType"
* ^status = #draft
* . ..1
* . ^short = "ĮNR pranešimo tipas / SAR type"
* . ^definition = "kodas: PRIMARY | FOLLOWUP"
* url = "http://esveikata.lt/Profile/ltnhr-adverseevent/messageType" (exactly)
* value[x] only code
* value[x] ^example.label = "example"
* value[x] ^example.valueCode = #PRIMARY