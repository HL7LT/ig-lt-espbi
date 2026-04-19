Alias: $RepeatOperation = http://esveikata.lt/classifiers/NGN/RepeatOperation
Alias: $Dystocia = http://esveikata.lt/classifiers/NGN/Dystocia
Alias: $FetusConditionIssues = http://esveikata.lt/classifiers/NGN/FetusConditionIssues
Alias: $FetusBreechPresentation = http://esveikata.lt/classifiers/NGN/FetusBreechPresentation
Alias: $OtherIndications = http://esveikata.lt/classifiers/NGN/OtherIndications

ValueSet: LtEspbiVsCesareanSectionIndication
Id: cesarean-section-indication
Description: "Cezario pjūvio indikacijos / Indications for Cesarean section"
* ^url = "http://esveikata.lt/fhir/ValueSet/lt-espbi-vs-cesarean-section-indication"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = false
* $RepeatOperation#1 "Randas po buvusios cezario pjūvio operacijos (vienos)"
* $RepeatOperation#2 "Randas po buvusios cezario pjūvio operacijos (dviejų ir daugiau)"
* $RepeatOperation#3 "Įvykęs (gresiantis) gimdos plyšimas, esant randui gimdoje"
* $RepeatOperation#4 "Randas po kitų gimdos operacijų"
* $Dystocia#1 "Neprogresuojantis gimdymas"
* $Dystocia#2 "Kliniškai siauras dubuo"
* $Dystocia#3 "Nepavykęs gimdymo sužadinimas"
* $Dystocia#4 "Kliūtis gimdymo takuose"
* $Dystocia#5 "Atloštinė vaisiaus pirmeiga"
* $Dystocia#6 "Skersinė (įstrižinė) vaisiaus pirmeiga"
* $Dystocia#7 "Stambus vaisius"
* $FetusConditionIssues#1 "Įtariama nestabili vaisiaus būklė"
* $FetusConditionIssues#2 "Komplikuota vaisiaus liga"
* $FetusConditionIssues#3 "Komplikuotas daugiavaisis nėštumas"
* $FetusBreechPresentation#1 "Sėdmeninė pirmeiga"
* $OtherIndications#1 "Gyvybei grėsmingas kraujavimas"
* $OtherIndications#2 "Sunki preeklampsija / eklampsija"
* $OtherIndications#3 "Visiška placentos pirmeiga"
* $OtherIndications#4 "Būklė po lytinių organų  plastinės operacijos"
* $OtherIndications#5 "Nėščiosios liga"