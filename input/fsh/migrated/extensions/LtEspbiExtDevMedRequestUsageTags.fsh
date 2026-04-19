Extension: LtEspbiExtDevMedRequestUsageTags
Id: LtEspbiExtDevMedRequestUsageTags
Context: Dosage
* ^url = "http://esveikata.lt/Profile/lt-med-request/usageTags"
* ^status = #draft
* extension contains
    Morning 1..1 and
    Noon 1..1 and
    Evening 1..1 and
    BeforeMeal 1..1 and
    DuringMeal 1..1 and
    AfterMeal 1..1 and
    IndependMeal 1..1 and
    BeforeSleep 1..1
* extension[Morning] ^short = "Vartoti ryte / Take at the morning"
* extension[Morning] ^definition = "Vartoti ryte."
* extension[Morning].value[x] 1..
* extension[Morning].value[x] only boolean
* extension[Noon] ^short = "Vartoti per pietus/ Take at the noon"
* extension[Noon] ^definition = "Vartoti per pietus."
* extension[Noon].value[x] 1..
* extension[Noon].value[x] only boolean
* extension[Evening] ^short = "Vartoti vakare / Take at the evening"
* extension[Evening] ^definition = "Vartoti vakare"
* extension[Evening].value[x] 1..
* extension[Evening].value[x] only boolean
* extension[BeforeMeal] ^short = "Vartoti prieš valgį / Take before meal"
* extension[BeforeMeal] ^definition = "Vartoti prieš valgį."
* extension[BeforeMeal].value[x] 1..
* extension[BeforeMeal].value[x] only boolean
* extension[DuringMeal] ^short = "Vartoti valgio metu / Take during meal"
* extension[DuringMeal] ^definition = "Vartoti valgio metu."
* extension[DuringMeal].value[x] 1..
* extension[DuringMeal].value[x] only boolean
* extension[AfterMeal] ^short = "Vartoti po valgio / Take after meal"
* extension[AfterMeal] ^definition = "Vartoti po valgio."
* extension[AfterMeal].value[x] 1..
* extension[AfterMeal].value[x] only boolean
* extension[IndependMeal] ^short = "Vartoti nepriklausomai nuo valgymo / Take regardless of meal"
* extension[IndependMeal] ^definition = "Vartoti nepriklausomai nuo valgymo"
* extension[IndependMeal].value[x] 1..
* extension[IndependMeal].value[x] only boolean
* extension[BeforeSleep] ^short = "Vartoti prieš miegą / Take before sleep"
* extension[BeforeSleep] ^definition = "Vartoti prieš miegą"
* extension[BeforeSleep].value[x] 1..
* extension[BeforeSleep].value[x] only boolean
* url = "http://esveikata.lt/Profile/lt-med-request/usageTags" (exactly)