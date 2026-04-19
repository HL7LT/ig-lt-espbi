Alias: $lt-espbi-organization = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-organization

Profile: LtEspbiLocation
Parent: Location
Id: LtEspbiLocation
* ^url = "http://esveikata.lt/fhir/StructureDefinition/lt-espbi-location"
* ^status = #draft
* id MS
* id ^short = "Resurso identifikatorius / Logical id of the resource"
* id ^definition = "Resurso unikalus identifikatorius, naudojamas resurso URL adresuose. Kartą priskirta, ši reikšmė niekada nesikeičia."
* identifier ..1 MS
* identifier ^short = "Unikalus vietos identifikatorius / Unique location identifier"
* identifier ^definition = "Unikalus vietos identifikatorius."
* status MS
* status ^short = "Vietos būsena / Location status"
* status ^definition = "Vietos būsena.\r\n\r\nPagal FHIR R5 turi būti naudojamas reikšmių sąrašas http://hl7.org/fhir/ValueSet/location-status. Galimos reikšmės: active | suspended | inactive."
* name MS
* name ^short = "Vietos pavadinimas / Location name"
* name ^definition = "Vietos pavadinimas."
* type 1..1 MS
* type ^short = "Vietos tipas / Location type"
* type ^definition = "Vietos tipas pagal klasifikatorių (pvz., Intensyviosios terapijos skyrius, Širdies ir kraujagyslių diagnostikos arba terapijos skyrius, Radiacinės onkologijos skyrius ir pan.)."
* type.coding 1..1
* type.coding.system 1..
* type.coding.code 1..
* type.coding.display MS
* managingOrganization 1.. MS
* managingOrganization only Reference($lt-espbi-organization)
* managingOrganization ^short = "Atsakinga organizacija / Responsible organization"
* managingOrganization ^definition = "Nuoroda į atsakingą organizaciją, kuriai priklauso ši vieta."
* managingOrganization.reference 1..
* partOf only Reference(LtEspbiLocation)
* partOf MS
* partOf ^short = "Kita vieta, kurios dalis yra ši vieta / Another Location this one is physically a part of"
* partOf ^definition = "Nuoroda į aukštesnio lygio Location (pvz. skyrius priklauso pastatui)."
* partOf.reference 1..