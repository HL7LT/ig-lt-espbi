Alias: $lt-espbi-organization = http://esveikata.lt/fhir/StructureDefinition/lt-espbi-organization

Extension: LtEspbiExtDepartment
Id: LtEspbiExtDepartment
Description: "Sveikatos priežiūros įstaigos skyrius, kuriame dirba sveikatos priežiūros specialistas / Department(s) where specialists works "
Context: PractitionerRole
* ^url = "http://esveikata.lt/Profile/ltnhr-practitioner/department"
* ^status = #draft
* . ^short = "Sveikatos priežiūros įstaigos skyrius, kuriame dirba sveikatos priežiūros specialistas / Department(s) where specialists works "
* . ^definition = "Sveikatos priežiūros įstaigos skyrius, kuriame dirba sveikatos priežiūros specialistas. Jis gali būti įdarbintas keliose sveikatos priežiūros įstaigos skyriuose."
* extension contains
    organization 1..1 and
    employment 0..*
* extension[organization] ^short = "Skyrius(iai), kur dirba specialistas / Department(s) where specialists works"
* extension[organization] ^definition = "Nuoroda į sveikatos priežiūros įstaigos skyriaus resursą, kuriame dirba sveikatos priežiūros specialistas."
* extension[organization].value[x] 1..
* extension[organization].value[x] only Reference($lt-espbi-organization)
* extension[organization].value[x].id ..0
* extension[organization].value[x].extension ..0
* extension[organization].value[x].reference 1..
* extension[organization].value[x].type ..0
* extension[organization].value[x].identifier ..0
* extension[organization].value[x].display ..0
* extension[employment] ^short = "Specialisto įdarbinimo tam tikrame skyriuje informacija"
* extension[employment] ^definition = "Specialisto įdarbinimo tam tikrame skyriuje informacija."
* extension[employment].extension 1..
* extension[employment].extension contains
    period 1..1 and
    license 0..1
* extension[employment].extension[period] ^short = "Periodas, kuriuo specialistas dirba šiame skyriuje"
* extension[employment].extension[period] ^definition = "Nuo kada ir iki kada sveikatos priežiūros specialistas įdarbintas sveikatos priežiūros įstaigos skyriuje. Nurodomi duomenys - metai, mėnuo, diena."
* extension[employment].extension[period].value[x] 1..
* extension[employment].extension[period].value[x] only Period
* extension[employment].extension[period].value[x].id ..0
* extension[employment].extension[period].value[x].extension ..0
* extension[employment].extension[period].value[x].start 1..
* extension[employment].extension[period].value[x].start ^short = "Periodo pradžios data. Patenka į periodą imtinai"
* extension[employment].extension[period].value[x].start ^definition = "Periodo pradžios data. Patenka į periodą imtinai."
* extension[employment].extension[period].value[x].end ^definition = "Periodo pabaigos data. Jeigu datos nėra yra laikoma, kad periodas tęsiasi (nėra pasibaigęs)."
* extension[employment].extension[license] ^short = "Licencija pagal, kuria specialistas dirba šiame skyriuje "
* extension[employment].extension[license] ^definition = "Licencija pagal, kuria specialistas dirba šiame skyriuje "
* extension[employment].extension[license].value[x] 1..
* extension[employment].extension[license].value[x] only CodeableConcept
* extension[employment].extension[license].value[x].id ..0
* extension[employment].extension[license].value[x].extension ..0
* extension[employment].extension[license].value[x].coding 1..1
* extension[employment].extension[license].value[x].coding.id ..0
* extension[employment].extension[license].value[x].coding.extension ..0
* extension[employment].extension[license].value[x].coding.system 1..
* extension[employment].extension[license].value[x].coding.system = "http://esveikata.lt/classifiers/LicenceCode"
* extension[employment].extension[license].value[x].coding.system ^short = "Unikalus klasifikatoriaus pavadinimas (URI)."
* extension[employment].extension[license].value[x].coding.system ^definition = "Unikalus klasifikatoriaus pavadinimas (URI).\r\nReikšmė pagal nutylėjimą http://esveikata.lt/classifiers/LicenceCode."
* extension[employment].extension[license].value[x].coding.version ..0
* extension[employment].extension[license].value[x].coding.code 1..
* extension[employment].extension[license].value[x].coding.code ^short = "Licencijos kodas iš klasifikatoriaus."
* extension[employment].extension[license].value[x].coding.display ..0
* extension[employment].extension[license].value[x].coding.userSelected ..0
* extension[employment].extension[license].value[x].text ..0
* url = "http://esveikata.lt/Profile/ltnhr-practitioner/department" (exactly)