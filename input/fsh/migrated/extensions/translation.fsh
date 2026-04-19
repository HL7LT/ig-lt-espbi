Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm

Extension: Translation
Id: translation
Title: "Translation"
Description: """Language translation from base language of resource to another language, used to provide translations for strings, including markdown. Generally, the type of the translation extension SHOULD match that of the element being extended.

It is also allowed to provide translations of elements of type `code`, which may be appropriate to use for rendering when the code itself is a natural language word (usually in English). In such cases, the translation is not provided as an alternative code, and is not intended for machine interpretation. This extension should never appear on a code that is part of a Coding, as placing the translation on Coding.display is more appropriate."""
Context: string, markdown, code
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #fhir
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 3
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #trial-use
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics"
* ^extension[=].valueCode = #can-bind
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113883.4.642.5.1583"
* ^version = "5.3.0-ballot-tc1"
* ^experimental = false
* ^date = "2013-12-05"
* ^publisher = "HL7 International / FHIR Infrastructure"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/fiwg"
* ^jurisdiction = $m49.htm#001
* . ^short = "Language Translation (Localization)"
* . ^definition = "Language translation from base language of resource to another language, used to provide translations for strings, including markdown. Generally, the type of the translation extension SHOULD match that of the element being extended."
* extension contains
    lang 1..1 and
    content 1..1
* extension[lang] ^short = "Code for Language"
* extension[lang] ^definition = "Code for Language."
* extension[lang].url only uri
* extension[lang].value[x] 1..
* extension[lang].value[x] only code
* extension[lang].value[x] from AllLanguages (required)
* extension[lang].value[x] ^binding.description = "IETF language tag for a human language"
* extension[lang].value[x] ^binding.additional.purpose = #starter
* extension[lang].value[x] ^binding.additional.valueSet = "http://hl7.org/fhir/ValueSet/languages"
* extension[content] ^short = "Content in other Language"
* extension[content] ^definition = "Content in other Language."
* extension[content] ^comment = "The type (string or markdown) must match the context in which it is used."
* extension[content].url only uri
* extension[content].value[x] 1..
* extension[content].value[x] only string or markdown

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: Translation
Target: "http://hl7.org/v3"
* -> "ST.translation"