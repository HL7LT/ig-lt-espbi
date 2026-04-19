CodeSystem: LtLabResultsBmrk
Id: lt-lab-results-bmrk
Title: "LT LAB atsakymų BMRK"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2025-06-17T19:20:03.46+00:00"
* ^language = #lt
* ^version = "0.3.28"
* ^versionAlgorithmString = "semver"
* ^status = #active
* ^experimental = false
* ^date = "2024-03-29T00:00:00Z"
* ^publisher = "Registrų Centras"
* ^contact.name = "Registrų Centras"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "https://www.registrucentras.lt/"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "esveikata@registrucentras.lt"
* ^jurisdiction = urn:iso:std:iso:3166#LT "Lithuania"
* ^caseSensitive = true
* ^content = #complete
* ^property[0].code = #display
* ^property[=].uri = "http://terminology.hl7.org/CodeSystem/designation-usage|display"
* ^property[=].description = "Display"
* ^property[=].type = #string
* ^property[+].code = #snomed-code
* ^property[=].description = "SNOMED kodas"
* ^property[=].type = #Coding
* ^property[+].code = #snomed-fsn
* ^property[=].type = #string
* ^property[+].code = #status
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#status"
* ^property[=].description = "Status"
* ^property[=].type = #code
* #10828004 "Teigiamas"
* #10828004 ^designation.language = #en
* #10828004 ^designation.use.code = #snomed-fsn
* #10828004 ^designation.value = "Positive (qualifier value)"
* #10828004 ^property[0].code = #status
* #10828004 ^property[=].valueCode = #active
* #10828004 ^property[+].code = #snomed-code
* #10828004 ^property[=].valueCoding.system = "snomed-ct"
* #10828004 ^property[=].valueCoding = snomed-ct#10828004
* #117444000 "Tekstas (aprašomasis)"
* #117444000 ^designation.language = #en
* #117444000 ^designation.use.code = #snomed-fsn
* #117444000 ^designation.value = "Text value (qualifier value)"
* #117444000 ^property[0].code = #status
* #117444000 ^property[=].valueCode = #active
* #117444000 ^property[+].code = #snomed-code
* #117444000 ^property[=].valueCoding.system = "snomed-ct"
* #117444000 ^property[=].valueCoding = snomed-ct#117444000
* #260373001 "Rasta"
* #260373001 ^designation.language = #en
* #260373001 ^designation.use.code = #snomed-fsn
* #260373001 ^designation.value = "Detected (qualifier value)"
* #260373001 ^property[0].code = #status
* #260373001 ^property[=].valueCode = #active
* #260373001 ^property[+].code = #snomed-code
* #260373001 ^property[=].valueCoding.system = "snomed-ct"
* #260373001 ^property[=].valueCoding = snomed-ct#260373001
* #260385009 "Neigiamas"
* #260385009 ^designation.language = #en
* #260385009 ^designation.use.code = #snomed-fsn
* #260385009 ^designation.value = "Negative (qualifier value)"
* #260385009 ^property[0].code = #status
* #260385009 ^property[=].valueCode = #active
* #260385009 ^property[+].code = #snomed-code
* #260385009 ^property[=].valueCoding.system = "snomed-ct"
* #260385009 ^property[=].valueCoding = snomed-ct#260385009
* #260415000 "Nerasta"
* #260415000 ^designation.language = #en
* #260415000 ^designation.use.code = #snomed-fsn
* #260415000 ^designation.value = "Not detected (qualifier value)"
* #260415000 ^property[0].code = #status
* #260415000 ^property[=].valueCode = #active
* #260415000 ^property[+].code = #snomed-code
* #260415000 ^property[=].valueCoding.system = "snomed-ct"
* #260415000 ^property[=].valueCoding = snomed-ct#260415000
* #261029002 "Sterilu"
* #261029002 ^designation.language = #en
* #261029002 ^designation.use.code = #snomed-fsn
* #261029002 ^designation.value = "Sterile (qualifier value) "
* #261029002 ^property[0].code = #status
* #261029002 ^property[=].valueCode = #active
* #261029002 ^property[+].code = #snomed-code
* #261029002 ^property[=].valueCoding.system = "snomed-ct"
* #261029002 ^property[=].valueCoding = snomed-ct#261029002
* #264868006 "Augimo nėra"
* #264868006 ^designation.language = #en
* #264868006 ^designation.use.code = #snomed-fsn
* #264868006 ^designation.value = "No growth (qualifier value)"
* #264868006 ^property[0].code = #status
* #264868006 ^property[=].valueCode = #active
* #264868006 ^property[+].code = #snomed-code
* #264868006 ^property[=].valueCoding.system = "snomed-ct"
* #264868006 ^property[=].valueCoding = snomed-ct#264868006
* #371928007 "Kliniškai nereikšminga"
* #371928007 ^designation.language = #en
* #371928007 ^designation.use.code = #snomed-fsn
* #371928007 ^designation.value = "Not significant (qualifier value)"
* #371928007 ^property[0].code = #status
* #371928007 ^property[=].valueCode = #active
* #371928007 ^property[+].code = #snomed-code
* #371928007 ^property[=].valueCoding.system = "snomed-ct"
* #371928007 ^property[=].valueCoding = snomed-ct#371928007
* #386134007 "Kliniškai reikšminga"
* #386134007 ^designation.language = #en
* #386134007 ^designation.use.code = #snomed-fsn
* #386134007 ^designation.value = "Significant (qualifier value)"
* #386134007 ^property[0].code = #status
* #386134007 ^property[=].valueCode = #active
* #386134007 ^property[+].code = #snomed-code
* #386134007 ^property[=].valueCoding.system = "snomed-ct"
* #386134007 ^property[=].valueCoding = snomed-ct#386134007
* #62604006 "Užteršimas"
* #62604006 ^designation.language = #en
* #62604006 ^designation.use.code = #snomed-fsn
* #62604006 ^designation.value = "Contaminated (qualifier value)"
* #62604006 ^property[0].code = #status
* #62604006 ^property[=].valueCode = #active
* #62604006 ^property[+].code = #snomed-code
* #62604006 ^property[=].valueCoding.system = "snomed-ct"
* #62604006 ^property[=].valueCoding = snomed-ct#62604006
* #863956004 "Nesterilu"
* #863956004 ^designation.language = #en
* #863956004 ^designation.use.code = #snomed-fsn
* #863956004 ^designation.value = "Non-sterile (qualifier value) "
* #863956004 ^property[0].code = #status
* #863956004 ^property[=].valueCode = #active
* #863956004 ^property[+].code = #snomed-code
* #863956004 ^property[=].valueCoding = snomed-ct#863956004