Extension: ElabHealthcareServiceLabTestExtradata
Id: elab-ext-healthcareService-labTestExtradata
Description: "Papildomi duomenys apie tyrimus iš MNKV IS."
Context: HealthcareService
* ^version = "0.3.28"
* ^date = "2023-06-16"
* ^publisher = "Registrų Centras"
* ^contact.name = "Registrų Centras"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "https://www.registrucentras.lt/"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "esveikata@registrucentras.lt"
* ^jurisdiction = urn:iso:std:iso:3166#LT "Lithuania"
* . ^short = "Papildomi duomenys apie tyrimus iš MNKV IS."
* . ^definition = "Papildomi duomenys apie tyrimus iš MNKV IS."
* extension contains
    startDate 0..1 and
    endDate 0..1 and
    specimenCollectionOnly 1..1 and
    performedByOrganization 1..1 and
    performedBySubcontractor 1..1 and
    performedByForeignSubcontractor 1..1 and
    subcontractor 0..*
* extension[startDate] ^short = "Tyrimo galiojimo pradžios data"
* extension[startDate].url only uri
* extension[startDate].value[x] only dateTime
* extension[endDate] ^short = "Tyrimo galiojimo pabaigos data"
* extension[endDate].url only uri
* extension[endDate].value[x] only dateTime
* extension[specimenCollectionOnly] ^short = "Požymis, kad padalinyje tik paimamas tyrimo ėminys"
* extension[specimenCollectionOnly] ^definition = "Požymis, kad padalinyje tik paimamas tyrimo ėminys. Šio požymio neturi konsoliduoti juridinio asmens atliekamų tyrimų sąrašai, nes tas pats juridinis asmuo (įstaiga) vienuose padaliniuose gali tik imti ėminį, o kituose padaliniuose – ir atlikti tyrimą vietoje."
* extension[specimenCollectionOnly].url only uri
* extension[specimenCollectionOnly].value[x] 1..
* extension[specimenCollectionOnly].value[x] only boolean
* extension[performedByOrganization] ^short = "Požymis, kad tyrimą atlieka juridinis asmuo, kuriam priklauso padalinys"
* extension[performedByOrganization] ^definition = "Požymis, kad tyrimą atlieka juridinis asmuo, kuriam priklauso padalinys. Šio požymio neturi konsoliduoti juridinio asmens atliekamų tyrimų sąrašai."
* extension[performedByOrganization].url only uri
* extension[performedByOrganization].value[x] 1..
* extension[performedByOrganization].value[x] only boolean
* extension[performedBySubcontractor] ^short = "Požymis, kad tyrimą atlieka kiti juridiniai asmenys"
* extension[performedBySubcontractor] ^definition = "Požymis, kad tyrimą atlieka kiti juridiniai asmenys, su kuriais sudaryta sutartis dėl tyrimų atlikimo. Tą patį tyrimą juridinis asmuo gali ir atlikti pats, ir atiduoti subrangovams."
* extension[performedBySubcontractor].url only uri
* extension[performedBySubcontractor].value[x] only boolean
* extension[performedByForeignSubcontractor] ^short = "Požymis, kad tyrimą atlieka užsienyje veikiantys juridiniai asmenys"
* extension[performedByForeignSubcontractor] ^definition = "Požymis, kad tyrimą atlieka užsienyje veikiantys juridiniai asmenys, su kuriais sudaryta sutartis dėl tyrimų atlikimo."
* extension[performedByForeignSubcontractor].url only uri
* extension[performedByForeignSubcontractor].value[x] 1..
* extension[performedByForeignSubcontractor].value[x] only boolean
* extension[subcontractor] ^short = "Nuoroda į kitas įstaigas"
* extension[subcontractor] ^definition = "Nuoroda į kitas įstaigas (juridinius asmenis), kurios pagal sutartį su paslaugos tiekėju gali atlikti tyrimo analizę."
* extension[subcontractor].url only uri
* extension[subcontractor].value[x] only Reference(Organization)
* value[x] only boolean or dateTime or Reference