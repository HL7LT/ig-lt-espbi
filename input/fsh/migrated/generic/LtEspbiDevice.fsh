Profile: LtEspbiDevice
Parent: Device
Id: LtEspbiDevice
* ^url = "http://esveikata.lt/fhir/StructureDefinition/lt-espbi-device"
* ^status = #draft
* id MS
* id ^short = "Resurso identifikatorius / Logical id of the resource"
* id ^definition = "Resurso unikalus identifikatorius, naudojamas resurso URL adresuose. Kartą priskirta, ši reikšmė niekada nesikeičia."
* manufacturer 1.. MS
* manufacturer ^short = "Prietaiso ar tyrimui naudoto testo (gaminio) gamintojo pavadinimas / Name of device manufacturer"
* manufactureDate MS
* manufactureDate ^short = "Prietaiso pagaminimo data / Date when the device was made"
* lotNumber MS
* lotNumber ^short = "Gamintojo nurodytas prietaiso partijos arba serijos Nr. / Lot number of manufacture"
* name MS
* name ^short = "MPP firminis pavadinimas / The name or names of the device as known to the manufacturer and/or patient"
* name.value ^short = "MPP firminis pavadinimas / The term that names the device"
* name.type ^short = "Pavadinimo tipas / Name type"
* name.type ^definition = "Pagal FHIR R5 turi būti naudojamas reikšmių sąrašas http://hl7.org/fhir/ValueSet/device-nametype.\r\n\r\nGalimos reikšmės: registered-name  - registruotas pavadinimas | user-friendly-name - naudotojui suprantamas pavadinimas | patient-reported-name - paciento pateiktas pavadinimas."
* modelNumber MS
* modelNumber ^short = "Prietaiso modelis / The manufacturer's model number for the device"
* type 1..1 MS
* type ^short = "Prietaiso tipas ar tyrimui naudoto testo (gaminio) pavadinimas / The kind or type of device"
* type ^definition = "Prietaiso tipas.\r\nGalimos reikšmės nurodytos klasifikatoriuje device-type (http://esveikata.lt/classifiers/deviceType).\r\n\r\nTyrimui naudoto testo (gaminio) pavadinimas. Galimos reikšmės nurodytos klasifikatoriuje http://esveikata.lt/classifiers/DiagnosticTest/ItemCode."
* type.coding 1..1
* type.coding.system 1..
* type.coding.code 1..
* type.coding.display 1..
* owner MS
* owner ^short = "'Įstaiga, kurioje yra prietaisas / Organization responsible for device"