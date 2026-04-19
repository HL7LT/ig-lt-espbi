Extension: LtEspbiExtClosedBySystem
Id: LtEspbiExtClosedBySystem
Context: Encounter
* ^url = "http://esveikata.lt/Profile/ltnhr-encounter/closedBySystem"
* ^status = #draft
* . ..1
* . ^short = "Požymis, kad atvykimas buvo automatiškai uždarytas sistemos / True if encounter was closed by the system automatically"
* . ^definition = "Požymis, kad atvykimas buvo automatiškai uždarytas sistemos."
* url = "http://esveikata.lt/Profile/ltnhr-encounter/closedBySystem" (exactly)
* value[x] 1..
* value[x] only boolean