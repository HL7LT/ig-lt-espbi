Extension: LtEspbiExtDevRequestIssue
Id: LtEspbiExtDevRequestIssue
Context: DeviceRequest
* ^url = "http://esveikata.lt/Profile/lt-dev-request/issue"
* ^status = #draft
* extension contains
    Code 1..1 and
    IgnoreReason 1..1
* extension[Code] ^short = "Įspejimo kodas / Issue code"
* extension[Code] ^definition = "Įspejimo kodas"
* extension[Code].value[x] 1..
* extension[Code].value[x] only Coding
* extension[Code].value[x].code 1..
* extension[Code].value[x].display 1..
* extension[IgnoreReason] ^short = "Apėjimo priežastis / Ignore reason"
* extension[IgnoreReason] ^definition = "Apėjimo priežastis"
* extension[IgnoreReason].value[x] 1..
* extension[IgnoreReason].value[x] only string
* url = "http://esveikata.lt/Profile/lt-dev-request/issue" (exactly)