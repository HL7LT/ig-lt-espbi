CodeSystem: LtLabSpecimens
Id: lt-lab-specimens
Title: "LT LAB ėminiai/mėginiai"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2024-08-07T16:50:01.234+00:00"
* ^language = #lt
* ^version = "0.3.28"
* ^status = #active
* ^experimental = false
* ^date = "2024-04-08T00:00:00Z"
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
* ^property[=].description = "SNOMED ilgas pavadinimas"
* ^property[=].type = #string
* #AbdAbs "Intraabdominalinio absceso turinys"
* #AbdAbs ^property[0].code = #snomed-code
* #AbdAbs ^property[=].valueCoding.system = "snomed-ct"
* #AbdAbs ^property[=].valueCoding = snomed-ct#16211211000119102
* #AbdAbs ^property[+].code = #snomed-fsn
* #AbdAbs ^property[=].valueString = "Specimen from intra-abdominal abscess (specimen)"
* #AbdSw "Pilvo tiriamoji medžiaga (tamponas)"
* #AbdSw ^property[0].code = #snomed-code
* #AbdSw ^property[=].valueCoding.system = "snomed-ct"
* #AbdSw ^property[=].valueCoding = snomed-ct#472904006
* #AbdSw ^property[+].code = #snomed-fsn
* #AbdSw ^property[=].valueString = "Swab from abdomen (specimen)"
* #Abs "Absceso turinys"
* #Abs ^property[0].code = #snomed-code
* #Abs ^property[=].valueCoding.system = "snomed-ct"
* #Abs ^property[=].valueCoding = snomed-ct#119371008
* #Abs ^property[+].code = #snomed-fsn
* #Abs ^property[=].valueString = "Specimen from abscess (specimen)"
* #AbsTis "Absceso audiniai"
* #AbsTis ^property[0].code = #snomed-code
* #AbsTis ^property[=].valueCoding.system = "snomed-ct"
* #AbsTis ^property[=].valueCoding = snomed-ct#258407001
* #AbsTis ^property[+].code = #snomed-fsn
* #AbsTis ^property[=].valueString = "Abscess tissue (specimen)"
* #AdpTis "Riebaliniai audiniai"
* #AdpTis ^property[0].code = #snomed-code
* #AdpTis ^property[=].valueCoding.system = "snomed-ct"
* #AdpTis ^property[=].valueCoding = snomed-ct#258414004
* #AdpTis ^property[+].code = #snomed-fsn
* #AdpTis ^property[=].valueString = "Adipose tissue specimen (specimen)"
* #AdrBp "Antinksčio bioptatas"
* #AdrBp ^property[0].code = #snomed-code
* #AdrBp ^property[=].valueCoding.system = "snomed-ct"
* #AdrBp ^property[=].valueCoding = snomed-ct#309142006
* #AdrBp ^property[+].code = #snomed-fsn
* #AdrBp ^property[=].valueString = "Adrenal biopsy specimen (specimen)"
* #AdrTis "Antinksčio audiniai"
* #AdrTis ^property[0].code = #snomed-code
* #AdrTis ^property[=].valueCoding.system = "snomed-ct"
* #AdrTis ^property[=].valueCoding = snomed-ct#303247002
* #AdrTis ^property[+].code = #snomed-fsn
* #AdrTis ^property[=].valueString = "Adrenal tissue specimen (specimen)"
* #AeCultBl "Kraujas, aerobinis buteliukas"
* #AeCultBl ^property[0].code = #snomed-code
* #AeCultBl ^property[=].valueCoding.system = "snomed-ct"
* #AeCultBl ^property[=].valueCoding = snomed-ct#866033003
* #AeCultBl ^property[+].code = #snomed-fsn
* #AeCultBl ^property[=].valueString = "Blood specimen in aerobic blood culture bottle (specimen)"
* #AmnF "Amniono skystis"
* #AmnF ^property[0].code = #snomed-code
* #AmnF ^property[=].valueCoding.system = "snomed-ct"
* #AmnF ^property[=].valueCoding = snomed-ct#119373006
* #AmnF ^property[+].code = #snomed-fsn
* #AmnF ^property[=].valueString = "Amniotic fluid specimen (specimen)"
* #AnCultBl "Kraujas, anaerobinis buteliukas"
* #AnCultBl ^property[0].code = #snomed-code
* #AnCultBl ^property[=].valueCoding.system = "snomed-ct"
* #AnCultBl ^property[=].valueCoding = snomed-ct#866032008
* #AnCultBl ^property[+].code = #snomed-fsn
* #AnCultBl ^property[=].valueString = "Blood specimen in anaerobic blood culture bottle (specimen)"
* #AnStamp "Išangės antspaudas ant lipnios skaidrios juostelės"
* #AnStamp ^property[0].code = #snomed-code
* #AnStamp ^property[=].valueCoding.system = "snomed-ct"
* #AnStamp ^property[=].valueCoding = snomed-ct#258664003
* #AnStamp ^property[+].code = #snomed-fsn
* #AnStamp ^property[=].valueString = "Scotch tape slide specimen (specimen)"
* #AnaBp "Išangės bioptatas"
* #AnaBp ^property[0].code = #snomed-code
* #AnaBp ^property[=].valueCoding.system = "snomed-ct"
* #AnaBp ^property[=].valueCoding = snomed-ct#309265008
* #AnaBp ^property[+].code = #snomed-fsn
* #AnaBp ^property[=].valueString = "Anal biopsy specimen (specimen)"
* #AnaSw "Išangė (tamponas)"
* #AnaSw ^property[0].code = #snomed-code
* #AnaSw ^property[=].valueCoding.system = "snomed-ct"
* #AnaSw ^property[=].valueCoding = snomed-ct#258527002
* #AnaSw ^property[+].code = #snomed-fsn
* #AnaSw ^property[=].valueString = "Anal swab (specimen)"
* #AnkJoF "Kulkšnies sąnario sinovinis skystis"
* #AnkJoF ^property[0].code = #snomed-code
* #AnkJoF ^property[=].valueCoding.system = "snomed-ct"
* #AnkJoF ^property[=].valueCoding = snomed-ct#167875003
* #AnkJoF ^property[+].code = #snomed-fsn
* #AnkJoF ^property[=].valueString = "Ankle joint synovial fluid (specimen)"
* #AntNoSw "Nosies priekinių landų sekretas (tamponas)"
* #AntNoSw ^property[0].code = #snomed-code
* #AntNoSw ^property[=].valueCoding.system = "snomed-ct"
* #AntNoSw ^property[=].valueCoding = snomed-ct#697989009
* #AntNoSw ^property[+].code = #snomed-fsn
* #AntNoSw ^property[=].valueString = "Anterior nares swab (specimen)"
* #AnuTis "Išangės audiniai"
* #AnuTis ^property[0].code = #snomed-code
* #AnuTis ^property[=].valueCoding.system = "snomed-ct"
* #AnuTis ^property[=].valueCoding = snomed-ct#128156008
* #AnuTis ^property[+].code = #snomed-fsn
* #AnuTis ^property[=].valueString = "Tissue specimen from anus (specimen)"
* #AorTis "Aortos audiniai"
* #AorTis ^property[0].code = #snomed-code
* #AorTis ^property[=].valueCoding.system = "snomed-ct"
* #AorTis ^property[=].valueCoding = snomed-ct#725372003
* #AorTis ^property[+].code = #snomed-fsn
* #AorTis ^property[=].valueString = "Tissue specimen from aorta (specimen)"
* #ApxSw "Kirmėlinės ataugos eksudatas (tamponas)"
* #ApxSw ^property[0].code = #snomed-code
* #ApxSw ^property[=].valueCoding.system = "snomed-ct"
* #ApxSw ^property[=].valueCoding = snomed-ct#472890006
* #ApxSw ^property[+].code = #snomed-fsn
* #ApxSw ^property[=].valueString = "Swab from appendix (specimen)"
* #AqHumF "Akies kamerų skystis"
* #AqHumF ^property[0].code = #snomed-code
* #AqHumF ^property[=].valueCoding.system = "snomed-ct"
* #AqHumF ^property[=].valueCoding = snomed-ct#258444001
* #AqHumF ^property[+].code = #snomed-fsn
* #AqHumF ^property[=].valueString = "Aqueous humor specimen (specimen)"
* #ArtBl "Kraujas, arterinis"
* #ArtBl ^property[0].code = #snomed-code
* #ArtBl ^property[=].valueCoding.system = "snomed-ct"
* #ArtBl ^property[=].valueCoding = snomed-ct#122552005
* #ArtBl ^property[+].code = #snomed-fsn
* #ArtBl ^property[=].valueString = "Arterial blood specimen (specimen)"
* #ArtBp "Arterijos bioptatas"
* #ArtBp ^property[0].code = #snomed-code
* #ArtBp ^property[=].valueCoding.system = "snomed-ct"
* #ArtBp ^property[=].valueCoding = snomed-ct#432097003
* #ArtBp ^property[+].code = #snomed-fsn
* #ArtBp ^property[=].valueString = "Specimen from artery obtained by biopsy (specimen)"
* #ArtUmbBl "Kraujas, iš virkštelės, arterinis"
* #ArtUmbBl ^property[0].code = #snomed-code
* #ArtUmbBl ^property[=].valueCoding.system = "snomed-ct"
* #ArtUmbBl ^property[=].valueCoding = snomed-ct#703430008
* #ArtUmbBl ^property[+].code = #snomed-fsn
* #ArtUmbBl ^property[=].valueString = "Arterial cord blood specimen (specimen)"
* #AutpSw "Autopsijos metu paimta tiriamoji medžiaga (tamponas)"
* #AutpSw ^property[0].code = #snomed-code
* #AutpSw ^property[=].valueCoding.system = "snomed-ct"
* #AutpSw ^property[=].valueCoding = snomed-ct#446577002
* #AutpSw ^property[+].code = #snomed-fsn
* #AutpSw ^property[=].valueString = "Swab obtained during autopsy (specimen)"
* #AxlSw "Pažastis (tamponas)"
* #AxlSw ^property[0].code = #snomed-code
* #AxlSw ^property[=].valueCoding.system = "snomed-ct"
* #AxlSw ^property[=].valueCoding = snomed-ct#445364004
* #AxlSw ^property[+].code = #snomed-fsn
* #AxlSw ^property[=].valueString = "Swab of axilla (specimen)"
* #B9NC "Kraujas su citratu"
* #BK2E/K3E "Kraujas su K2/K3 EDTA"
* #BK2E/K3E ^property[0].code = #snomed-code
* #BK2E/K3E ^property[=].valueCoding.system = "snomed-ct"
* #BK2E/K3E ^property[=].valueCoding = snomed-ct#445295009
* #BK2E/K3E ^property[+].code = #snomed-fsn
* #BK2E/K3E ^property[=].valueString = "Whole blood specimen with edetic acid (specimen) "
* #BLH "Kraujas su ličio heparinu"
* #BS "Sauso kraujo lašas"
* #BS ^property[0].code = #snomed-code
* #BS ^property[=].valueCoding.system = "snomed-ct"
* #BS ^property[=].valueCoding = snomed-ct#440500007
* #BS ^property[+].code = #snomed-fsn
* #BS ^property[=].valueString = "Dried blood spot specimen (specimen)"
* #BalF "Bronchoalveolinio lavažo skystis"
* #BalF ^property[0].code = #snomed-code
* #BalF ^property[=].valueCoding.system = "snomed-ct"
* #BalF ^property[=].valueCoding = snomed-ct#258607008
* #BalF ^property[+].code = #snomed-fsn
* #BalF ^property[=].valueString = "Bronchoalveolar lavage fluid specimen (specimen)"
* #BartCystF "Bartolinio liaukos cistos skystis"
* #BartCystF ^property[0].code = #snomed-code
* #BartCystF ^property[=].valueCoding.system = "snomed-ct"
* #BartCystF ^property[=].valueCoding = snomed-ct#446128003
* #BartCystF ^property[+].code = #snomed-fsn
* #BartCystF ^property[=].valueString = "Fluid specimen from Bartholin gland cyst (specimen)"
* #BartGlAbs "Bartolinio liaukos absceso turinys"
* #BartGlAbs ^property[0].code = #snomed-code
* #BartGlAbs ^property[=].valueCoding.system = "snomed-ct"
* #BartGlAbs ^property[=].valueCoding = snomed-ct#16215171000119102
* #BartGlAbs ^property[+].code = #snomed-fsn
* #BartGlAbs ^property[=].valueString = "Specimen from abscess of Bartholin gland (specimen)"
* #Bhirudin "Kraujas su hirudinu"
* #BilTrTis "Tulžies takų audiniai"
* #BilTrTis ^property[0].code = #snomed-code
* #BilTrTis ^property[=].valueCoding.system = "snomed-ct"
* #BilTrTis ^property[=].valueCoding = snomed-ct#309491006
* #BilTrTis ^property[+].code = #snomed-fsn
* #BilTrTis ^property[=].valueString = "Biliary tract tissue specimen (specimen)"
* #Bile "Tulžis"
* #Bile ^property[0].code = #snomed-code
* #Bile ^property[=].valueCoding.system = "snomed-ct"
* #Bile ^property[=].valueCoding = snomed-ct#119341000
* #Bile ^property[+].code = #snomed-fsn
* #Bile ^property[=].valueString = "Bile specimen (specimen)"
* #BiteWdSw "Kąstinės žaizdos eksudatas (tamponas)"
* #BiteWdSw ^property[0].code = #snomed-code
* #BiteWdSw ^property[=].valueCoding.system = "snomed-ct"
* #BiteWdSw ^property[=].valueCoding = snomed-ct#28971000087101
* #BiteWdSw ^property[+].code = #snomed-fsn
* #BiteWdSw ^property[=].valueString = "Swab from bite wound (specimen)"
* #Bl "Kraujas"
* #Bl ^property[0].code = #snomed-code
* #Bl ^property[=].valueCoding.system = "snomed-ct"
* #Bl ^property[=].valueCoding = snomed-ct#119297000
* #Bl ^property[+].code = #snomed-fsn
* #Bl ^property[=].valueString = "Blood specimen (specimen)"
* #BlComp "Kraujo komponentas"
* #BlComp ^property[0].code = #snomed-code
* #BlComp ^property[=].valueCoding.system = "snomed-ct"
* #BlComp ^property[=].valueCoding = snomed-ct#119300005
* #BlComp ^property[+].code = #snomed-fsn
* #BlComp ^property[=].valueString = "Specimen from blood product (specimen)"
* #BlDonBl "Kraujas, kraujo donoro"
* #BlDonBl ^property[0].code = #snomed-code
* #BlDonBl ^property[=].valueCoding.system = "snomed-ct"
* #BlDonBl ^property[=].valueCoding = snomed-ct#122560006
* #BlDonBl ^property[+].code = #snomed-fsn
* #BlDonBl ^property[=].valueString = "Blood specimen from blood donor (specimen)"
* #BlDonEry "Eritrocitai, kraujo donoro"
* #BlDonEry ^property[0].code = #snomed-code
* #BlDonEry ^property[=].valueCoding.system = "snomed-ct"
* #BlDonEry ^property[=].valueCoding = snomed-ct#122581006
* #BlDonEry ^property[+].code = #snomed-fsn
* #BlDonEry ^property[=].valueString = "Erythrocyte specimen from blood donor (specimen)"
* #BlDonSer "Serumas, kraujo donoro"
* #BlDonSer ^property[0].code = #snomed-code
* #BlDonSer ^property[=].valueCoding.system = "snomed-ct"
* #BlDonSer ^property[=].valueCoding = snomed-ct#122589008
* #BlDonSer ^property[+].code = #snomed-fsn
* #BlDonSer ^property[=].valueString = "Serum specimen from blood donor (specimen)"
* #BldBp "Šlapimo pūslės bioptatas"
* #BldBp ^property[0].code = #snomed-code
* #BldBp ^property[=].valueCoding.system = "snomed-ct"
* #BldBp ^property[=].valueCoding = snomed-ct#309273004
* #BldBp ^property[+].code = #snomed-fsn
* #BldBp ^property[=].valueString = "Bladder biopsy specimen (specimen)"
* #BldStn "Šlapimo pūslės akmuo"
* #BldStn ^property[0].code = #snomed-code
* #BldStn ^property[=].valueCoding.system = "snomed-ct"
* #BldStn ^property[=].valueCoding = snomed-ct#258493006
* #BldStn ^property[+].code = #snomed-fsn
* #BldStn ^property[=].valueString = "Bladder stone specimen (specimen)"
* #BldcBp "Tulžies latako bioptatas"
* #BldcBp ^property[0].code = #snomed-code
* #BldcBp ^property[=].valueCoding.system = "snomed-ct"
* #BldcBp ^property[=].valueCoding = snomed-ct#309493009
* #BldcBp ^property[+].code = #snomed-fsn
* #BldcBp ^property[=].valueString = "Bile duct biopsy specimen (specimen)"
* #BlrStn "Tulžies akmuo"
* #BlrStn ^property[0].code = #snomed-code
* #BlrStn ^property[=].valueCoding.system = "snomed-ct"
* #BlrStn ^property[=].valueCoding = snomed-ct#258490009
* #BlrStn ^property[+].code = #snomed-fsn
* #BlrStn ^property[=].valueString = "Biliary stone specimen (specimen)"
* #Bm "Kaulų čiulpai"
* #Bm ^property[0].code = #snomed-code
* #Bm ^property[=].valueCoding.system = "snomed-ct"
* #Bm ^property[=].valueCoding = snomed-ct#119359002
* #Bm ^property[+].code = #snomed-fsn
* #Bm ^property[=].valueString = "Bone marrow specimen (specimen)"
* #BodF "Kūno skystis, nepatikslintas"
* #BodF ^property[0].code = #snomed-code
* #BodF ^property[=].valueCoding.system = "snomed-ct"
* #BodF ^property[=].valueCoding = snomed-ct#309051001
* #BodF ^property[+].code = #snomed-fsn
* #BodF ^property[=].valueString = "Body fluid sample (specimen)"
* #Bone "Kaulo audiniai"
* #Bone ^property[0].code = #snomed-code
* #Bone ^property[=].valueCoding.system = "snomed-ct"
* #Bone ^property[=].valueCoding = snomed-ct#258417006
* #Bone ^property[+].code = #snomed-fsn
* #Bone ^property[=].valueString = "Bone tissue sample (specimen)"
* #BoneBp "Kaulo bioptatas"
* #BoneBp ^property[0].code = #snomed-code
* #BoneBp ^property[=].valueCoding.system = "snomed-ct"
* #BoneBp ^property[=].valueCoding = snomed-ct#309105004
* #BoneBp ^property[+].code = #snomed-fsn
* #BoneBp ^property[=].valueString = "Bone biopsy specimen (specimen)"
* #Bp "Bioptatas"
* #Bp ^property[0].code = #snomed-code
* #Bp ^property[=].valueCoding.system = "snomed-ct"
* #Bp ^property[=].valueCoding = snomed-ct#258415003
* #Bp ^property[+].code = #snomed-fsn
* #Bp ^property[=].valueString = "Biopsy specimen (specimen)"
* #BrAbs "Smegenų absceso turinys"
* #BrAbs ^property[0].code = #snomed-code
* #BrAbs ^property[=].valueCoding.system = "snomed-ct"
* #BrAbs ^property[=].valueCoding = snomed-ct#446774006
* #BrAbs ^property[+].code = #snomed-fsn
* #BrAbs ^property[=].valueString = "Specimen from abscess of brain (specimen)"
* #BrBp "Smegenų bioptatas"
* #BrBp ^property[0].code = #snomed-code
* #BrBp ^property[=].valueCoding.system = "snomed-ct"
* #BrBp ^property[=].valueCoding = snomed-ct#432139004
* #BrBp ^property[+].code = #snomed-fsn
* #BrBp ^property[=].valueString = "Specimen from brain obtained by biopsy (specimen)"
* #BrCystF "Smegenų cistos skystis"
* #BrCystF ^property[0].code = #snomed-code
* #BrCystF ^property[=].valueCoding.system = "snomed-ct"
* #BrCystF ^property[=].valueCoding = snomed-ct#16209291000119109
* #BrCystF ^property[+].code = #snomed-fsn
* #BrCystF ^property[=].valueString = "Brain cyst fluid specimen (specimen)"
* #BrNeoTis "Smegenų auglio audiniai"
* #BrNeoTis ^property[0].code = #snomed-code
* #BrNeoTis ^property[=].valueCoding.system = "snomed-ct"
* #BrNeoTis ^property[=].valueCoding = snomed-ct#16210891000119102
* #BrNeoTis ^property[+].code = #snomed-fsn
* #BrNeoTis ^property[=].valueString = "Brain neoplasm tissue specimen (specimen)"
* #BrTis "Smegenų audiniai"
* #BrTis ^property[0].code = #snomed-code
* #BrTis ^property[=].valueCoding.system = "snomed-ct"
* #BrTis ^property[=].valueCoding = snomed-ct#128157004
* #BrTis ^property[+].code = #snomed-fsn
* #BrTis ^property[=].valueString = "Tissue specimen from brain (specimen)"
* #BresBp "Krūties bioptatas"
* #BresBp ^property[0].code = #snomed-code
* #BresBp ^property[=].valueCoding.system = "snomed-ct"
* #BresBp ^property[=].valueCoding = snomed-ct#122601001
* #BresBp ^property[+].code = #snomed-fsn
* #BresBp ^property[=].valueString = "Specimen from breast obtained by biopsy (specimen)"
* #BresCystF "Krūties cistos skystis"
* #BresCystF ^property[0].code = #snomed-code
* #BresCystF ^property[=].valueCoding.system = "snomed-ct"
* #BresCystF ^property[=].valueCoding = snomed-ct#256889002
* #BresCystF ^property[+].code = #snomed-fsn
* #BresCystF ^property[=].valueString = "Breast cyst fluid specimen (specimen)"
* #BronAsp "Bronchų sekretas (aspiratas)"
* #BronAsp ^property[0].code = #snomed-code
* #BronAsp ^property[=].valueCoding.system = "snomed-ct"
* #BronAsp ^property[=].valueCoding = snomed-ct#441903006
* #BronAsp ^property[+].code = #snomed-fsn
* #BronAsp ^property[=].valueString = "Specimen obtained by bronchial aspiration (specimen)"
* #BronBp "Bronchų bioptatas"
* #BronBp ^property[0].code = #snomed-code
* #BronBp ^property[=].valueCoding.system = "snomed-ct"
* #BronBp ^property[=].valueCoding = snomed-ct#309174004
* #BronBp ^property[+].code = #snomed-fsn
* #BronBp ^property[=].valueString = "Bronchial biopsy specimen (specimen)"
* #BronBrs "Bronchų nuobrūžos"
* #BronBrs ^property[0].code = #snomed-code
* #BronBrs ^property[=].valueCoding.system = "snomed-ct"
* #BronBrs ^property[=].valueCoding = snomed-ct#309176002
* #BronBrs ^property[+].code = #snomed-fsn
* #BronBrs ^property[=].valueString = "Bronchial brushings specimen (specimen)"
* #BronTis "Bronchų audiniai"
* #BronTis ^property[0].code = #snomed-code
* #BronTis ^property[=].valueCoding.system = "snomed-ct"
* #BronTis ^property[=].valueCoding = snomed-ct#128158009
* #BronTis ^property[+].code = #snomed-fsn
* #BronTis ^property[=].valueString = "Tissue specimen from bronchus (specimen)"
* #BrsBp "Sąnario tepalinio maišelio (bursos) bioptatas"
* #BrsBp ^property[0].code = #snomed-code
* #BrsBp ^property[=].valueCoding.system = "snomed-ct"
* #BrsBp ^property[=].valueCoding = snomed-ct#309111001
* #BrsBp ^property[+].code = #snomed-fsn
* #BrsBp ^property[=].valueString = "Bursa biopsy specimen (specimen)"
* #BrsTis "Sąnario tepalinio maišelio (bursos) audiniai"
* #BrsTis ^property[0].code = #snomed-code
* #BrsTis ^property[=].valueCoding.system = "snomed-ct"
* #BrsTis ^property[=].valueCoding = snomed-ct#309110000
* #BrsTis ^property[+].code = #snomed-fsn
* #BrsTis ^property[=].valueString = "Bursa tissue specimen (specimen)"
* #BurF "Sąnario tepalinio maišelio (bursos) skystis"
* #BurF ^property[0].code = #snomed-code
* #BurF ^property[=].valueCoding.system = "snomed-ct"
* #BurF ^property[=].valueCoding = snomed-ct#258448003
* #BurF ^property[+].code = #snomed-fsn
* #BurF ^property[=].valueString = "Bursa fluid specimen (specimen)"
* #BurnTis "Nudegimo žaizdos audiniai"
* #BurnTis ^property[0].code = #snomed-code
* #BurnTis ^property[=].valueCoding.system = "snomed-ct"
* #BurnTis ^property[=].valueCoding = snomed-ct#258418001
* #BurnTis ^property[+].code = #snomed-fsn
* #BurnTis ^property[=].valueString = "Burn tissue (specimen)"
* #BurnWd "Nudegimo žaizdos tiriamoji medžiaga"
* #BurnWd ^property[0].code = #snomed-code
* #BurnWd ^property[=].valueCoding.system = "snomed-ct"
* #BurnWd ^property[=].valueCoding = snomed-ct#119367005
* #BurnWd ^property[+].code = #snomed-fsn
* #BurnWd ^property[=].valueString = "Specimen from burn injury (specimen)"
* #CSF "Smegenų skystis"
* #CSF ^property[0].code = #snomed-code
* #CSF ^property[=].valueCoding.system = "snomed-ct"
* #CSF ^property[=].valueCoding = snomed-ct#258450006
* #CSF ^property[+].code = #snomed-fsn
* #CSF ^property[=].valueString = "Cerebrospinal fluid sample (specimen)"
* #CVCaTip "Kateterio galas, centrinės venos"
* #CVCaTip ^property[0].code = #snomed-code
* #CVCaTip ^property[=].valueCoding.system = "snomed-ct"
* #CVCaTip ^property[=].valueCoding = snomed-ct#472929000
* #CVCaTip ^property[+].code = #snomed-fsn
* #CVCaTip ^property[=].valueString = "Central venous catheter tip submitted as specimen (specimen)"
* #CaTip "Kateterio galas"
* #CaTip ^property[0].code = #snomed-code
* #CaTip ^property[=].valueCoding.system = "snomed-ct"
* #CaTip ^property[=].valueCoding = snomed-ct#119312009
* #CaTip ^property[+].code = #snomed-fsn
* #CaTip ^property[=].valueString = "Catheter tip specimen (specimen)"
* #CapBl "Kraujas, kapiliarinis"
* #CapBl ^property[0].code = #snomed-code
* #CapBl ^property[=].valueCoding.system = "snomed-ct"
* #CapBl ^property[=].valueCoding = snomed-ct#122554006
* #CapBl ^property[+].code = #snomed-fsn
* #CapBl ^property[=].valueString = "Capillary blood specimen (specimen)"
* #CatIsWdSw "Kraujagyslinio kateterio įvedimo vietos žaizdos eksudatas (tamponas)"
* #CatIsWdSw ^property[0].code = #snomed-code
* #CatIsWdSw ^property[=].valueCoding.system = "snomed-ct"
* #CatIsWdSw ^property[=].valueCoding = snomed-ct#735950000
* #CatIsWdSw ^property[+].code = #snomed-fsn
* #CatIsWdSw ^property[=].valueString = "Swab of vascular catheter insertion site (specimen)"
* #CcBp "Aklosios žarnos bioptatas"
* #CcBp ^property[0].code = #snomed-code
* #CcBp ^property[=].valueCoding.system = "snomed-ct"
* #CcBp ^property[=].valueCoding = snomed-ct#16213491000119109
* #CcBp ^property[+].code = #snomed-fsn
* #CcBp ^property[=].valueString = "Cecum biopsy specimen (specimen)"
* #ChVil "Choriono gaureliai"
* #ChVil ^property[0].code = #snomed-code
* #ChVil ^property[=].valueCoding.system = "snomed-ct"
* #ChVil ^property[=].valueCoding = snomed-ct#258565009
* #ChVil ^property[+].code = #snomed-fsn
* #ChVil ^property[=].valueString = "Chorionic villi sample (specimen)"
* #ClnBp "Gaubtinės žarnos bioptatas"
* #ClnBp ^property[0].code = #snomed-code
* #ClnBp ^property[=].valueCoding.system = "snomed-ct"
* #ClnBp ^property[=].valueCoding = snomed-ct#309225009
* #ClnBp ^property[+].code = #snomed-fsn
* #ClnBp ^property[=].valueString = "Colonic biopsy specimen (specimen)"
* #ClnTis "Storosios žarnos audiniai"
* #ClnTis ^property[0].code = #snomed-code
* #ClnTis ^property[=].valueCoding.system = "snomed-ct"
* #ClnTis ^property[=].valueCoding = snomed-ct#128159001
* #ClnTis ^property[+].code = #snomed-fsn
* #ClnTis ^property[=].valueString = "Tissue specimen from colon (specimen)"
* #Cnj "Akies junginės tiriamoji medžiaga"
* #Cnj ^property[0].code = #snomed-code
* #Cnj ^property[=].valueCoding.system = "snomed-ct"
* #Cnj ^property[=].valueCoding = snomed-ct#119401005
* #Cnj ^property[+].code = #snomed-fsn
* #Cnj ^property[=].valueString = "Specimen from conjunctiva (specimen)"
* #CnjScr "Akies junginės nuograndos"
* #CnjScr ^property[0].code = #snomed-code
* #CnjScr ^property[=].valueCoding.system = "snomed-ct"
* #CnjScr ^property[=].valueCoding = snomed-ct#447337004
* #CnjScr ^property[+].code = #snomed-fsn
* #CnjScr ^property[=].valueString = "Specimen from conjunctiva obtained by scraping (specimen)"
* #CnjSw "Akies junginės išskyros (tamponas)"
* #CnjSw ^property[0].code = #snomed-code
* #CnjSw ^property[=].valueCoding.system = "snomed-ct"
* #CnjSw ^property[=].valueCoding = snomed-ct#258498002
* #CnjSw ^property[+].code = #snomed-fsn
* #CnjSw ^property[=].valueString = "Conjunctival swab (specimen)"
* #CnjTis "Junginės audiniai"
* #CnjTis ^property[0].code = #snomed-code
* #CnjTis ^property[=].valueCoding.system = "snomed-ct"
* #CnjTis ^property[=].valueCoding = snomed-ct#128160006
* #CnjTis ^property[+].code = #snomed-fsn
* #CnjTis ^property[=].valueString = "Tissue specimen from conjunctiva (specimen)"
* #Crn "Akies ragenos tiriamoji medžiaga"
* #Crn ^property[0].code = #snomed-code
* #Crn ^property[=].valueCoding.system = "snomed-ct"
* #Crn ^property[=].valueCoding = snomed-ct#119400006
* #Crn ^property[+].code = #snomed-fsn
* #Crn ^property[=].valueString = "Specimen from cornea (specimen)"
* #CrnDonTis "Donoro ragenos audiniai"
* #CrnDonTis ^property[0].code = #snomed-code
* #CrnDonTis ^property[=].valueCoding.system = "snomed-ct"
* #CrnDonTis ^property[=].valueCoding = snomed-ct#16212811000119105
* #CrnDonTis ^property[+].code = #snomed-fsn
* #CrnDonTis ^property[=].valueString = "Tissue specimen from donor cornea (specimen)"
* #CrnScr "Akies ragenos nuograndos"
* #CrnScr ^property[0].code = #snomed-code
* #CrnScr ^property[=].valueCoding.system = "snomed-ct"
* #CrnScr ^property[=].valueCoding = snomed-ct#258485006
* #CrnScr ^property[+].code = #snomed-fsn
* #CrnScr ^property[=].valueString = "Corneal scraping specimen (specimen)"
* #CrnSw "Ragenos tiriamoji medžiaga (tamponas)"
* #CrnSw ^property[0].code = #snomed-code
* #CrnSw ^property[=].valueCoding.system = "snomed-ct"
* #CrnSw ^property[=].valueCoding = snomed-ct#472894002
* #CrnSw ^property[+].code = #snomed-fsn
* #CrnSw ^property[=].valueString = "Swab from cornea (specimen)"
* #CrnTis "Ragenos audiniai"
* #CrnTis ^property[0].code = #snomed-code
* #CrnTis ^property[=].valueCoding.system = "snomed-ct"
* #CrnTis ^property[=].valueCoding = snomed-ct#128161005
* #CrnTis ^property[+].code = #snomed-fsn
* #CrnTis ^property[=].valueString = "Tissue specimen from cornea (specimen)"
* #CrnUlc "Ragenos opos tiriamoji medžiaga"
* #CrnUlc ^property[0].code = #snomed-code
* #CrnUlc ^property[=].valueCoding.system = "snomed-ct"
* #CrnUlc ^property[=].valueCoding = snomed-ct#16212851000119106
* #CrnUlc ^property[+].code = #snomed-fsn
* #CrnUlc ^property[=].valueString = "Specimen from corneal ulcer (specimen)"
* #CrtlBp "Kremzlės bioptatas"
* #CrtlBp ^property[0].code = #snomed-code
* #CrtlBp ^property[=].valueCoding.system = "snomed-ct"
* #CrtlBp ^property[=].valueCoding = snomed-ct#309102001
* #CrtlBp ^property[+].code = #snomed-fsn
* #CrtlBp ^property[=].valueString = "Cartilage biopsy specimen (specimen)"
* #CrvBp "Gimdos kaklelio bioptatas"
* #CrvBp ^property[0].code = #snomed-code
* #CrvBp ^property[=].valueCoding.system = "snomed-ct"
* #CrvBp ^property[=].valueCoding = snomed-ct#309283000
* #CrvBp ^property[+].code = #snomed-fsn
* #CrvBp ^property[=].valueString = "Cervical biopsy specimen (specimen)"
* #CrvSw "Gimdos kaklelio eksudatas (tamponas)"
* #CrvSw ^property[0].code = #snomed-code
* #CrvSw ^property[=].valueCoding.system = "snomed-ct"
* #CrvSw ^property[=].valueCoding = snomed-ct#258524009
* #CrvSw ^property[+].code = #snomed-fsn
* #CrvSw ^property[=].valueString = "Cervical swab (specimen)"
* #CultBl "Kraujas, pasėliui"
* #CultBl ^property[0].code = #snomed-code
* #CultBl ^property[=].valueCoding.system = "snomed-ct"
* #CultBl ^property[=].valueCoding = snomed-ct#446131002
* #CultBl ^property[+].code = #snomed-fsn
* #CultBl ^property[=].valueString = "Blood specimen obtained for blood culture (specimen)"
* #CvxTis "Gimdos kaklelio audiniai"
* #CvxTis ^property[0].code = #snomed-code
* #CvxTis ^property[=].valueCoding.system = "snomed-ct"
* #CvxTis ^property[=].valueCoding = snomed-ct#127481002
* #CvxTis ^property[+].code = #snomed-fsn
* #CvxTis ^property[=].valueString = "Tissue specimen from uterine cervix (specimen)"
* #Cyst "Cistos turinys"
* #Cyst ^property[0].code = #snomed-code
* #Cyst ^property[=].valueCoding.system = "snomed-ct"
* #Cyst ^property[=].valueCoding = snomed-ct#119368000
* #Cyst ^property[+].code = #snomed-fsn
* #Cyst ^property[=].valueString = "Specimen from cyst (specimen)"
* #CystF "Cistos skystis"
* #CystF ^property[0].code = #snomed-code
* #CystF ^property[=].valueCoding.system = "snomed-ct"
* #CystF ^property[=].valueCoding = snomed-ct#258453008
* #CystF ^property[+].code = #snomed-fsn
* #CystF ^property[=].valueString = "Cyst fluid specimen (specimen)"
* #CystTis "Cistos audiniai"
* #CystTis ^property[0].code = #snomed-code
* #CystTis ^property[=].valueCoding.system = "snomed-ct"
* #CystTis ^property[=].valueCoding = snomed-ct#258420003
* #CystTis ^property[+].code = #snomed-fsn
* #CystTis ^property[=].valueString = "Cyst tissue (specimen)"
* #DNA "DNR"
* #DNA ^property[0].code = #snomed-code
* #DNA ^property[=].valueCoding.system = "snomed-ct"
* #DNA ^property[=].valueCoding = snomed-ct#258566005
* #DNA ^property[+].code = #snomed-fsn
* #DNA ^property[=].valueString = "Deoxyribonucleic acid sample (specimen)"
* #DiaF "Dializatas"
* #DiaF ^property[0].code = #snomed-code
* #DiaF ^property[=].valueCoding.system = "snomed-ct"
* #DiaF ^property[=].valueCoding = snomed-ct#258454002
* #DiaF ^property[+].code = #snomed-fsn
* #DiaF ^property[=].valueString = "Dialysate specimen (specimen)"
* #DiaphBr "Diafragmos nuograndos"
* #DiaphBr ^property[0].code = #snomed-code
* #DiaphBr ^property[=].valueCoding.system = "snomed-ct"
* #DiaphBr ^property[=].valueCoding = snomed-ct#16223771000119107
* #DiaphBr ^property[+].code = #snomed-fsn
* #DiaphBr ^property[=].valueString = "Specimen from diaphragm obtained by brushing (specimen)"
* #DntTis "Danties audiniai"
* #DntTis ^property[0].code = #snomed-code
* #DntTis ^property[=].valueCoding.system = "snomed-ct"
* #DntTis ^property[=].valueCoding = snomed-ct#309187005
* #DntTis ^property[+].code = #snomed-fsn
* #DntTis ^property[=].valueString = "Dental tissue specimen (specimen)"
* #DpOpWd "Giliosios operacinės žaizdos tiriamoji medžiaga"
* #DpOpWd ^property[0].code = #snomed-code
* #DpOpWd ^property[=].valueCoding.system = "snomed-ct"
* #DpOpWd ^property[=].valueCoding = snomed-ct#16211011000119108
* #DpOpWd ^property[+].code = #snomed-fsn
* #DpOpWd ^property[=].valueString = "Specimen from deep surgical wound (specimen)"
* #DpWd "Giliosios žaizdos tiriamoji medžiaga"
* #DpWd ^property[0].code = #snomed-code
* #DpWd ^property[=].valueCoding.system = "snomed-ct"
* #DpWd ^property[=].valueCoding = snomed-ct#16211051000119109
* #DpWd ^property[+].code = #snomed-fsn
* #DpWd ^property[=].valueString = "Specimen from deep wound (specimen)"
* #DpWdSw "Giliosios žaizdos eksudatas (tamponas)"
* #DpWdSw ^property[0].code = #snomed-code
* #DpWdSw ^property[=].valueCoding.system = "snomed-ct"
* #DpWdSw ^property[=].valueCoding = snomed-ct#472884007
* #DpWdSw ^property[+].code = #snomed-fsn
* #DpWdSw ^property[=].valueString = "Swab from deep wound (specimen)"
* #DrF "Skystis iš dreno"
* #DrF ^property[0].code = #snomed-code
* #DrF ^property[=].valueCoding.system = "snomed-ct"
* #DrF ^property[=].valueCoding = snomed-ct#258455001
* #DrF ^property[+].code = #snomed-fsn
* #DrF ^property[=].valueString = "Drainage fluid sample (specimen)"
* #DrIsWdSw "Dreno įvedimo vietos žaizdos eksudatas (tamponas)"
* #DrIsWdSw ^property[0].code = #snomed-code
* #DrIsWdSw ^property[=].valueCoding.system = "snomed-ct"
* #DrIsWdSw ^property[=].valueCoding = snomed-ct#258506007
* #DrIsWdSw ^property[+].code = #snomed-fsn
* #DrIsWdSw ^property[=].valueString = "Swab of drain insertion site (specimen)"
* #DuodBp "Dvylikapirštės žarnos bioptatas"
* #DuodBp ^property[0].code = #snomed-code
* #DuodBp ^property[=].valueCoding.system = "snomed-ct"
* #DuodBp ^property[=].valueCoding = snomed-ct#309216003
* #DuodBp ^property[+].code = #snomed-fsn
* #DuodBp ^property[=].valueString = "Duodenal biopsy specimen (specimen)"
* #DuodBrs "Dvylikapirštės žarnos nuograndos"
* #DuodBrs ^property[0].code = #snomed-code
* #DuodBrs ^property[=].valueCoding.system = "snomed-ct"
* #DuodBrs ^property[=].valueCoding = snomed-ct#16216091000119108
* #DuodBrs ^property[+].code = #snomed-fsn
* #DuodBrs ^property[=].valueString = "Duodenal brushings specimen (specimen)"
* #DuodUlc "Dvylikapirštės žarnos opos tiriamoji medžiaga"
* #DuodUlc ^property[0].code = #snomed-code
* #DuodUlc ^property[=].valueCoding.system = "snomed-ct"
* #DuodUlc ^property[=].valueCoding = snomed-ct#16213651000119102
* #DuodUlc ^property[+].code = #snomed-fsn
* #DuodUlc ^property[=].valueString = "Duodenal ulcer specimen (specimen)"
* #Ear "Ausies tiriamoji medžiaga"
* #Ear ^property[0].code = #snomed-code
* #Ear ^property[=].valueCoding.system = "snomed-ct"
* #Ear ^property[=].valueCoding = snomed-ct#309165001
* #Ear ^property[+].code = #snomed-fsn
* #Ear ^property[=].valueString = "Ear specimen (specimen)"
* #EarBp "Ausies bioptatas"
* #EarBp ^property[0].code = #snomed-code
* #EarBp ^property[=].valueCoding.system = "snomed-ct"
* #EarBp ^property[=].valueCoding = snomed-ct#432910000
* #EarBp ^property[+].code = #snomed-fsn
* #EarBp ^property[=].valueString = "Specimen from ear obtained by biopsy (specimen)"
* #EarF "Ausies eksudatas"
* #EarF ^property[0].code = #snomed-code
* #EarF ^property[=].valueCoding.system = "snomed-ct"
* #EarF ^property[=].valueCoding = snomed-ct#733056005
* #EarF ^property[+].code = #snomed-fsn
* #EarF ^property[=].valueString = "Fluid specimen from ear (specimen)"
* #EarTis "Ausies audiniai"
* #EarTis ^property[0].code = #snomed-code
* #EarTis ^property[=].valueCoding.system = "snomed-ct"
* #EarTis ^property[=].valueCoding = snomed-ct#128162003
* #EarTis ^property[+].code = #snomed-fsn
* #EarTis ^property[=].valueString = "Tissue specimen from ear (specimen)"
* #ElbJoF "Alkūnės sąnario sinovinis skystis"
* #ElbJoF ^property[0].code = #snomed-code
* #ElbJoF ^property[=].valueCoding.system = "snomed-ct"
* #ElbJoF ^property[=].valueCoding = snomed-ct#167869007
* #ElbJoF ^property[+].code = #snomed-fsn
* #ElbJoF ^property[=].valueString = "Elbow joint synovial fluid (specimen)"
* #Elu "Eliuatas"
* #Elu ^property[0].code = #snomed-code
* #Elu ^property[=].valueCoding.system = "snomed-ct"
* #Elu ^property[=].valueCoding = snomed-ct#40511003
* #Elu ^property[+].code = #snomed-fsn
* #Elu ^property[=].valueString = "Eluate (specimen)"
* #EmbrBp "Embriono bioptatas"
* #EmbrBp ^property[0].code = #snomed-code
* #EmbrBp ^property[=].valueCoding.system = "snomed-ct"
* #EmbrBp ^property[=].valueCoding = snomed-ct#258421004
* #EmbrBp ^property[+].code = #snomed-fsn
* #EmbrBp ^property[=].valueString = "Embryo biopsy specimen (specimen)"
* #EndBp "Endometriumo bioptatas"
* #EndBp ^property[0].code = #snomed-code
* #EndBp ^property[=].valueCoding.system = "snomed-ct"
* #EndBp ^property[=].valueCoding = snomed-ct#122704003
* #EndBp ^property[+].code = #snomed-fsn
* #EndBp ^property[=].valueString = "Specimen from endometrium obtained by biopsy (specimen)"
* #EndcBp "Endokardo bioptatas"
* #EndcBp ^property[0].code = #snomed-code
* #EndcBp ^property[=].valueCoding.system = "snomed-ct"
* #EndcBp ^property[=].valueCoding = snomed-ct#16215731000119104
* #EndcBp ^property[+].code = #snomed-fsn
* #EndcBp ^property[=].valueString = "Endocardium biopsy specimen (specimen)"
* #EndcBrs "Gimdos kaklelio nuobrūžos"
* #EndcBrs ^property[0].code = #snomed-code
* #EndcBrs ^property[=].valueCoding.system = "snomed-ct"
* #EndcBrs ^property[=].valueCoding = snomed-ct#718684005
* #EndcBrs ^property[+].code = #snomed-fsn
* #EndcBrs ^property[=].valueString = "Endocervical brush specimen (specimen)"
* #EndcSw "Endocervikso eksudatas (tamponas)"
* #EndcSw ^property[0].code = #snomed-code
* #EndcSw ^property[=].valueCoding.system = "snomed-ct"
* #EndcSw ^property[=].valueCoding = snomed-ct#444787003
* #EndcSw ^property[+].code = #snomed-fsn
* #EndcSw ^property[=].valueString = "Swab of endocervix (specimen)"
* #EndmTis "Endometriumo audiniai"
* #EndmTis ^property[0].code = #snomed-code
* #EndmTis ^property[=].valueCoding.system = "snomed-ct"
* #EndmTis ^property[=].valueCoding = snomed-ct#128163008
* #EndmTis ^property[+].code = #snomed-fsn
* #EndmTis ^property[=].valueString = "Tissue specimen from endometrium (specimen)"
* #Epdd "Sėklidės prielipo tiriamoji medžiaga"
* #Epdd ^property[0].code = #snomed-code
* #Epdd ^property[=].valueCoding.system = "snomed-ct"
* #Epdd ^property[=].valueCoding = snomed-ct#309140003
* #Epdd ^property[+].code = #snomed-fsn
* #Epdd ^property[=].valueString = "Epididymis specimen (specimen)"
* #EpddBp "Sėklidės prielipo bioptatas"
* #EpddBp ^property[0].code = #snomed-code
* #EpddBp ^property[=].valueCoding.system = "snomed-ct"
* #EpddBp ^property[=].valueCoding = snomed-ct#431205006
* #EpddBp ^property[+].code = #snomed-fsn
* #EpddBp ^property[=].valueString = "Specimen from epididymis obtained by biopsy (specimen)"
* #EpddF "Sėklidės prielipo skystis"
* #EpddF ^property[0].code = #snomed-code
* #EpddF ^property[=].valueCoding.system = "snomed-ct"
* #EpddF ^property[=].valueCoding = snomed-ct#732975005
* #EpddF ^property[+].code = #snomed-fsn
* #EpddF ^property[=].valueString = "Fluid specimen from epididymis (specimen)"
* #EpgSw "Antgerklio eksudatas (tamponas)"
* #EpgSw ^property[0].code = #snomed-code
* #EpgSw ^property[=].valueCoding.system = "snomed-ct"
* #EpgSw ^property[=].valueCoding = snomed-ct#28991000087102
* #EpgSw ^property[+].code = #snomed-fsn
* #EpgSw ^property[=].valueString = "Swab from epiglottis (specimen)"
* #EphBp "Stemplės bioptatas"
* #EphBp ^property[0].code = #snomed-code
* #EphBp ^property[=].valueCoding.system = "snomed-ct"
* #EphBp ^property[=].valueCoding = snomed-ct#309209004
* #EphBp ^property[+].code = #snomed-fsn
* #EphBp ^property[=].valueString = "Esophageal biopsy specimen (specimen)"
* #EphBrs "Stemplės nuograndos"
* #EphBrs ^property[0].code = #snomed-code
* #EphBrs ^property[=].valueCoding.system = "snomed-ct"
* #EphBrs ^property[=].valueCoding = snomed-ct#309210009
* #EphBrs ^property[+].code = #snomed-fsn
* #EphBrs ^property[=].valueString = "Esophageal brushings specimen"
* #EphSw "Stemplė (tamponas)"
* #EphSw ^property[0].code = #snomed-code
* #EphSw ^property[=].valueCoding.system = "snomed-ct"
* #EphSw ^property[=].valueCoding = snomed-ct#472877004
* #EphSw ^property[+].code = #snomed-fsn
* #EphSw ^property[=].valueString = "Swab from esophagus (specimen)"
* #EphTis "Stemplės audiniai"
* #EphTis ^property[0].code = #snomed-code
* #EphTis ^property[=].valueCoding.system = "snomed-ct"
* #EphTis ^property[=].valueCoding = snomed-ct#127464006
* #EphTis ^property[+].code = #snomed-fsn
* #EphTis ^property[=].valueString = "Tissue specimen from esophagus (specimen)"
* #EpidAbs "Epidurinio absceso turinys"
* #EpidAbs ^property[0].code = #snomed-code
* #EpidAbs ^property[=].valueCoding.system = "snomed-ct"
* #EpidAbs ^property[=].valueCoding = snomed-ct#33541000087109
* #EpidAbs ^property[+].code = #snomed-fsn
* #EpidAbs ^property[=].valueString = "Specimen from abscess of epidural space (specimen)"
* #EthSinBp "Akytkaulio sinuso bioptatas"
* #EthSinBp ^property[0].code = #snomed-code
* #EthSinBp ^property[=].valueCoding.system = "snomed-ct"
* #EthSinBp ^property[=].valueCoding = snomed-ct#16212731000119107
* #EthSinBp ^property[+].code = #snomed-fsn
* #EthSinBp ^property[=].valueString = "Specimen from ethmoid sinus obtained by biopsy (specimen)"
* #ExEarF "Ausies išorinės klausomosios landos eksudatas"
* #ExEarF ^property[0].code = #snomed-code
* #ExEarF ^property[=].valueCoding.system = "snomed-ct"
* #ExEarF ^property[=].valueCoding = snomed-ct#732976006
* #ExEarF ^property[+].code = #snomed-fsn
* #ExEarF ^property[=].valueString = "Fluid specimen from external auditory canal (specimen)"
* #ExStWdSw "Išorinės stomos žaizdos eksudatas (tamponas)"
* #ExStWdSw ^property[0].code = #snomed-code
* #ExStWdSw ^property[=].valueCoding.system = "snomed-ct"
* #ExStWdSw ^property[=].valueCoding = snomed-ct#29001000087102
* #ExStWdSw ^property[+].code = #snomed-fsn
* #ExStWdSw ^property[=].valueString = "Swab from external stoma wound (specimen)"
* #Eye "Akies tiriamoji medžiaga"
* #Eye ^property[0].code = #snomed-code
* #Eye ^property[=].valueCoding.system = "snomed-ct"
* #Eye ^property[=].valueCoding = snomed-ct#119399004
* #Eye ^property[+].code = #snomed-fsn
* #Eye ^property[=].valueString = "Specimen from eye (specimen)"
* #EyeBp "Akies bioptatas"
* #EyeBp ^property[0].code = #snomed-code
* #EyeBp ^property[=].valueCoding.system = "snomed-ct"
* #EyeBp ^property[=].valueCoding = snomed-ct#431232001
* #EyeBp ^property[+].code = #snomed-fsn
* #EyeBp ^property[=].valueString = "Specimen from eye region obtained by biopsy (specimen)"
* #EyeDsc "Akies išskyros"
* #EyeDsc ^property[0].code = #snomed-code
* #EyeDsc ^property[=].valueCoding.system = "snomed-ct"
* #EyeDsc ^property[=].valueCoding = snomed-ct#16209331000119103
* #EyeDsc ^property[+].code = #snomed-fsn
* #EyeDsc ^property[=].valueString = "Eye discharge specimen (specimen)"
* #EyeF "Akies skystis"
* #EyeF ^property[0].code = #snomed-code
* #EyeF ^property[=].valueCoding.system = "snomed-ct"
* #EyeF ^property[=].valueCoding = snomed-ct#309128003
* #EyeF ^property[+].code = #snomed-fsn
* #EyeF ^property[=].valueString = "Eye fluid specimen (specimen)"
* #EyeLdBp "Akies voko bioptatas"
* #EyeLdBp ^property[0].code = #snomed-code
* #EyeLdBp ^property[=].valueCoding.system = "snomed-ct"
* #EyeLdBp ^property[=].valueCoding = snomed-ct#16212771000119105
* #EyeLdBp ^property[+].code = #snomed-fsn
* #EyeLdBp ^property[=].valueString = "Specimen from eyelid obtained by biopsy (specimen)"
* #EyeLdSw "Akies voko tiriamoji medžiaga (tamponas)"
* #EyeLdSw ^property[0].code = #snomed-code
* #EyeLdSw ^property[=].valueCoding.system = "snomed-ct"
* #EyeLdSw ^property[=].valueCoding = snomed-ct#30941000087105
* #EyeLdSw ^property[+].code = #snomed-fsn
* #EyeLdSw ^property[=].valueString = "Swab from eyelid (specimen)"
* #EyeTis "Akies audiniai"
* #EyeTis ^property[0].code = #snomed-code
* #EyeTis ^property[=].valueCoding.system = "snomed-ct"
* #EyeTis ^property[=].valueCoding = snomed-ct#128164002
* #EyeTis ^property[+].code = #snomed-fsn
* #EyeTis ^property[=].valueString = "Tissue specimen from eye (specimen)"
* #FFP "Šviežiai šaldyta plazma"
* #FFP ^property[0].code = #snomed-code
* #FFP ^property[=].valueCoding.system = "snomed-ct"
* #FFP ^property[=].valueCoding = snomed-ct#346447007
* #FFP ^property[+].code = #snomed-fsn
* #FFP ^property[=].valueString = "Fresh frozen plasma (product)"
* #FGen "Moters lytinių organų tiriamoji medžiaga"
* #FGen ^property[0].code = #snomed-code
* #FGen ^property[=].valueCoding.system = "snomed-ct"
* #FGen ^property[=].valueCoding = snomed-ct#309053003
* #FGen ^property[+].code = #snomed-fsn
* #FGen ^property[=].valueString = "Female genital specimen (specimen)"
* #FGenF "Moters lytinių organų skystis"
* #FGenF ^property[0].code = #snomed-code
* #FGenF ^property[=].valueCoding.system = "snomed-ct"
* #FGenF ^property[=].valueCoding = snomed-ct#122578001
* #FGenF ^property[+].code = #snomed-fsn
* #FGenF ^property[=].valueString = "Female genital fluid specimen (specimen)"
* #FGenSw "Moters lytinių organų tiriamoji medžiaga (tamponas)"
* #FGenSw ^property[0].code = #snomed-code
* #FGenSw ^property[=].valueCoding.system = "snomed-ct"
* #FGenSw ^property[=].valueCoding = snomed-ct#258519006
* #FGenSw ^property[+].code = #snomed-fsn
* #FGenSw ^property[=].valueString = "Female genital swab (specimen)"
* #FNA "Bioptatas, aspiracija plona adata"
* #FNA ^property[0].code = #snomed-code
* #FNA ^property[=].valueCoding.system = "snomed-ct"
* #FNA ^property[=].valueCoding = snomed-ct#122550002
* #FNA ^property[+].code = #snomed-fsn
* #FNA ^property[=].valueString = "Specimen obtained by fine needle aspiration procedure (specimen)"
* #FetBp "Vaisiaus bioptatas"
* #FetBp ^property[0].code = #snomed-code
* #FetBp ^property[=].valueCoding.system = "snomed-ct"
* #FetBp ^property[=].valueCoding = snomed-ct#431234000
* #FetBp ^property[+].code = #snomed-fsn
* #FetBp ^property[=].valueString = "Specimen from fetus obtained by biopsy (specimen)"
* #FinJoF "Rankos piršto sąnario sinovinis skystis"
* #FinJoF ^property[0].code = #snomed-code
* #FinJoF ^property[=].valueCoding.system = "snomed-ct"
* #FinJoF ^property[=].valueCoding = snomed-ct#167872000
* #FinJoF ^property[+].code = #snomed-fsn
* #FinJoF ^property[=].valueString = "Finger joint synovial fluid (specimen)"
* #FisF "Fistulės skystis"
* #FisF ^property[0].code = #snomed-code
* #FisF ^property[=].valueCoding.system = "snomed-ct"
* #FisF ^property[=].valueCoding = snomed-ct#258458004
* #FisF ^property[+].code = #snomed-fsn
* #FisF ^property[=].valueString = "Fistula fluid specimen (specimen)"
* #FlTb "Kiaušintakio tiriamoji medžiaga"
* #FlTb ^property[0].code = #snomed-code
* #FlTb ^property[=].valueCoding.system = "snomed-ct"
* #FlTb ^property[=].valueCoding = snomed-ct#127476006
* #FlTb ^property[+].code = #snomed-fsn
* #FlTb ^property[=].valueString = "Specimen from fallopian tube (specimen)"
* #FlTbBp "Kiaušintakio bioptatas"
* #FlTbBp ^property[0].code = #snomed-code
* #FlTbBp ^property[=].valueCoding.system = "snomed-ct"
* #FlTbBp ^property[=].valueCoding = snomed-ct#309290005
* #FlTbBp ^property[+].code = #snomed-fsn
* #FlTbBp ^property[=].valueString = "Fallopian tube biopsy specimen (specimen)"
* #FosSw "Apyvarpės sekretas (tamponas)"
* #FosSw ^property[0].code = #snomed-code
* #FosSw ^property[=].valueCoding.system = "snomed-ct"
* #FosSw ^property[=].valueCoding = snomed-ct#258513007
* #FosSw ^property[+].code = #snomed-fsn
* #FosSw ^property[=].valueString = "Prepuce swab (specimen)"
* #FscBp "Fascijos bioptatas"
* #FscBp ^property[0].code = #snomed-code
* #FscBp ^property[=].valueCoding.system = "snomed-ct"
* #FscBp ^property[=].valueCoding = snomed-ct#309118007
* #FscBp ^property[+].code = #snomed-fsn
* #FscBp ^property[=].valueString = "Fascia biopsy specimen (specimen)"
* #FtJoF "Pėdos sąnario sinovinis skystis"
* #FtJoF ^property[0].code = #snomed-code
* #FtJoF ^property[=].valueCoding.system = "snomed-ct"
* #FtJoF ^property[=].valueCoding = snomed-ct#167876002
* #FtJoF ^property[+].code = #snomed-fsn
* #FtJoF ^property[=].valueString = "Foot joint synovial fluid (specimen)"
* #GastBr "Skrandžio nuograndos"
* #GastBr ^property[0].code = #snomed-code
* #GastBr ^property[=].valueCoding.system = "snomed-ct"
* #GastBr ^property[=].valueCoding = snomed-ct#309213006
* #GastBr ^property[+].code = #snomed-fsn
* #GastBr ^property[=].valueString = "Gastric brushings specimen (specimen)"
* #GastStSw "Gastrostomos anga (tamponas)"
* #GastStSw ^property[0].code = #snomed-code
* #GastStSw ^property[=].valueCoding.system = "snomed-ct"
* #GastStSw ^property[=].valueCoding = snomed-ct#472886009
* #GastStSw ^property[+].code = #snomed-fsn
* #GastStSw ^property[=].valueString = "Swab from gastrostomy stoma (specimen)"
* #GastUlc "Skrandžio opos tiriamoji medžiaga"
* #GastUlc ^property[0].code = #snomed-code
* #GastUlc ^property[=].valueCoding.system = "snomed-ct"
* #GastUlc ^property[=].valueCoding = snomed-ct#309215004
* #GastUlc ^property[+].code = #snomed-fsn
* #GastUlc ^property[=].valueString = "Gastric ulcer specimen (specimen)"
* #GenSw "Lytinių organų tiriamoji medžiaga (tamponas)"
* #GenSw ^property[0].code = #snomed-code
* #GenSw ^property[=].valueCoding.system = "snomed-ct"
* #GenSw ^property[=].valueCoding = snomed-ct#258508008
* #GenSw ^property[+].code = #snomed-fsn
* #GenSw ^property[=].valueString = "Genital swab (specimen)"
* #GingBp "Dantenų bioptatas"
* #GingBp ^property[0].code = #snomed-code
* #GingBp ^property[=].valueCoding.system = "snomed-ct"
* #GingBp ^property[=].valueCoding = snomed-ct#16212691000119100
* #GingBp ^property[+].code = #snomed-fsn
* #GingBp ^property[=].valueString = "Gingiva biopsy specimen (specimen)"
* #GlbldTis "Tulžies pūslės audiniai"
* #GlbldTis ^property[0].code = #snomed-code
* #GlbldTis ^property[=].valueCoding.system = "snomed-ct"
* #GlbldTis ^property[=].valueCoding = snomed-ct#122656001
* #GlbldTis ^property[+].code = #snomed-fsn
* #GlbldTis ^property[=].valueString = "Tissue specimen from gallbladder (specimen)"
* #GstAnBp "Skrandžio prievarčio bioptatas"
* #GstAnBp ^property[0].code = #snomed-code
* #GstAnBp ^property[=].valueCoding.system = "snomed-ct"
* #GstAnBp ^property[=].valueCoding = snomed-ct#309212001
* #GstAnBp ^property[+].code = #snomed-fsn
* #GstAnBp ^property[=].valueString = "Gastric antral biopsy specimen (specimen)"
* #GstBp "Skrandžio bioptatas"
* #GstBp ^property[0].code = #snomed-code
* #GstBp ^property[=].valueCoding.system = "snomed-ct"
* #GstBp ^property[=].valueCoding = snomed-ct#309211008
* #GstBp ^property[+].code = #snomed-fsn
* #GstBp ^property[=].valueString = "Gastric biopsy specimen (specimen)"
* #GstF "Skrandžio sultys"
* #GstF ^property[0].code = #snomed-code
* #GstF ^property[=].valueCoding.system = "snomed-ct"
* #GstF ^property[=].valueCoding = snomed-ct#258459007
* #GstF ^property[+].code = #snomed-fsn
* #GstF ^property[=].valueString = "Gastric fluid sample (specimen)"
* #GstFnBp "Skrandžio dugno bioptatas"
* #GstFnBp ^property[0].code = #snomed-code
* #GstFnBp ^property[=].valueCoding.system = "snomed-ct"
* #GstFnBp ^property[=].valueCoding = snomed-ct#309214000
* #GstFnBp ^property[+].code = #snomed-fsn
* #GstFnBp ^property[=].valueString = "Gastric fundus biopsy specimen (specimen)"
* #H2O "Vanduo"
* #H2O ^property[0].code = #snomed-code
* #H2O ^property[=].valueCoding.system = "snomed-ct"
* #H2O ^property[=].valueCoding = snomed-ct#119318008
* #H2O ^property[+].code = #snomed-fsn
* #H2O ^property[=].valueString = "Water specimen (specimen)"
* #Hair "Plaukas"
* #Hair ^property[0].code = #snomed-code
* #Hair ^property[=].valueCoding.system = "snomed-ct"
* #Hair ^property[=].valueCoding = snomed-ct#119326000
* #Hair ^property[+].code = #snomed-fsn
* #Hair ^property[=].valueString = "Hair specimen (specimen)"
* #HajoF "Rankos sąnario sinovinis skystis"
* #HajoF ^property[0].code = #snomed-code
* #HajoF ^property[=].valueCoding.system = "snomed-ct"
* #HajoF ^property[=].valueCoding = snomed-ct#167871007
* #HajoF ^property[+].code = #snomed-fsn
* #HajoF ^property[=].valueString = "Hand joint synovial fluid (specimen)"
* #HdNeckBp "Galvos ir kaklo struktūros bioptatas"
* #HdNeckBp ^property[0].code = #snomed-code
* #HdNeckBp ^property[=].valueCoding.system = "snomed-ct"
* #HdNeckBp ^property[=].valueCoding = snomed-ct#431885000
* #HdNeckBp ^property[+].code = #snomed-fsn
* #HdNeckBp ^property[=].valueString = "Specimen from head and neck structure obtained by biopsy (specimen)"
* #Helm "Helmintas"
* #Helm ^property[0].code = #snomed-code
* #Helm ^property[=].valueCoding.system = "snomed-ct"
* #Helm ^property[=].valueCoding = snomed-ct#258618008
* #Helm ^property[+].code = #snomed-fsn
* #Helm ^property[=].valueString = "Helminth specimen (specimen)"
* #Hemat "Hematomos turinys"
* #Hemat ^property[0].code = #snomed-code
* #Hemat ^property[=].valueCoding.system = "snomed-ct"
* #Hemat ^property[=].valueCoding = snomed-ct#258588005
* #Hemat ^property[+].code = #snomed-fsn
* #Hemat ^property[=].valueString = "Hematoma specimen (specimen)"
* #HipJoF "Klubo sąnario sinovinis skystis"
* #HipJoF ^property[0].code = #snomed-code
* #HipJoF ^property[=].valueCoding.system = "snomed-ct"
* #HipJoF ^property[=].valueCoding = snomed-ct#167873005
* #HipJoF ^property[+].code = #snomed-fsn
* #HipJoF ^property[=].valueString = "Hip joint synovial fluid (specimen)"
* #HrhTis "Hemorojinio mazgo audiniai"
* #HrhTis ^property[0].code = #snomed-code
* #HrhTis ^property[=].valueCoding.system = "snomed-ct"
* #HrhTis ^property[=].valueCoding = snomed-ct#438336007
* #HrhTis ^property[+].code = #snomed-fsn
* #HrhTis ^property[=].valueString = "Hemorrhoid tissue specimen (specimen)"
* #HrtBp "Širdies bioptatas"
* #HrtBp ^property[0].code = #snomed-code
* #HrtBp ^property[=].valueCoding.system = "snomed-ct"
* #HrtBp ^property[=].valueCoding = snomed-ct#122623002
* #HrtBp ^property[+].code = #snomed-fsn
* #HrtBp ^property[=].valueString = "Specimen from heart obtained by biopsy (specimen)"
* #HrtVlvTis "Širdies vožtuvo audiniai"
* #HrtVlvTis ^property[0].code = #snomed-code
* #HrtVlvTis ^property[=].valueCoding.system = "snomed-ct"
* #HrtVlvTis ^property[=].valueCoding = snomed-ct#258424007
* #HrtVlvTis ^property[+].code = #snomed-fsn
* #HrtVlvTis ^property[=].valueString = "Heart valve tissue (specimen)"
* #IleBp "Klubinės žarnos bioptatas"
* #IleBp ^property[0].code = #snomed-code
* #IleBp ^property[=].valueCoding.system = "snomed-ct"
* #IleBp ^property[=].valueCoding = snomed-ct#309217007
* #IleBp ^property[+].code = #snomed-fsn
* #IleBp ^property[=].valueString = "Ileal biopsy specimen (specimen)"
* #IndSput "Skrepliai, indukuoti"
* #IndSput ^property[0].code = #snomed-code
* #IndSput ^property[=].valueCoding.system = "snomed-ct"
* #IndSput ^property[=].valueCoding = snomed-ct#258610001
* #IndSput ^property[+].code = #snomed-fsn
* #IndSput ^property[=].valueString = "Sputum specimen obtained by sputum induction (specimen)"
* #IngSw "Kirkšnies sritis (tamponas)"
* #IngSw ^property[0].code = #snomed-code
* #IngSw ^property[=].valueCoding.system = "snomed-ct"
* #IngSw ^property[=].valueCoding = snomed-ct#445444005
* #IngSw ^property[+].code = #snomed-fsn
* #IngSw ^property[=].valueString = "Swab of inguinal region (specimen)"
* #Ins "Vabzdys"
* #Ins ^property[0].code = #snomed-code
* #Ins ^property[=].valueCoding.system = "snomed-ct"
* #Ins ^property[=].valueCoding = snomed-ct#258614005
* #Ins ^property[+].code = #snomed-fsn
* #Ins ^property[=].valueString = "Insect specimen (specimen)"
* #IrTis "Rainelės audiniai"
* #IrTis ^property[0].code = #snomed-code
* #IrTis ^property[=].valueCoding.system = "snomed-ct"
* #IrTis ^property[=].valueCoding = snomed-ct#33911000087102
* #IrTis ^property[+].code = #snomed-fsn
* #IrTis ^property[=].valueString = "Tissue specimen from iris (specimen)"
* #Is "Izoliatas"
* #Is ^property[0].code = #snomed-code
* #Is ^property[=].valueCoding.system = "snomed-ct"
* #Is ^property[=].valueCoding = snomed-ct#119303007
* #Is ^property[+].code = #snomed-fsn
* #Is ^property[=].valueString = "Microbial isolate specimen (specimen)"
* #JejBp "Tuščiosios žarnos bioptatas"
* #JejBp ^property[0].code = #snomed-code
* #JejBp ^property[=].valueCoding.system = "snomed-ct"
* #JejBp ^property[=].valueCoding = snomed-ct#309219005
* #JejBp ^property[+].code = #snomed-fsn
* #JejBp ^property[=].valueString = "Jejunal biopsy specimen (specimen)"
* #Jo "Sąnario tiriamoji medžiaga"
* #Jo ^property[0].code = #snomed-code
* #Jo ^property[=].valueCoding.system = "snomed-ct"
* #Jo ^property[=].valueCoding = snomed-ct#309125000
* #Jo ^property[+].code = #snomed-fsn
* #Jo ^property[=].valueString = "Joint specimen (specimen)"
* #JoBp "Sąnario bioptatas"
* #JoBp ^property[0].code = #snomed-code
* #JoBp ^property[=].valueCoding.system = "snomed-ct"
* #JoBp ^property[=].valueCoding = snomed-ct#309124001
* #JoBp ^property[+].code = #snomed-fsn
* #JoBp ^property[=].valueString = "Joint biopsy specimen (specimen)"
* #KidBp "Inksto bioptatas"
* #KidBp ^property[0].code = #snomed-code
* #KidBp ^property[=].valueCoding.system = "snomed-ct"
* #KidBp ^property[=].valueCoding = snomed-ct#309269002
* #KidBp ^property[+].code = #snomed-fsn
* #KidBp ^property[=].valueString = "Kidney biopsy specimen (specimen)"
* #KidBr "Inksto nuograndos"
* #KidBr ^property[0].code = #snomed-code
* #KidBr ^property[=].valueCoding.system = "snomed-ct"
* #KidBr ^property[=].valueCoding = snomed-ct#16212371000119106
* #KidBr ^property[+].code = #snomed-fsn
* #KidBr ^property[=].valueString = "Kidney brushings specimen (specimen)"
* #KidCystF "Inksto cistos skystis"
* #KidCystF ^property[0].code = #snomed-code
* #KidCystF ^property[=].valueCoding.system = "snomed-ct"
* #KidCystF ^property[=].valueCoding = snomed-ct#16220971000119101
* #KidCystF ^property[+].code = #snomed-fsn
* #KidCystF ^property[=].valueString = "Specimen of fluid from cyst of kidney (specimen)"
* #KidStn "Inksto akmuo"
* #KidStn ^property[0].code = #snomed-code
* #KidStn ^property[=].valueCoding.system = "snomed-ct"
* #KidStn ^property[=].valueCoding = snomed-ct#258495004
* #KidStn ^property[+].code = #snomed-fsn
* #KidStn ^property[=].valueString = "Renal stone specimen (specimen)"
* #KidTis "Inksto audiniai"
* #KidTis ^property[0].code = #snomed-code
* #KidTis ^property[=].valueCoding.system = "snomed-ct"
* #KidTis ^property[=].valueCoding = snomed-ct#127474009
* #KidTis ^property[+].code = #snomed-fsn
* #KidTis ^property[=].valueString = "Tissue specimen from kidney (specimen)"
* #KneJoF "Kelio sąnario sinovinis skystis"
* #KneJoF ^property[0].code = #snomed-code
* #KneJoF ^property[=].valueCoding.system = "snomed-ct"
* #KneJoF ^property[=].valueCoding = snomed-ct#167874004
* #KneJoF ^property[+].code = #snomed-fsn
* #KneJoF ^property[=].valueString = "Knee joint synovial fluid (specimen)"
* #LFlTb "Kairiojo kiaušintakio tiriamoji medžiaga"
* #LFlTb ^property[0].code = #snomed-code
* #LFlTb ^property[=].valueCoding.system = "snomed-ct"
* #LFlTb ^property[=].valueCoding = snomed-ct#119385003
* #LFlTb ^property[+].code = #snomed-fsn
* #LFlTb ^property[=].valueString = "Specimen from left fallopian tube (specimen)"
* #LV "Gyvas egzempliorius"
* #LV ^property[0].code = #snomed-code
* #LV ^property[=].valueCoding.system = "snomed-ct"
* #LV ^property[=].valueCoding = snomed-ct#258613004
* #LV ^property[+].code = #snomed-fsn
* #LV ^property[=].valueString = "Living specimen (specimen)"
* #LYM "Limfocitai"
* #LYM ^property[0].code = #snomed-code
* #LYM ^property[=].valueCoding.system = "snomed-ct"
* #LYM ^property[=].valueCoding = snomed-ct#119353001
* #LYM ^property[+].code = #snomed-fsn
* #LYM ^property[=].valueString = "Lymphocyte specimen (specimen)"
* #LabUlc "Lytinių lūpų opos tiriamoji medžiaga"
* #LabUlc ^property[0].code = #snomed-code
* #LabUlc ^property[=].valueCoding.system = "snomed-ct"
* #LabUlc ^property[=].valueCoding = snomed-ct#16211011000119108
* #LabUlc ^property[+].code = #snomed-fsn
* #LabUlc ^property[=].valueString = "Labia ulcer specimen (specimen)"
* #LacF "Akies ašarų maišelio skystis"
* #LacF ^property[0].code = #snomed-code
* #LacF ^property[=].valueCoding.system = "snomed-ct"
* #LacF ^property[=].valueCoding = snomed-ct#258465007
* #LacF ^property[+].code = #snomed-fsn
* #LacF ^property[=].valueString = "Lacrimal fluid sample (specimen)"
* #LacMucF "Ašarų maišelio mukocelės skystis"
* #LacMucF ^property[0].code = #snomed-code
* #LacMucF ^property[=].valueCoding.system = "snomed-ct"
* #LacMucF ^property[=].valueCoding = snomed-ct#446908003
* #LacMucF ^property[+].code = #snomed-fsn
* #LacMucF ^property[=].valueString = "Fluid specimen from mucocele of lacrimal sac (specimen)"
* #Larva "Lerva"
* #Larva ^property[0].code = #snomed-code
* #Larva ^property[=].valueCoding.system = "snomed-ct"
* #Larva ^property[=].valueCoding = snomed-ct#258615006
* #Larva ^property[+].code = #snomed-fsn
* #Larva ^property[=].valueString = "Larva specimen (specimen)"
* #LarxBp "Gerklų bioptatas"
* #LarxBp ^property[0].code = #snomed-code
* #LarxBp ^property[=].valueCoding.system = "snomed-ct"
* #LarxBp ^property[=].valueCoding = snomed-ct#309182004
* #LarxBp ^property[+].code = #snomed-fsn
* #LarxBp ^property[=].valueString = "Larynx biopsy specimen (specimen)"
* #LbSw "Lytinių lūpų tiriamoji medžiaga (tamponas)"
* #LbSw ^property[0].code = #snomed-code
* #LbSw ^property[=].valueCoding.system = "snomed-ct"
* #LbSw ^property[=].valueCoding = snomed-ct#472887000
* #LbSw ^property[+].code = #snomed-fsn
* #LbSw ^property[=].valueString = "Swab from labia (specimen)"
* #Lens "Akies lęšiukas"
* #Lens ^property[0].code = #snomed-code
* #Lens ^property[=].valueCoding.system = "snomed-ct"
* #Lens ^property[=].valueCoding = snomed-ct#258601009
* #Lens ^property[+].code = #snomed-fsn
* #Lens ^property[=].valueString = "Lens specimen (specimen)"
* #LensF "Kontaktinių lešių tirpalas"
* #LensF ^property[0].code = #snomed-code
* #LensF ^property[=].valueCoding.system = "snomed-ct"
* #LensF ^property[=].valueCoding = snomed-ct#258599007
* #LensF ^property[+].code = #snomed-fsn
* #LensF ^property[=].valueString = "Contact lens solution sample (specimen)"
* #LgmBp "Raiščio bioptatas"
* #LgmBp ^property[0].code = #snomed-code
* #LgmBp ^property[=].valueCoding.system = "snomed-ct"
* #LgmBp ^property[=].valueCoding = snomed-ct#309115005
* #LgmBp ^property[+].code = #snomed-fsn
* #LgmBp ^property[=].valueString = "Ligament biopsy specimen (specimen)"
* #LipBp "Lūpos bioptatas"
* #LipBp ^property[0].code = #snomed-code
* #LipBp ^property[=].valueCoding.system = "snomed-ct"
* #LipBp ^property[=].valueCoding = snomed-ct#309483002
* #LipBp ^property[+].code = #snomed-fsn
* #LipBp ^property[=].valueString = "Lip biopsy specimen (specimen)"
* #LipSw "Lūpos tiriamoji medžiaga (tamponas)"
* #LipSw ^property[0].code = #snomed-code
* #LipSw ^property[=].valueCoding.system = "snomed-ct"
* #LipSw ^property[=].valueCoding = snomed-ct#472891005
* #LipSw ^property[+].code = #snomed-fsn
* #LipSw ^property[=].valueString = "Swab from lip (specimen)"
* #LivAbs "Kepenų absceso turinys"
* #LivAbs ^property[0].code = #snomed-code
* #LivAbs ^property[=].valueCoding.system = "snomed-ct"
* #LivAbs ^property[=].valueCoding = snomed-ct#446674003
* #LivAbs ^property[+].code = #snomed-fsn
* #LivAbs ^property[=].valueString = "Specimen from abscess of liver (specimen)"
* #LivBp "Kepenų bioptatas"
* #LivBp ^property[0].code = #snomed-code
* #LivBp ^property[=].valueCoding.system = "snomed-ct"
* #LivBp ^property[=].valueCoding = snomed-ct#309203003
* #LivBp ^property[+].code = #snomed-fsn
* #LivBp ^property[=].valueString = "Liver biopsy specimen (specimen)"
* #LivTis "Kepenų audiniai"
* #LivTis ^property[0].code = #snomed-code
* #LivTis ^property[=].valueCoding.system = "snomed-ct"
* #LivTis ^property[=].valueCoding = snomed-ct#128168004
* #LivTis ^property[+].code = #snomed-fsn
* #LivTis ^property[=].valueString = "Tissue specimen from liver (specimen)"
* #Ln "Limfmazgis"
* #Ln ^property[0].code = #snomed-code
* #Ln ^property[=].valueCoding.system = "snomed-ct"
* #Ln ^property[=].valueCoding = snomed-ct#258589002
* #Ln ^property[+].code = #snomed-fsn
* #Ln ^property[=].valueString = "Lymph node sample (specimen)"
* #LnAsp "Limfinio mazgo aspiratas"
* #LnAsp ^property[0].code = #snomed-code
* #LnAsp ^property[=].valueCoding.system = "snomed-ct"
* #LnAsp ^property[=].valueCoding = snomed-ct#302795002
* #LnAsp ^property[+].code = #snomed-fsn
* #LnAsp ^property[=].valueString = "Lymph node aspirate (specimen)"
* #LnIsWdSw "Kateterio įvedimo vietos žaizdos eksudatas (tamponas)"
* #LnIsWdSw ^property[0].code = #snomed-code
* #LnIsWdSw ^property[=].valueCoding.system = "snomed-ct"
* #LnIsWdSw ^property[=].valueCoding = snomed-ct#258507003
* #LnIsWdSw ^property[+].code = #snomed-fsn
* #LnIsWdSw ^property[=].valueString = "Swab of line insertion site (specimen)"
* #LngTis "Plaučių audiniai"
* #LngTis ^property[0].code = #snomed-code
* #LngTis ^property[=].valueCoding.system = "snomed-ct"
* #LngTis ^property[=].valueCoding = snomed-ct#399492000
* #LngTis ^property[+].code = #snomed-fsn
* #LngTis ^property[=].valueString = "Tissue specimen from lung (specimen)"
* #Loch "Lochijos"
* #Loch ^property[0].code = #snomed-code
* #Loch ^property[=].valueCoding.system = "snomed-ct"
* #Loch ^property[=].valueCoding = snomed-ct#122579009
* #Loch ^property[+].code = #snomed-fsn
* #Loch ^property[=].valueString = "Genital lochia specimen (specimen)"
* #LphNoTis "Limfmazgio audiniai"
* #LphNoTis ^property[0].code = #snomed-code
* #LphNoTis ^property[=].valueCoding.system = "snomed-ct"
* #LphNoTis ^property[=].valueCoding = snomed-ct#309078004
* #LphNoTis ^property[+].code = #snomed-fsn
* #LphNoTis ^property[=].valueString = "Lymph node tissue specimen (specimen)"
* #LphnoBp "Limfmazgio bioptatas"
* #LphnoBp ^property[0].code = #snomed-code
* #LphnoBp ^property[=].valueCoding.system = "snomed-ct"
* #LphnoBp ^property[=].valueCoding = snomed-ct#309079007
* #LphnoBp ^property[+].code = #snomed-fsn
* #LphnoBp ^property[=].valueString = "Lymph node biopsy specimen (specimen)"
* #LpoBp "Lipomos bioptatas"
* #LpoBp ^property[0].code = #snomed-code
* #LpoBp ^property[=].valueCoding.system = "snomed-ct"
* #LpoBp ^property[=].valueCoding = snomed-ct#309073008
* #LpoBp ^property[+].code = #snomed-fsn
* #LpoBp ^property[=].valueString = "Lipoma biopsy specimen (specimen)"
* #Lrx "Gerklų tiriamoji medžiaga"
* #Lrx ^property[0].code = #snomed-code
* #Lrx ^property[=].valueCoding.system = "snomed-ct"
* #Lrx ^property[=].valueCoding = snomed-ct#430144001
* #Lrx ^property[+].code = #snomed-fsn
* #Lrx ^property[=].valueString = "Specimen from larynx (specimen)"
* #LrxSw "Gerklų eksudatas (tamponas)"
* #LrxSw ^property[0].code = #snomed-code
* #LrxSw ^property[=].valueCoding.system = "snomed-ct"
* #LrxSw ^property[=].valueCoding = snomed-ct#472888005
* #LrxSw ^property[+].code = #snomed-fsn
* #LrxSw ^property[=].valueString = "Swab from larynx (specimen)"
* #LungAbs "Plaučių absceso turinys"
* #LungAbs ^property[0].code = #snomed-code
* #LungAbs ^property[=].valueCoding.system = "snomed-ct"
* #LungAbs ^property[=].valueCoding = snomed-ct#29011000087100
* #LungAbs ^property[+].code = #snomed-fsn
* #LungAbs ^property[=].valueString = "Specimen from abscess of lung (specimen)"
* #LungBp "Plaučio bioptatas"
* #LungBp ^property[0].code = #snomed-code
* #LungBp ^property[=].valueCoding.system = "snomed-ct"
* #LungBp ^property[=].valueCoding = snomed-ct#122610009
* #LungBp ^property[+].code = #snomed-fsn
* #LungBp ^property[=].valueString = "Specimen from lung obtained by biopsy (specimen)"
* #LwResp "Apatinių kvėpavimo takų tiriamoji medžiaga"
* #LwResp ^property[0].code = #snomed-code
* #LwResp ^property[=].valueCoding.system = "snomed-ct"
* #LwResp ^property[=].valueCoding = snomed-ct#258606004
* #LwResp ^property[+].code = #snomed-fsn
* #LwResp ^property[=].valueString = "Lower respiratory tract specimen (specimen)"
* #MGen "Vyro lytinių organų tiriamoji medžiaga"
* #MGen ^property[0].code = #snomed-code
* #MGen ^property[=].valueCoding.system = "snomed-ct"
* #MGen ^property[=].valueCoding = snomed-ct#309052008
* #MGen ^property[+].code = #snomed-fsn
* #MGen ^property[=].valueString = "Male genital specimen (specimen)"
* #MGenSw "Vyro lytinių organų tiriamoji medžiaga (tamponas)"
* #MGenSw ^property[0].code = #snomed-code
* #MGenSw ^property[=].valueCoding.system = "snomed-ct"
* #MGenSw ^property[=].valueCoding = snomed-ct#258509000
* #MGenSw ^property[+].code = #snomed-fsn
* #MGenSw ^property[=].valueString = "Male genital swab (specimen)"
* #Mag "Vabzdžio lerva"
* #Mag ^property[0].code = #snomed-code
* #Mag ^property[=].valueCoding.system = "snomed-ct"
* #Mag ^property[=].valueCoding = snomed-ct#258616007
* #Mag ^property[+].code = #snomed-fsn
* #Mag ^property[=].valueString = "Maggot specimen (specimen)"
* #MastBp "Speninės ataugos bioptatas"
* #MastBp ^property[0].code = #snomed-code
* #MastBp ^property[=].valueCoding.system = "snomed-ct"
* #MastBp ^property[=].valueCoding = snomed-ct#309181006
* #MastBp ^property[+].code = #snomed-fsn
* #MastBp ^property[=].valueString = "Mastoid biopsy specimen (specimen)"
* #MdEarBp "Vidurinės ausies bioptatas"
* #MdEarBp ^property[0].code = #snomed-code
* #MdEarBp ^property[=].valueCoding.system = "snomed-ct"
* #MdEarBp ^property[=].valueCoding = snomed-ct#309167009
* #MdEarBp ^property[+].code = #snomed-fsn
* #MdEarBp ^property[=].valueString = "Middle ear biopsy specimen (specimen)"
* #MdEarF "Vidurinės ausies skystis"
* #MdEarF ^property[0].code = #snomed-code
* #MdEarF ^property[=].valueCoding.system = "snomed-ct"
* #MdEarF ^property[=].valueCoding = snomed-ct#258466008
* #MdEarF ^property[+].code = #snomed-fsn
* #MdEarF ^property[=].valueString = "Middle ear fluid sample (specimen)"
* #MdstBp "Tarpuplaučio bioptatas"
* #MdstBp ^property[0].code = #snomed-code
* #MdstBp ^property[=].valueCoding.system = "snomed-ct"
* #MdstBp ^property[=].valueCoding = snomed-ct#434014007
* #MdstBp ^property[+].code = #snomed-fsn
* #MdstBp ^property[=].valueString = "Specimen from mediastinum obtained by biopsy (specimen)"
* #Me "Mekonijus"
* #Me ^property[0].code = #snomed-code
* #Me ^property[=].valueCoding.system = "snomed-ct"
* #Me ^property[=].valueCoding = snomed-ct#119340004
* #Me ^property[+].code = #snomed-fsn
* #Me ^property[=].valueString = "Meconium specimen (specimen)"
* #MenBp "Smegenų dangalų bioptatas"
* #MenBp ^property[0].code = #snomed-code
* #MenBp ^property[=].valueCoding.system = "snomed-ct"
* #MenBp ^property[=].valueCoding = snomed-ct#432145007
* #MenBp ^property[+].code = #snomed-fsn
* #MenBp ^property[=].valueString = "Specimen from meninges obtained by biopsy (specimen)"
* #Milk "Motinos pienas"
* #Milk ^property[0].code = #snomed-code
* #Milk ^property[=].valueCoding.system = "snomed-ct"
* #Milk ^property[=].valueCoding = snomed-ct#446676001
* #Milk ^property[+].code = #snomed-fsn
* #Milk ^property[=].valueString = "Expressed breast milk specimen (specimen)"
* #MltJoF "Keleto sąnarių sinovinis skystis"
* #MltJoF ^property[0].code = #snomed-code
* #MltJoF ^property[=].valueCoding.system = "snomed-ct"
* #MltJoF ^property[=].valueCoding = snomed-ct#167867009
* #MltJoF ^property[+].code = #snomed-fsn
* #MltJoF ^property[=].valueString = "Multiple joint synovial fluid (specimen)"
* #MortTis "Pomirtiniai audiniai"
* #MortTis ^property[0].code = #snomed-code
* #MortTis ^property[=].valueCoding.system = "snomed-ct"
* #MortTis ^property[=].valueCoding = snomed-ct#258484005
* #MortTis ^property[+].code = #snomed-fsn
* #MortTis ^property[=].valueString = "Postmortem tissue specimen (specimen)"
* #MouthBp "Burnos bioptatas"
* #MouthBp ^property[0].code = #snomed-code
* #MouthBp ^property[=].valueCoding.system = "snomed-ct"
* #MouthBp ^property[=].valueCoding = snomed-ct#309188000
* #MouthBp ^property[+].code = #snomed-fsn
* #MouthBp ^property[=].valueString = "Mouth biopsy specimen (specimen)"
* #MscBp "Raumens bioptatas"
* #MscBp ^property[0].code = #snomed-code
* #MscBp ^property[=].valueCoding.system = "snomed-ct"
* #MscBp ^property[=].valueCoding = snomed-ct#309507001
* #MscBp ^property[+].code = #snomed-fsn
* #MscBp ^property[=].valueString = "Muscle biopsy specimen (specimen)"
* #MsntBp "Žarnų pasaito bioptatas"
* #MsntBp ^property[0].code = #snomed-code
* #MsntBp ^property[=].valueCoding.system = "snomed-ct"
* #MsntBp ^property[=].valueCoding = snomed-ct#432146008
* #MsntBp ^property[+].code = #snomed-fsn
* #MsntBp ^property[=].valueString = "Specimen from mesentery obtained by biopsy (specimen)"
* #NA "Nukleorūgštis"
* #NA ^property[0].code = #snomed-code
* #NA ^property[=].valueCoding.system = "snomed-ct"
* #NA ^property[=].valueCoding = snomed-ct#448789008
* #NA ^property[+].code = #snomed-fsn
* #NA ^property[=].valueString = "Nucleic acid specimen (specimen)"
* #NPhBp "Nosiaryklės bioptatas"
* #NPhBp ^property[0].code = #snomed-code
* #NPhBp ^property[=].valueCoding.system = "snomed-ct"
* #NPhBp ^property[=].valueCoding = snomed-ct#309180007
* #NPhBp ^property[+].code = #snomed-fsn
* #NPhBp ^property[=].valueString = "Nasopharyngeal biopsy specimen (specimen)"
* #NSinBp "Nosies sinuso bioptatas"
* #NSinBp ^property[0].code = #snomed-code
* #NSinBp ^property[=].valueCoding.system = "snomed-ct"
* #NSinBp ^property[=].valueCoding = snomed-ct#433860001
* #NSinBp ^property[+].code = #snomed-fsn
* #NSinBp ^property[=].valueString = "Specimen from nasal sinus obtained by biopsy (specimen)"
* #NSinFNA "Ėminys iš prienosinio ančio, aspiracija plona adata"
* #NSinFNA ^property[0].code = #snomed-code
* #NSinFNA ^property[=].valueCoding.system = "snomed-ct"
* #NSinFNA ^property[=].valueCoding = snomed-ct#433861002
* #NSinFNA ^property[+].code = #snomed-fsn
* #NSinFNA ^property[=].valueString = "Specimen from nasal sinus obtained by fine needle aspiration biopsy (specimen)"
* #NSinMuBp "Nosies sinuso gleivinės bioptatas"
* #NSinMuBp ^property[0].code = #snomed-code
* #NSinMuBp ^property[=].valueCoding.system = "snomed-ct"
* #NSinMuBp ^property[=].valueCoding = snomed-ct#16223091000119106
* #NSinMuBp ^property[+].code = #snomed-fsn
* #NSinMuBp ^property[=].valueString = "Specimen of mucosa of nasal sinus obtained by biopsy (specimen)"
* #Nail "Nagas"
* #Nail ^property[0].code = #snomed-code
* #Nail ^property[=].valueCoding.system = "snomed-ct"
* #Nail ^property[=].valueCoding = snomed-ct#119327009
* #Nail ^property[+].code = #snomed-fsn
* #Nail ^property[=].valueString = "Nail specimen (specimen)"
* #NailScr "Nago nuograndos"
* #NailScr ^property[0].code = #snomed-code
* #NailScr ^property[=].valueCoding.system = "snomed-ct"
* #NailScr ^property[=].valueCoding = snomed-ct#447098004
* #NailScr ^property[+].code = #snomed-fsn
* #NailScr ^property[=].valueString = "Specimen from nail obtained by scraping (specimen)"
* #NcrTis "Nekroziniai audiniai"
* #NcrTis ^property[0].code = #snomed-code
* #NcrTis ^property[=].valueCoding.system = "snomed-ct"
* #NcrTis ^property[=].valueCoding = snomed-ct#447407009
* #NcrTis ^property[+].code = #snomed-fsn
* #NcrTis ^property[=].valueString = "Specimen from necrotic tissue (specimen)"
* #NewBl "Kraujas, naujagimio"
* #NewBl ^property[0].code = #snomed-code
* #NewBl ^property[=].valueCoding.system = "snomed-ct"
* #NewBl ^property[=].valueCoding = snomed-ct#122562003
* #NewBl ^property[+].code = #snomed-fsn
* #NewBl ^property[=].valueString = "Blood specimen from newborn (specimen)"
* #NoAnaAxSw "Nosies priekinių landų sekretas + išangė + pažastis (tamponai)"
* #NoAnaAxSw ^property[0].code = #snomed-code
* #NoAnaAxSw ^property[=].valueCoding.system = "snomed-ct"
* #NoAnaAxSw ^property[=].valueCoding = snomed-ct#33641000087108
* #NoAnaAxSw ^property[+].code = #snomed-fsn
* #NoAnaAxSw ^property[=].valueString = "Combined specimen from swab of anterior nares and anus and axilla (specimen)"
* #NoAnaSw "Nosies priekinių landų sekretas + išangė (tamponai)"
* #NoAnaSw ^property[0].code = #snomed-code
* #NoAnaSw ^property[=].valueCoding.system = "snomed-ct"
* #NoAnaSw ^property[=].valueCoding = snomed-ct#33651000087106
* #NoAnaSw ^property[+].code = #snomed-fsn
* #NoAnaSw ^property[=].valueString = "Combined specimen from swab of anterior nares and anus (specimen)"
* #NoAnaThSw "Nosies priekinių landų sekretas + išangė + gerklė (tamponai)"
* #NoAnaThSw ^property[0].code = #snomed-code
* #NoAnaThSw ^property[=].valueCoding.system = "snomed-ct"
* #NoAnaThSw ^property[=].valueCoding = snomed-ct#33671000087100
* #NoAnaThSw ^property[+].code = #snomed-fsn
* #NoAnaThSw ^property[=].valueString = "Combined specimen from swab of anterior nares and anus and throat (specimen)"
* #NoAnaUmSw "Nosies priekinių landų sekretas + išangė + virkštelė (tamponai)"
* #NoAnaUmSw ^property[0].code = #snomed-code
* #NoAnaUmSw ^property[=].valueCoding.system = "snomed-ct"
* #NoAnaUmSw ^property[=].valueCoding = snomed-ct#33661000087109
* #NoAnaUmSw ^property[+].code = #snomed-fsn
* #NoAnaUmSw ^property[=].valueString = "Combined specimen from swab of anterior nares and anus and umbilicus (specimen)"
* #NoAxIngSw "Nosies priekinių landų sekretas + pažastis+ kikšnis (tamponai)"
* #NoAxIngSw ^property[0].code = #snomed-code
* #NoAxIngSw ^property[=].valueCoding.system = "snomed-ct"
* #NoAxIngSw ^property[=].valueCoding = snomed-ct#42061000087105
* #NoAxIngSw ^property[+].code = #snomed-fsn
* #NoAxIngSw ^property[=].valueString = "Combined specimen from swab of anterior nares and axillary fossa and inguinal region (specimen)"
* #NoThSw "Nosies priekinių landų sekretas + gerklė (tamponai)"
* #NoThSw ^property[0].code = #snomed-code
* #NoThSw ^property[=].valueCoding.system = "snomed-ct"
* #NoThSw ^property[=].valueCoding = snomed-ct#433881000124103
* #NoThSw ^property[+].code = #snomed-fsn
* #NoThSw ^property[=].valueString = "Combined specimen from swab of anterior nares and throat (specimen)"
* #NosBp "Nosies bioptatas"
* #NosBp ^property[0].code = #snomed-code
* #NosBp ^property[=].valueCoding.system = "snomed-ct"
* #NosBp ^property[=].valueCoding = snomed-ct#309178001
* #NosBp ^property[+].code = #snomed-fsn
* #NosBp ^property[=].valueString = "Nasal biopsy specimen (specimen)"
* #Nose "Nosies tiriamoji medžiaga"
* #Nose ^property[0].code = #snomed-code
* #Nose ^property[=].valueCoding.system = "snomed-ct"
* #Nose ^property[=].valueCoding = snomed-ct#119388001
* #Nose ^property[+].code = #snomed-fsn
* #Nose ^property[=].valueString = "Specimen from internal nose (specimen)"
* #NoseSw "Nosies sekretas (tamponas)"
* #NoseSw ^property[0].code = #snomed-code
* #NoseSw ^property[=].valueCoding.system = "snomed-ct"
* #NoseSw ^property[=].valueCoding = snomed-ct#445297001
* #NoseSw ^property[+].code = #snomed-fsn
* #NoseSw ^property[=].valueString = "Swab of internal nose (specimen)"
* #Nph "Nosiaryklės tiriamoji medžiaga"
* #Nph ^property[0].code = #snomed-code
* #Nph ^property[=].valueCoding.system = "snomed-ct"
* #Nph ^property[=].valueCoding = snomed-ct#430248009
* #Nph ^property[+].code = #snomed-fsn
* #Nph ^property[=].valueString = "Specimen from nasopharyngeal structure (specimen)"
* #NphAsp "Nosiaryklės eksudatas (aspiratas)"
* #NphAsp ^property[0].code = #snomed-code
* #NphAsp ^property[=].valueCoding.system = "snomed-ct"
* #NphAsp ^property[=].valueCoding = snomed-ct#258411007
* #NphAsp ^property[+].code = #snomed-fsn
* #NphAsp ^property[=].valueString = "Nasopharyngeal aspirate (specimen)"
* #NphSw "Nosiaryklės eksudatas (tamponas)"
* #NphSw ^property[0].code = #snomed-code
* #NphSw ^property[=].valueCoding.system = "snomed-ct"
* #NphSw ^property[=].valueCoding = snomed-ct#258500001
* #NphSw ^property[+].code = #snomed-fsn
* #NphSw ^property[=].valueString = "Nasopharyngeal swab (specimen)"
* #NphWs "Nosiaryklės išplovos"
* #NphWs ^property[0].code = #snomed-code
* #NphWs ^property[=].valueCoding.system = "snomed-ct"
* #NphWs ^property[=].valueCoding = snomed-ct#258467004
* #NphWs ^property[+].code = #snomed-fsn
* #NphWs ^property[=].valueString = "Nasopharyngeal washings (specimen)"
* #NrvBp "Nervo bioptatas"
* #NrvBp ^property[0].code = #snomed-code
* #NrvBp ^property[=].valueCoding.system = "snomed-ct"
* #NrvBp ^property[=].valueCoding = snomed-ct#309130001
* #NrvBp ^property[+].code = #snomed-fsn
* #NrvBp ^property[=].valueString = "Nerve biopsy specimen (specimen)"
* #OmnBp "Didžiosios taukinės bioptatas"
* #OmnBp ^property[0].code = #snomed-code
* #OmnBp ^property[=].valueCoding.system = "snomed-ct"
* #OmnBp ^property[=].valueCoding = snomed-ct#309208007
* #OmnBp ^property[+].code = #snomed-fsn
* #OmnBp ^property[=].valueString = "Omentum biopsy specimen (specimen)"
* #OmtTis "Didžiosios taukinės audiniai"
* #OmtTis ^property[0].code = #snomed-code
* #OmtTis ^property[=].valueCoding.system = "snomed-ct"
* #OmtTis ^property[=].valueCoding = snomed-ct#309495002
* #OmtTis ^property[+].code = #snomed-fsn
* #OmtTis ^property[=].valueString = "Omentum tissue specimen (specimen)"
* #OpWdSw "Operacinės žaizdos eksudatas (tamponas)"
* #OpWdSw ^property[0].code = #snomed-code
* #OpWdSw ^property[=].valueCoding.system = "snomed-ct"
* #OpWdSw ^property[=].valueCoding = snomed-ct#472883001
* #OpWdSw ^property[+].code = #snomed-fsn
* #OpWdSw ^property[=].valueString = "Swab from surgical wound (specimen)"
* #OphAsp "Burnaryklės aspiratas"
* #OphAsp ^property[0].code = #snomed-code
* #OphAsp ^property[=].valueCoding.system = "snomed-ct"
* #OphAsp ^property[=].valueCoding = snomed-ct#258412000
* #OphAsp ^property[+].code = #snomed-fsn
* #OphAsp ^property[=].valueString = "Oropharyngeal aspirate (specimen)"
* #OphSw "Burnaryklės eksudatas (tamponas)"
* #OphSw ^property[0].code = #snomed-code
* #OphSw ^property[=].valueCoding.system = "snomed-ct"
* #OphSw ^property[=].valueCoding = snomed-ct#461911000124106
* #OphSw ^property[+].code = #snomed-fsn
* #OphSw ^property[=].valueString = "Swab specimen from oropharynx (specimen)"
* #OphWs "Burnaryklės išplovos"
* #OphWs ^property[0].code = #snomed-code
* #OphWs ^property[=].valueCoding.system = "snomed-ct"
* #OphWs ^property[=].valueCoding = snomed-ct#1149105007
* #OphWs ^property[+].code = #snomed-fsn
* #OphWs ^property[=].valueString = "Oropharyngeal washings (specimen)"
* #OrTis "Burnos audiniai"
* #OrTis ^property[0].code = #snomed-code
* #OrTis ^property[=].valueCoding.system = "snomed-ct"
* #OrTis ^property[=].valueCoding = snomed-ct#309186001
* #OrTis ^property[+].code = #snomed-fsn
* #OrTis ^property[=].valueString = "Oral tissue specimen (specimen)"
* #OraSw "Burnos tiriamoji medžiaga (tamponas)"
* #OraSw ^property[0].code = #snomed-code
* #OraSw ^property[=].valueCoding.system = "snomed-ct"
* #OraSw ^property[=].valueCoding = snomed-ct#418932006
* #OraSw ^property[+].code = #snomed-fsn
* #OraSw ^property[=].valueString = "Oral swab (specimen)"
* #Ova "Kiaušidės tiriamoji medžiaga"
* #Ova ^property[0].code = #snomed-code
* #Ova ^property[=].valueCoding.system = "snomed-ct"
* #Ova ^property[=].valueCoding = snomed-ct#128155007
* #Ova ^property[+].code = #snomed-fsn
* #Ova ^property[=].valueString = "Specimen from ovary (specimen)"
* #OvaAbs "Kiaušidės absceso turinys"
* #OvaAbs ^property[0].code = #snomed-code
* #OvaAbs ^property[=].valueCoding.system = "snomed-ct"
* #OvaAbs ^property[=].valueCoding = snomed-ct#32641000087102
* #OvaAbs ^property[+].code = #snomed-fsn
* #OvaAbs ^property[=].valueString = "Specimen from abscess of ovary (specimen)"
* #OvaBp "Kiaušidės bioptatas"
* #OvaBp ^property[0].code = #snomed-code
* #OvaBp ^property[=].valueCoding.system = "snomed-ct"
* #OvaBp ^property[=].valueCoding = snomed-ct#122708000
* #OvaBp ^property[+].code = #snomed-fsn
* #OvaBp ^property[=].valueString = "Specimen from ovary obtained by biopsy (specimen)"
* #OvaCystF "Kiaušidės cistos skystis"
* #OvaCystF ^property[0].code = #snomed-code
* #OvaCystF ^property[=].valueCoding.system = "snomed-ct"
* #OvaCystF ^property[=].valueCoding = snomed-ct#732972008
* #OvaCystF ^property[+].code = #snomed-fsn
* #OvaCystF ^property[=].valueString = "Fluid specimen from cyst of ovary (specimen)"
* #OvaF "Kiaušidės skystis"
* #OvaF ^property[0].code = #snomed-code
* #OvaF ^property[=].valueCoding.system = "snomed-ct"
* #OvaF ^property[=].valueCoding = snomed-ct#309292002
* #OvaF ^property[+].code = #snomed-fsn
* #OvaF ^property[=].valueString = "Ovarian fluid specimen (specimen)"
* #OvaTis "Kiaušidės audiniai"
* #OvaTis ^property[0].code = #snomed-code
* #OvaTis ^property[=].valueCoding.system = "snomed-ct"
* #OvaTis ^property[=].valueCoding = snomed-ct#127482009
* #OvaTis ^property[+].code = #snomed-fsn
* #OvaTis ^property[=].valueString = "Tissue specimen from ovary (specimen)"
* #P "Plazma"
* #P ^property[0].code = #snomed-code
* #P ^property[=].valueCoding.system = "snomed-ct"
* #P ^property[=].valueCoding = snomed-ct#119361006
* #P ^property[+].code = #snomed-fsn
* #P ^property[=].valueString = "Plasma specimen (specimen)"
* #P9NC "Plazma su Na citratu"
* #P9NC ^property[0].code = #snomed-code
* #P9NC ^property[=].valueCoding.system = "snomed-ct"
* #P9NC ^property[=].valueCoding = snomed-ct#708048008
* #P9NC ^property[+].code = #snomed-fsn
* #P9NC ^property[=].valueString = "Plasma specimen with citrate (specimen)"
* #PK2E/K3E "Plazma su K2/K3 EDTA"
* #PK2E/K3E ^property[0].code = #snomed-code
* #PK2E/K3E ^property[=].valueCoding.system = "snomed-ct"
* #PK2E/K3E ^property[=].valueCoding = snomed-ct#708049000
* #PK2E/K3E ^property[+].code = #snomed-fsn
* #PK2E/K3E ^property[=].valueString = "Plasma specimen with ethylenediamine tetraacetic acid (specimen)"
* #PPP "Plazma, stokojanti trombocitų"
* #PPP ^property[0].code = #snomed-code
* #PPP ^property[=].valueCoding.system = "snomed-ct"
* #PPP ^property[=].valueCoding = snomed-ct#119362004
* #PPP ^property[+].code = #snomed-fsn
* #PPP ^property[=].valueString = "Platelet poor plasma specimen (specimen)"
* #PRP "Plazma, gausi trombocitų"
* #PRP ^property[0].code = #snomed-code
* #PRP ^property[=].valueCoding.system = "snomed-ct"
* #PRP ^property[=].valueCoding = snomed-ct#119363009
* #PRP ^property[+].code = #snomed-fsn
* #PRP ^property[=].valueString = "Platelet rich plasma specimen (specimen)"
* #PancBp "Kasos bioptatas"
* #PancBp ^property[0].code = #snomed-code
* #PancBp ^property[=].valueCoding.system = "snomed-ct"
* #PancBp ^property[=].valueCoding = snomed-ct#309206006
* #PancBp ^property[+].code = #snomed-fsn
* #PancBp ^property[=].valueString = "Pancreas biopsy specimen (specimen)"
* #PancCystF "Kasos cistos skystis"
* #PancCystF ^property[0].code = #snomed-code
* #PancCystF ^property[=].valueCoding.system = "snomed-ct"
* #PancCystF ^property[=].valueCoding = snomed-ct#16220931000119104
* #PancCystF ^property[+].code = #snomed-fsn
* #PancCystF ^property[=].valueString = "Pancreas cyst fluid specimen (specimen)"
* #PancStn "Kasos akmuo"
* #PancStn ^property[0].code = #snomed-code
* #PancStn ^property[=].valueCoding.system = "snomed-ct"
* #PancStn ^property[=].valueCoding = snomed-ct#258494000
* #PancStn ^property[+].code = #snomed-fsn
* #PancStn ^property[=].valueString = "Pancreatic stone specimen (specimen)"
* #PancTis "Kasos audiniai"
* #PancTis ^property[0].code = #snomed-code
* #PancTis ^property[=].valueCoding.system = "snomed-ct"
* #PancTis ^property[=].valueCoding = snomed-ct#127470000
* #PancTis ^property[+].code = #snomed-fsn
* #PancTis ^property[=].valueString = "Tissue specimen from pancreas (specimen)"
* #Ped "Ūtėlė"
* #Ped ^property[0].code = #snomed-code
* #Ped ^property[=].valueCoding.system = "snomed-ct"
* #Ped ^property[=].valueCoding = snomed-ct#16214211000119104
* #Ped ^property[+].code = #snomed-fsn
* #Ped ^property[=].valueString = "Pediculus specimen (specimen)"
* #PelvAbs "Dubens absceso turinys"
* #PelvAbs ^property[0].code = #snomed-code
* #PelvAbs ^property[=].valueCoding.system = "snomed-ct"
* #PelvAbs ^property[=].valueCoding = snomed-ct#29041000087104
* #PelvAbs ^property[+].code = #snomed-fsn
* #PelvAbs ^property[=].valueString = "Specimen from pelvic abscess (specimen)"
* #Pen "Varpos tiriamoji medžiaga"
* #Pen ^property[0].code = #snomed-code
* #Pen ^property[=].valueCoding.system = "snomed-ct"
* #Pen ^property[=].valueCoding = snomed-ct#119397002
* #Pen ^property[+].code = #snomed-fsn
* #Pen ^property[=].valueString = "Specimen from penis (specimen)"
* #PenBp "Varpos bioptatas"
* #PenBp ^property[0].code = #snomed-code
* #PenBp ^property[=].valueCoding.system = "snomed-ct"
* #PenBp ^property[=].valueCoding = snomed-ct#432142005
* #PenBp ^property[+].code = #snomed-fsn
* #PenBp ^property[=].valueString = "Specimen from penis obtained by biopsy (specimen)"
* #PenDsc "Varpos išskyros"
* #PenDsc ^property[0].code = #snomed-code
* #PenDsc ^property[=].valueCoding.system = "snomed-ct"
* #PenDsc ^property[=].valueCoding = snomed-ct#732295009
* #PenDsc ^property[+].code = #snomed-fsn
* #PenDsc ^property[=].valueString = "Discharge specimen from penis (specimen)"
* #PenSw "Varpa (tamponas)"
* #PenSw ^property[0].code = #snomed-code
* #PenSw ^property[=].valueCoding.system = "snomed-ct"
* #PenSw ^property[=].valueCoding = snomed-ct#258510005
* #PenSw ^property[+].code = #snomed-fsn
* #PenSw ^property[=].valueString = "Penis swab (specimen)"
* #PenTis "Varpos audiniai"
* #PenTis ^property[0].code = #snomed-code
* #PenTis ^property[=].valueCoding.system = "snomed-ct"
* #PenTis ^property[=].valueCoding = snomed-ct#128169007
* #PenTis ^property[+].code = #snomed-fsn
* #PenTis ^property[=].valueString = "Tissue specimen from penis (specimen)"
* #PenWdScr "Varpos žaizdos nuograndos"
* #PenWdScr ^property[0].code = #snomed-code
* #PenWdScr ^property[=].valueCoding.system = "snomed-ct"
* #PenWdScr ^property[=].valueCoding = snomed-ct#733484007
* #PenWdScr ^property[+].code = #snomed-fsn
* #PenWdScr ^property[=].valueString = "Specimen from lesion of penis obtained by scraping (specimen)"
* #PerBl "Kraujas, periferinis"
* #PerBl ^property[0].code = #snomed-code
* #PerBl ^property[=].valueCoding.system = "snomed-ct"
* #PerBl ^property[=].valueCoding = snomed-ct#122551003
* #PerBl ^property[+].code = #snomed-fsn
* #PerBl ^property[=].valueString = "Peripheral blood specimen (specimen)"
* #PerCaTip "Kateterio galas, periferinės kraujagyslės"
* #PerCaTip ^property[0].code = #snomed-code
* #PerCaTip ^property[=].valueCoding.system = "snomed-ct"
* #PerCaTip ^property[=].valueCoding = snomed-ct#472923004
* #PerCaTip ^property[+].code = #snomed-fsn
* #PerCaTip ^property[=].valueString = "Peripheral vascular catheter tip submitted as specimen (specimen)"
* #PerenF "Perirenalinio tarpo skystis"
* #PerenF ^property[0].code = #snomed-code
* #PerenF ^property[=].valueCoding.system = "snomed-ct"
* #PerenF ^property[=].valueCoding = snomed-ct#733101007
* #PerenF ^property[+].code = #snomed-fsn
* #PerenF ^property[=].valueString = "Fluid specimen from perirenal region (specimen)"
* #PerenTis "Perirenaliniai audiniai"
* #PerenTis ^property[0].code = #snomed-code
* #PerenTis ^property[=].valueCoding.system = "snomed-ct"
* #PerenTis ^property[=].valueCoding = snomed-ct#608856009
* #PerenTis ^property[+].code = #snomed-fsn
* #PerenTis ^property[=].valueString = "Specimen from perirenal tissue (specimen)"
* #PhrAsp "Ryklės eksudatas (aspiratas)"
* #PhrAsp ^property[0].code = #snomed-code
* #PhrAsp ^property[=].valueCoding.system = "snomed-ct"
* #PhrAsp ^property[=].valueCoding = snomed-ct#447391001
* #PhrAsp ^property[+].code = #snomed-fsn
* #PhrAsp ^property[=].valueString = "Specimen from pharynx obtained by aspiration (specimen)"
* #PhrBp "Ryklės bioptatas"
* #PhrBp ^property[0].code = #snomed-code
* #PhrBp ^property[=].valueCoding.system = "snomed-ct"
* #PhrBp ^property[=].valueCoding = snomed-ct#309193002
* #PhrBp ^property[+].code = #snomed-fsn
* #PhrBp ^property[=].valueString = "Pharyngeal biopsy specimen (specimen)"
* #PhrSw "Ryklės eksudatas (tamponas)"
* #PhrSw ^property[0].code = #snomed-code
* #PhrSw ^property[=].valueCoding.system = "snomed-ct"
* #PhrSw ^property[=].valueCoding = snomed-ct#472881004
* #PhrSw ^property[+].code = #snomed-fsn
* #PhrSw ^property[=].valueString = "Swab from pharynx (specimen)"
* #PhrWs "Ryklės išplovos"
* #PhrWs ^property[0].code = #snomed-code
* #PhrWs ^property[=].valueCoding.system = "snomed-ct"
* #PhrWs ^property[=].valueCoding = snomed-ct#258469001
* #PhrWs ^property[+].code = #snomed-fsn
* #PhrWs ^property[=].valueString = "Pharyngeal washings (specimen)"
* #PilfisWdSw "Pilonidinės fistulės (sinuso) eksudatas (tamponas)"
* #PilfisWdSw ^property[0].code = #snomed-code
* #PilfisWdSw ^property[=].valueCoding.system = "snomed-ct"
* #PilfisWdSw ^property[=].valueCoding = snomed-ct#438343001
* #PilfisWdSw ^property[+].code = #snomed-fsn
* #PilfisWdSw ^property[=].valueString = "Swab of pilonidal sinus (specimen)"
* #Plac "Placenta ar Placentos tiriamoji medžiaga"
* #Plac ^property[0].code = #snomed-code
* #Plac ^property[=].valueCoding.system = "snomed-ct"
* #Plac ^property[=].valueCoding = snomed-ct#119403008
* #Plac ^property[+].code = #snomed-fsn
* #Plac ^property[=].valueString = "Specimen from placenta (specimen)"
* #PlacBp "Placentos bioptatas"
* #PlacBp ^property[0].code = #snomed-code
* #PlacBp ^property[=].valueCoding.system = "snomed-ct"
* #PlacBp ^property[=].valueCoding = snomed-ct#309293007
* #PlacBp ^property[+].code = #snomed-fsn
* #PlacBp ^property[=].valueString = "Placenta biopsy specimen (specimen)"
* #PlacTis "Placentos audiniai"
* #PlacTis ^property[0].code = #snomed-code
* #PlacTis ^property[=].valueCoding.system = "snomed-ct"
* #PlacTis ^property[=].valueCoding = snomed-ct#122736005
* #PlacTis ^property[+].code = #snomed-fsn
* #PlacTis ^property[=].valueString = "Tissue specimen from placenta (specimen)"
* #PlrBp "Pleuros bioptatas"
* #PlrBp ^property[0].code = #snomed-code
* #PlrBp ^property[=].valueCoding.system = "snomed-ct"
* #PlrBp ^property[=].valueCoding = snomed-ct#309172000
* #PlrBp ^property[+].code = #snomed-fsn
* #PlrBp ^property[=].valueString = "Pleura biopsy specimen (specimen)"
* #PlrF "Pleuros skystis"
* #PlrF ^property[0].code = #snomed-code
* #PlrF ^property[=].valueCoding.system = "snomed-ct"
* #PlrF ^property[=].valueCoding = snomed-ct#418564007
* #PlrF ^property[+].code = #snomed-fsn
* #PlrF ^property[=].valueString = "Pleural fluid specimen (specimen)"
* #PlrTis "Pleuros audiniai"
* #PlrTis ^property[0].code = #snomed-code
* #PlrTis ^property[=].valueCoding.system = "snomed-ct"
* #PlrTis ^property[=].valueCoding = snomed-ct#127460002
* #PlrTis ^property[+].code = #snomed-fsn
* #PlrTis ^property[=].valueString = "Tissue specimen from pleura (specimen)"
* #PltP "Trombocitų masė"
* #PltP ^property[0].code = #snomed-code
* #PltP ^property[=].valueCoding.system = "snomed-ct"
* #PltP ^property[=].valueCoding = snomed-ct#256395009
* #PltP ^property[+].code = #snomed-fsn
* #PltP ^property[=].valueString = "Platelet product (product)"
* #PranaBp "Perianalinės srities bioptatas"
* #PranaBp ^property[0].code = #snomed-code
* #PranaBp ^property[=].valueCoding.system = "snomed-ct"
* #PranaBp ^property[=].valueCoding = snomed-ct#16223731000119109
* #PranaBp ^property[+].code = #snomed-fsn
* #PranaBp ^property[=].valueString = "Specimen from perianal region obtained by biopsy (specimen)"
* #PranaSw "Perianalinė sritis (tamponas)"
* #PranaSw ^property[0].code = #snomed-code
* #PranaSw ^property[=].valueCoding.system = "snomed-ct"
* #PranaSw ^property[=].valueCoding = snomed-ct#258526006
* #PranaSw ^property[+].code = #snomed-fsn
* #PranaSw ^property[=].valueString = "Perianal swab (specimen)"
* #PranaWdSw "Perianalinės srities žaizdos nuograndos"
* #PranaWdSw ^property[0].code = #snomed-code
* #PranaWdSw ^property[=].valueCoding.system = "snomed-ct"
* #PranaWdSw ^property[=].valueCoding = snomed-ct#733485008
* #PranaWdSw ^property[+].code = #snomed-fsn
* #PranaWdSw ^property[=].valueString = "Specimen from lesion of perianal region obtained by scraping (specimen)"
* #PrcF "Perikardo skystis"
* #PrcF ^property[0].code = #snomed-code
* #PrcF ^property[=].valueCoding.system = "snomed-ct"
* #PrcF ^property[=].valueCoding = snomed-ct#122571007
* #PrcF ^property[+].code = #snomed-fsn
* #PrcF ^property[=].valueString = "Pericardial fluid specimen (specimen)"
* #PrcdBp "Perikardo bioptatas"
* #PrcdBp ^property[0].code = #snomed-code
* #PrcdBp ^property[=].valueCoding.system = "snomed-ct"
* #PrcdBp ^property[=].valueCoding = snomed-ct#434250007
* #PrcdBp ^property[+].code = #snomed-fsn
* #PrcdBp ^property[=].valueString = "Specimen from pericardium obtained by biopsy (specimen)"
* #PresWdSw "Spaudimo sukelto sužalojimo (pragulos) eksudatas (tamponas)"
* #PresWdSw ^property[0].code = #snomed-code
* #PresWdSw ^property[=].valueCoding.system = "snomed-ct"
* #PresWdSw ^property[=].valueCoding = snomed-ct#472885008
* #PresWdSw ^property[+].code = #snomed-fsn
* #PresWdSw ^property[=].valueString = "Swab from pressure injury (specimen)"
* #PrnSw "Tarpvietė (tamponas)"
* #PrnSw ^property[0].code = #snomed-code
* #PrnSw ^property[=].valueCoding.system = "snomed-ct"
* #PrnSw ^property[=].valueCoding = snomed-ct#258525005
* #PrnSw ^property[+].code = #snomed-fsn
* #PrnSw ^property[=].valueString = "Perineal swab (specimen)"
* #ProdTis "Periodonto audiniai"
* #ProdTis ^property[0].code = #snomed-code
* #ProdTis ^property[=].valueCoding.system = "snomed-ct"
* #ProdTis ^property[=].valueCoding = snomed-ct#734379005
* #ProdTis ^property[+].code = #snomed-fsn
* #ProdTis ^property[=].valueString = "Specimen from periodontal tissue (specimen)"
* #PrsF "Prostatos sekretas"
* #PrsF ^property[0].code = #snomed-code
* #PrsF ^property[=].valueCoding.system = "snomed-ct"
* #PrsF ^property[=].valueCoding = snomed-ct#258470000
* #PrsF ^property[+].code = #snomed-fsn
* #PrsF ^property[=].valueString = "Prostatic fluid sample (specimen)"
* #PrsMsgF "Prostatos sekretas, po prostatos masažo"
* #PrsMsgF ^property[0].code = #snomed-code
* #PrsMsgF ^property[=].valueCoding.system = "snomed-ct"
* #PrsMsgF ^property[=].valueCoding = snomed-ct#258471001
* #PrsMsgF ^property[+].code = #snomed-fsn
* #PrsMsgF ^property[=].valueString = "Prostatic massage fluid sample (specimen)"
* #Prst "Parazitas"
* #Prst ^property[0].code = #snomed-code
* #Prst ^property[=].valueCoding.system = "snomed-ct"
* #Prst ^property[=].valueCoding = snomed-ct#258617003
* #Prst ^property[+].code = #snomed-fsn
* #Prst ^property[=].valueString = "Parasite specimen (specimen)"
* #PrstBp "Prostatos bioptatas"
* #PrstBp ^property[0].code = #snomed-code
* #PrstBp ^property[=].valueCoding.system = "snomed-ct"
* #PrstBp ^property[=].valueCoding = snomed-ct#309132009
* #PrstBp ^property[+].code = #snomed-fsn
* #PrstBp ^property[=].valueString = "Prostate biopsy specimen (specimen)"
* #PrstTis "Prostatos audiniai"
* #PrstTis ^property[0].code = #snomed-code
* #PrstTis ^property[=].valueCoding.system = "snomed-ct"
* #PrstTis ^property[=].valueCoding = snomed-ct#128170008
* #PrstTis ^property[+].code = #snomed-fsn
* #PrstTis ^property[=].valueString = "Tissue specimen from prostate (specimen)"
* #PrstWorm "Parazitinė kirmėlė"
* #PrstWorm ^property[0].code = #snomed-code
* #PrstWorm ^property[=].valueCoding.system = "snomed-ct"
* #PrstWorm ^property[=].valueCoding = snomed-ct#704663000
* #PrstWorm ^property[+].code = #snomed-fsn
* #PrstWorm ^property[=].valueString = "Parasitic worm specimen (specimen)"
* #PrtDiaF "Peritoninis dializatas"
* #PrtDiaF ^property[0].code = #snomed-code
* #PrtDiaF ^property[=].valueCoding.system = "snomed-ct"
* #PrtDiaF ^property[=].valueCoding = snomed-ct#168140004
* #PrtDiaF ^property[+].code = #snomed-fsn
* #PrtDiaF ^property[=].valueString = "Peritoneal dialysate specimen (specimen)"
* #PrtF "Pilvaplėvės skystis (ascitas)"
* #PrtF ^property[0].code = #snomed-code
* #PrtF ^property[=].valueCoding.system = "snomed-ct"
* #PrtF ^property[=].valueCoding = snomed-ct#168139001
* #PrtF ^property[+].code = #snomed-fsn
* #PrtF ^property[=].valueString = "Peritoneal fluid specimen (specimen)"
* #PrtJo "Dirbtino sąnario tiriamoji medžiaga"
* #PrtJo ^property[0].code = #snomed-code
* #PrtJo ^property[=].valueCoding.system = "snomed-ct"
* #PrtJo ^property[=].valueCoding = snomed-ct#1003711005
* #PrtJo ^property[+].code = #snomed-fsn
* #PrtJo ^property[=].valueString = "Specimen from prosthetic joint (specimen)"
* #Prth "Protezas/implantas"
* #Prth ^property[0].code = #snomed-code
* #Prth ^property[=].valueCoding.system = "snomed-ct"
* #Prth ^property[=].valueCoding = snomed-ct#439961009
* #Prth ^property[+].code = #snomed-fsn
* #Prth ^property[=].valueString = "Implant submitted as specimen (specimen)"
* #PrthBp "Prieskydinės liaukos bioptatas"
* #PrthBp ^property[0].code = #snomed-code
* #PrthBp ^property[=].valueCoding.system = "snomed-ct"
* #PrthBp ^property[=].valueCoding = snomed-ct#309151003
* #PrthBp ^property[+].code = #snomed-fsn
* #PrthBp ^property[=].valueString = "Parathyroid biopsy specimen (specimen)"
* #PrtnBp "Pilvaplėvės bioptatas"
* #PrtnBp ^property[0].code = #snomed-code
* #PrtnBp ^property[=].valueCoding.system = "snomed-ct"
* #PrtnBp ^property[=].valueCoding = snomed-ct#309207002
* #PrtnBp ^property[+].code = #snomed-fsn
* #PrtnBp ^property[=].valueString = "Peritoneal biopsy specimen (specimen)"
* #PrtnSw "Pilvaplėvės ertmė (tamponas)"
* #PrtnSw ^property[0].code = #snomed-code
* #PrtnSw ^property[=].valueCoding.system = "snomed-ct"
* #PrtnSw ^property[=].valueCoding = snomed-ct#472868006
* #PrtnSw ^property[+].code = #snomed-fsn
* #PrtnSw ^property[=].valueString = "Swab from peritoneal cavity structure (specimen)"
* #Pus "Pūliai"
* #Pus ^property[0].code = #snomed-code
* #Pus ^property[=].valueCoding.system = "snomed-ct"
* #Pus ^property[=].valueCoding = snomed-ct#119323008
* #Pus ^property[+].code = #snomed-fsn
* #Pus ^property[=].valueString = "Pus specimen (specimen)"
* #PusSw "Pūliai (tamponas)"
* #PusSw ^property[0].code = #snomed-code
* #PusSw ^property[=].valueCoding.system = "snomed-ct"
* #PusSw ^property[=].valueCoding = snomed-ct#258502009
* #PusSw ^property[+].code = #snomed-fsn
* #PusSw ^property[=].valueString = "Pus swab (specimen)"
* #RBC "Eritrocitai"
* #RBC ^property[0].code = #snomed-code
* #RBC ^property[=].valueCoding.system = "snomed-ct"
* #RBC ^property[=].valueCoding = snomed-ct#119351004
* #RBC ^property[+].code = #snomed-fsn
* #RBC ^property[=].valueString = "Erythrocyte specimen (specimen)"
* #RBCP "Eritrocitų masė"
* #RBCP ^property[0].code = #snomed-code
* #RBCP ^property[=].valueCoding.system = "snomed-ct"
* #RBCP ^property[=].valueCoding = snomed-ct#126242007
* #RBCP ^property[+].code = #snomed-fsn
* #RBCP ^property[=].valueString = "Red blood cells, blood product (product)"
* #RFlTb "Dešiniojo kiaušintakio tiriamoji medžiaga"
* #RFlTb ^property[0].code = #snomed-code
* #RFlTb ^property[=].valueCoding.system = "snomed-ct"
* #RFlTb ^property[=].valueCoding = snomed-ct#119384004
* #RFlTb ^property[+].code = #snomed-fsn
* #RFlTb ^property[=].valueString = "Specimen from right fallopian tube (specimen)"
* #RNA "RNR"
* #RNA ^property[0].code = #snomed-code
* #RNA ^property[=].valueCoding.system = "snomed-ct"
* #RNA ^property[=].valueCoding = snomed-ct#441673008
* #RNA ^property[+].code = #snomed-fsn
* #RNA ^property[=].valueString = "Ribonucleic acid specimen (specimen)"
* #RctBp "Tiesiosios žarnos bioptatas"
* #RctBp ^property[0].code = #snomed-code
* #RctBp ^property[=].valueCoding.system = "snomed-ct"
* #RctBp ^property[=].valueCoding = snomed-ct#309262006
* #RctBp ^property[+].code = #snomed-fsn
* #RctBp ^property[=].valueString = "Rectal biopsy specimen (specimen)"
* #RctTis "Tiesiosios žarnos audiniai"
* #RctTis ^property[0].code = #snomed-code
* #RctTis ^property[=].valueCoding.system = "snomed-ct"
* #RctTis ^property[=].valueCoding = snomed-ct#309200000
* #RctTis ^property[+].code = #snomed-fsn
* #RctTis ^property[=].valueString = "Rectal tissue specimen (specimen)"
* #Rec "Tiesiosios žarnos tiriamoji medžiaga"
* #Rec ^property[0].code = #snomed-code
* #Rec ^property[=].valueCoding.system = "snomed-ct"
* #Rec ^property[=].valueCoding = snomed-ct#447955000
* #Rec ^property[+].code = #snomed-fsn
* #Rec ^property[=].valueString = "Specimen from rectum (specimen)"
* #RecScr "Tiesiosios žarnos nuograndos"
* #RecScr ^property[0].code = #snomed-code
* #RecScr ^property[=].valueCoding.system = "snomed-ct"
* #RecScr ^property[=].valueCoding = snomed-ct#258429002
* #RecScr ^property[+].code = #snomed-fsn
* #RecScr ^property[=].valueString = "Rectal scrape specimen (specimen)"
* #RecSw "Tiesioji žarna (tamponas)"
* #RecSw ^property[0].code = #snomed-code
* #RecSw ^property[=].valueCoding.system = "snomed-ct"
* #RecSw ^property[=].valueCoding = snomed-ct#258528007
* #RecSw ^property[+].code = #snomed-fsn
* #RecSw ^property[=].valueString = "Rectal swab (specimen)"
* #Resp "Kvėpavimo takų tiriamoji medžiaga"
* #Resp ^property[0].code = #snomed-code
* #Resp ^property[=].valueCoding.system = "snomed-ct"
* #Resp ^property[=].valueCoding = snomed-ct#258603007
* #Resp ^property[+].code = #snomed-fsn
* #Resp ^property[=].valueString = "Specimen from respiratory system (specimen)"
* #RtTis "Tinklainės audiniai"
* #RtTis ^property[0].code = #snomed-code
* #RtTis ^property[=].valueCoding.system = "snomed-ct"
* #RtTis ^property[=].valueCoding = snomed-ct#399451009
* #RtTis ^property[+].code = #snomed-fsn
* #RtTis ^property[=].valueString = "Tissue specimen from retina (specimen)"
* #RtperiBp "Retroperitoninio tarpo bioptatas"
* #RtperiBp ^property[0].code = #snomed-code
* #RtperiBp ^property[=].valueCoding.system = "snomed-ct"
* #RtperiBp ^property[=].valueCoding = snomed-ct#434244002
* #RtperiBp ^property[+].code = #snomed-fsn
* #RtperiBp ^property[=].valueString = "Specimen from retroperitoneum obtained by biopsy (specimen)"
* #RtperiTis "Retroperitoninio tarpo audiniai"
* #RtperiTis ^property[0].code = #snomed-code
* #RtperiTis ^property[=].valueCoding.system = "snomed-ct"
* #RtperiTis ^property[=].valueCoding = snomed-ct#438803004
* #RtperiTis ^property[+].code = #snomed-fsn
* #RtperiTis ^property[=].valueString = "Tissue specimen from retroperitoneum (specimen)"
* #S "Serumas"
* #S ^property[0].code = #snomed-code
* #S ^property[=].valueCoding.system = "snomed-ct"
* #S ^property[=].valueCoding = snomed-ct#119364003
* #S ^property[+].code = #snomed-fsn
* #S ^property[=].valueString = "Serum specimen (specimen)"
* #Sal "Seilės"
* #Sal ^property[0].code = #snomed-code
* #Sal ^property[=].valueCoding.system = "snomed-ct"
* #Sal ^property[=].valueCoding = snomed-ct#119342007
* #Sal ^property[+].code = #snomed-fsn
* #Sal ^property[=].valueString = "Saliva specimen (specimen)"
* #SalGlBp "Seilių liaukos bioptatas"
* #SalGlBp ^property[0].code = #snomed-code
* #SalGlBp ^property[=].valueCoding.system = "snomed-ct"
* #SalGlBp ^property[=].valueCoding = snomed-ct#433119005
* #SalGlBp ^property[+].code = #snomed-fsn
* #SalGlBp ^property[=].valueString = "Specimen from salivary gland obtained by biopsy (specimen)"
* #SalglTis "Seilių liaukos audiniai"
* #SalglTis ^property[0].code = #snomed-code
* #SalglTis ^property[=].valueCoding.system = "snomed-ct"
* #SalglTis ^property[=].valueCoding = snomed-ct#309190004
* #SalglTis ^property[+].code = #snomed-fsn
* #SalglTis ^property[=].valueString = "Excised salivary gland specimen (specimen)"
* #SbretF "Akies subretinalinis skystis"
* #SbretF ^property[0].code = #snomed-code
* #SbretF ^property[=].valueCoding.system = "snomed-ct"
* #SbretF ^property[=].valueCoding = snomed-ct#258476006
* #SbretF ^property[+].code = #snomed-fsn
* #SbretF ^property[=].valueString = "Subretinal fluid specimen (specimen)"
* #ScaTis "Rando audiniai"
* #ScaTis ^property[0].code = #snomed-code
* #ScaTis ^property[=].valueCoding.system = "snomed-ct"
* #ScaTis ^property[=].valueCoding = snomed-ct#733103005
* #ScaTis ^property[+].code = #snomed-fsn
* #ScaTis ^property[=].valueString = "Tissue specimen from scar (specimen)"
* #SclTis "Odenos audiniai"
* #SclTis ^property[0].code = #snomed-code
* #SclTis ^property[=].valueCoding.system = "snomed-ct"
* #SclTis ^property[=].valueCoding = snomed-ct#33921000087105
* #SclTis ^property[+].code = #snomed-fsn
* #SclTis ^property[=].valueString = "Tissue specimen from sclera (specimen)"
* #ScrSw "Kapšelio tiriamoji medžiaga (tamponas)"
* #ScrSw ^property[0].code = #snomed-code
* #ScrSw ^property[=].valueCoding.system = "snomed-ct"
* #ScrSw ^property[=].valueCoding = snomed-ct#258518003
* #ScrSw ^property[+].code = #snomed-fsn
* #ScrSw ^property[=].valueString = "Scrotal swab (specimen)"
* #SebCystF "Odos riebalinės liaukos cistos skystis"
* #SebCystF ^property[0].code = #snomed-code
* #SebCystF ^property[=].valueCoding.system = "snomed-ct"
* #SebCystF ^property[=].valueCoding = snomed-ct#438595008
* #SebCystF ^property[+].code = #snomed-fsn
* #SebCystF ^property[=].valueString = "Fluid specimen from sebaceous cyst (specimen)"
* #Sem "Sperma"
* #Sem ^property[0].code = #snomed-code
* #Sem ^property[=].valueCoding.system = "snomed-ct"
* #Sem ^property[=].valueCoding = snomed-ct#119347001
* #Sem ^property[+].code = #snomed-fsn
* #Sem ^property[=].valueString = "Seminal fluid specimen (specimen)"
* #SemVscBp "Sėklinės pūslelės bioptatas"
* #SemVscBp ^property[0].code = #snomed-code
* #SemVscBp ^property[=].valueCoding.system = "snomed-ct"
* #SemVscBp ^property[=].valueCoding = snomed-ct#433854001
* #SemVscBp ^property[+].code = #snomed-fsn
* #SemVscBp ^property[=].valueString = "Specimen from seminal vesicle obtained by biopsy (specimen)"
* #SftTis "Minkštieji (gilieji) audiniai"
* #SftTis ^property[0].code = #snomed-code
* #SftTis ^property[=].valueCoding.system = "snomed-ct"
* #SftTis ^property[=].valueCoding = snomed-ct#309072003
* #SftTis ^property[+].code = #snomed-fsn
* #SftTis ^property[=].valueString = "Soft tissue specimen (specimen)"
* #ShoJoF "Peties sąnario sinovinis skystis"
* #ShoJoF ^property[0].code = #snomed-code
* #ShoJoF ^property[=].valueCoding.system = "snomed-ct"
* #ShoJoF ^property[=].valueCoding = snomed-ct#167868004
* #ShoJoF ^property[+].code = #snomed-fsn
* #ShoJoF ^property[=].valueString = "Shoulder joint synovial fluid (specimen)"
* #SigmBr "Riestinės žarnos nuograndos"
* #SigmBr ^property[0].code = #snomed-code
* #SigmBr ^property[=].valueCoding.system = "snomed-ct"
* #SigmBr ^property[=].valueCoding = snomed-ct#309261004
* #SigmBr ^property[+].code = #snomed-fsn
* #SigmBr ^property[=].valueString = "Sigmoid colon brushings specimen (specimen)"
* #SinF "Prienosinio ančio skystis"
* #SinF ^property[0].code = #snomed-code
* #SinF ^property[=].valueCoding.system = "snomed-ct"
* #SinF ^property[=].valueCoding = snomed-ct#258474009
* #SinF ^property[+].code = #snomed-fsn
* #SinF ^property[=].valueString = "Sinus fluid specimen (specimen)"
* #SinWs "Prienosinio ančio išplovos"
* #SinWs ^property[0].code = #snomed-code
* #SinWs ^property[=].valueCoding.system = "snomed-ct"
* #SinWs ^property[=].valueCoding = snomed-ct#258475005
* #SinWs ^property[+].code = #snomed-fsn
* #SinWs ^property[=].valueString = "Sinus washings (specimen)"
* #SkMscBp "Skeleto raumens bioptatas"
* #SkMscBp ^property[0].code = #snomed-code
* #SkMscBp ^property[=].valueCoding.system = "snomed-ct"
* #SkMscBp ^property[=].valueCoding = snomed-ct#432058006
* #SkMscBp ^property[+].code = #snomed-fsn
* #SkMscBp ^property[=].valueString = "Specimen from skeletal muscle obtained by biopsy (specimen)"
* #SkinBp "Odos bioptatas"
* #SkinBp ^property[0].code = #snomed-code
* #SkinBp ^property[=].valueCoding.system = "snomed-ct"
* #SkinBp ^property[=].valueCoding = snomed-ct#309066003
* #SkinBp ^property[+].code = #snomed-fsn
* #SkinBp ^property[=].valueString = "Skin biopsy specimen (specimen)"
* #SkinCystF "Odos cistos turinys"
* #SkinCystF ^property[0].code = #snomed-code
* #SkinCystF ^property[=].valueCoding.system = "snomed-ct"
* #SkinCystF ^property[=].valueCoding = snomed-ct#309075001
* #SkinCystF ^property[+].code = #snomed-fsn
* #SkinCystF ^property[=].valueString = "Skin cyst specimen (specimen)"
* #SkinFib "Odos fibroblastai"
* #SkinFib ^property[0].code = #snomed-code
* #SkinFib ^property[=].valueCoding.system = "snomed-ct"
* #SkinFib ^property[=].valueCoding = snomed-ct#258569003
* #SkinFib ^property[+].code = #snomed-fsn
* #SkinFib ^property[=].valueString = "Skin fibroblast specimen (specimen)"
* #SkinScr "Odos nuograndos"
* #SkinScr ^property[0].code = #snomed-code
* #SkinScr ^property[=].valueCoding.system = "snomed-ct"
* #SkinScr ^property[=].valueCoding = snomed-ct#446952006
* #SkinScr ^property[+].code = #snomed-fsn
* #SkinScr ^property[=].valueString = "Specimen from skin obtained by scraping (specimen)"
* #SkinSw "Odos tiriamoji medžiaga (tamponas)"
* #SkinSw ^property[0].code = #snomed-code
* #SkinSw ^property[=].valueCoding.system = "snomed-ct"
* #SkinSw ^property[=].valueCoding = snomed-ct#258503004
* #SkinSw ^property[+].code = #snomed-fsn
* #SkinSw ^property[=].valueString = "Skin swab (specimen)"
* #SkinUlcSw "Odos opos eksudatas (tamponas)"
* #SkinUlcSw ^property[0].code = #snomed-code
* #SkinUlcSw ^property[=].valueCoding.system = "snomed-ct"
* #SkinUlcSw ^property[=].valueCoding = snomed-ct#258505006
* #SkinUlcSw ^property[+].code = #snomed-fsn
* #SkinUlcSw ^property[=].valueString = "Skin ulcer swab (specimen)"
* #SkinWd "Odos žaizdos tiriamoji medžiaga"
* #SkinWd ^property[0].code = #snomed-code
* #SkinWd ^property[=].valueCoding.system = "snomed-ct"
* #SkinWd ^property[=].valueCoding = snomed-ct#309068002
* #SkinWd ^property[+].code = #snomed-fsn
* #SkinWd ^property[=].valueString = "Skin lesion specimen (specimen)"
* #SkinWdSw "Odos žaizdos eksudatas (tamponas)"
* #SkinWdSw ^property[0].code = #snomed-code
* #SkinWdSw ^property[=].valueCoding.system = "snomed-ct"
* #SkinWdSw ^property[=].valueCoding = snomed-ct#472862007
* #SkinWdSw ^property[+].code = #snomed-fsn
* #SkinWdSw ^property[=].valueString = "Swab from lesion of skin (specimen)"
* #SlvStn "Seilių liaukos akmuo"
* #SlvStn ^property[0].code = #snomed-code
* #SlvStn ^property[=].valueCoding.system = "snomed-ct"
* #SlvStn ^property[=].valueCoding = snomed-ct#732293002
* #SlvStn ^property[+].code = #snomed-fsn
* #SlvStn ^property[=].valueString = "Salivary calculus specimen (specimen)"
* #SmIntTis "Plonosios žarnos audiniai"
* #SmIntTis ^property[0].code = #snomed-code
* #SmIntTis ^property[=].valueCoding.system = "snomed-ct"
* #SmIntTis ^property[=].valueCoding = snomed-ct#122638001
* #SmIntTis ^property[+].code = #snomed-fsn
* #SmIntTis ^property[=].valueString = "Tissue specimen from small intestine (specimen)"
* #SpCordBp "Nugaros smegenų bioptatas"
* #SpCordBp ^property[0].code = #snomed-code
* #SpCordBp ^property[=].valueCoding.system = "snomed-ct"
* #SpCordBp ^property[=].valueCoding = snomed-ct#431697001
* #SpCordBp ^property[+].code = #snomed-fsn
* #SpCordBp ^property[=].valueString = "Specimen from spinal cord obtained by biopsy (specimen)"
* #SpWd "Paviršinės žaizdos tiriamoji medžiaga"
* #SpWd ^property[0].code = #snomed-code
* #SpWd ^property[=].valueCoding.system = "snomed-ct"
* #SpWd ^property[=].valueCoding = snomed-ct#734381007
* #SpWd ^property[+].code = #snomed-fsn
* #SpWd ^property[=].valueString = "Specimen from superficial wound (specimen)"
* #SpWdSw "Paviršinės žaizdos eksudatas (tamponas)"
* #SpWdSw ^property[0].code = #snomed-code
* #SpWdSw ^property[=].valueCoding.system = "snomed-ct"
* #SpWdSw ^property[=].valueCoding = snomed-ct#472882006
* #SpWdSw ^property[+].code = #snomed-fsn
* #SpWdSw ^property[=].valueString = "Swab from superficial wound (specimen)"
* #SpermCelF "Spermatocelės skystis"
* #SpermCelF ^property[0].code = #snomed-code
* #SpermCelF ^property[=].valueCoding.system = "snomed-ct"
* #SpermCelF ^property[=].valueCoding = snomed-ct#438545007
* #SpermCelF ^property[+].code = #snomed-fsn
* #SpermCelF ^property[=].valueString = "Fluid specimen from spermatocele (specimen)"
* #SplBp "Blužnies bioptatas"
* #SplBp ^property[0].code = #snomed-code
* #SplBp ^property[=].valueCoding.system = "snomed-ct"
* #SplBp ^property[=].valueCoding = snomed-ct#433760005
* #SplBp ^property[+].code = #snomed-fsn
* #SplBp ^property[=].valueString = "Specimen from spleen obtained by biopsy (specimen)"
* #SprCordBp "Sėklinio latako bioptatas"
* #SprCordBp ^property[0].code = #snomed-code
* #SprCordBp ^property[=].valueCoding.system = "snomed-ct"
* #SprCordBp ^property[=].valueCoding = snomed-ct#433873002
* #SprCordBp ^property[+].code = #snomed-fsn
* #SprCordBp ^property[=].valueString = "Specimen from spermatic cord obtained by biopsy (specimen)"
* #Sput "Skrepliai"
* #Sput ^property[0].code = #snomed-code
* #Sput ^property[=].valueCoding.system = "snomed-ct"
* #Sput ^property[=].valueCoding = snomed-ct#119334006
* #Sput ^property[+].code = #snomed-fsn
* #Sput ^property[=].valueString = "Sputum specimen (specimen)"
* #SputSw "Skrepliai, atkosėti ant tampono"
* #SputSw ^property[0].code = #snomed-code
* #SputSw ^property[=].valueCoding.system = "snomed-ct"
* #SputSw ^property[=].valueCoding = snomed-ct#258499005
* #SputSw ^property[+].code = #snomed-fsn
* #SputSw ^property[=].valueString = "Cough swab (specimen)"
* #St "Išmatos"
* #St ^property[0].code = #snomed-code
* #St ^property[=].valueCoding.system = "snomed-ct"
* #St ^property[=].valueCoding = snomed-ct#119339001
* #St ^property[+].code = #snomed-fsn
* #St ^property[=].valueString = "Stool specimen (specimen)"
* #Stem "Kamieninės ląstelės"
* #Stem ^property[0].code = #snomed-code
* #Stem ^property[=].valueCoding.system = "snomed-ct"
* #Stem ^property[=].valueCoding = snomed-ct#57731000052104
* #Stem ^property[+].code = #snomed-fsn
* #Stem ^property[=].valueString = "Stem cell specimen (specimen)"
* #StmTis "Skrandžio audiniai"
* #StmTis ^property[0].code = #snomed-code
* #StmTis ^property[=].valueCoding.system = "snomed-ct"
* #StmTis ^property[=].valueCoding = snomed-ct#128171007
* #StmTis ^property[+].code = #snomed-fsn
* #StmTis ^property[=].valueString = "Tissue specimen from stomach (specimen)"
* #Stn "Akmuo"
* #Stn ^property[0].code = #snomed-code
* #Stn ^property[=].valueCoding.system = "snomed-ct"
* #Stn ^property[=].valueCoding = snomed-ct#119350003
* #Stn ^property[+].code = #snomed-fsn
* #Stn ^property[=].valueString = "Calculus specimen (specimen)"
* #Surg "Operacinė medžiaga"
* #Surg ^property[0].code = #snomed-code
* #Surg ^property[=].valueCoding.system = "snomed-ct"
* #Surg ^property[=].valueCoding = snomed-ct#373826004
* #Surg ^property[+].code = #snomed-fsn
* #Surg ^property[=].valueString = "Surgical excision sample (specimen)"
* #Sweat "Prakaitas"
* #Sweat ^property[0].code = #snomed-code
* #Sweat ^property[=].valueCoding.system = "snomed-ct"
* #Sweat ^property[=].valueCoding = snomed-ct#122569007
* #Sweat ^property[+].code = #snomed-fsn
* #Sweat ^property[=].valueString = "Sweat specimen (specimen)"
* #SynBp "Sąnario sinovijos bioptatas"
* #SynBp ^property[0].code = #snomed-code
* #SynBp ^property[=].valueCoding.system = "snomed-ct"
* #SynBp ^property[=].valueCoding = snomed-ct#309122002
* #SynBp ^property[+].code = #snomed-fsn
* #SynBp ^property[=].valueString = "Synovium biopsy specimen (specimen)"
* #SynF "Sąnario sinovinis skystis"
* #SynF ^property[0].code = #snomed-code
* #SynF ^property[=].valueCoding.system = "snomed-ct"
* #SynF ^property[=].valueCoding = snomed-ct#119332005
* #SynF ^property[+].code = #snomed-fsn
* #SynF ^property[=].valueString = "Synovial fluid specimen (specimen)"
* #SynTis "Sąnario sinovijos audiniai"
* #SynTis ^property[0].code = #snomed-code
* #SynTis ^property[=].valueCoding.system = "snomed-ct"
* #SynTis ^property[=].valueCoding = snomed-ct#309121009
* #SynTis ^property[+].code = #snomed-fsn
* #SynTis ^property[=].valueString = "Synovial tissue specimen (specimen)"
* #Tears "Ašaros"
* #Tears ^property[0].code = #snomed-code
* #Tears ^property[=].valueCoding.system = "snomed-ct"
* #Tears ^property[=].valueCoding = snomed-ct#122594008
* #Tears ^property[+].code = #snomed-fsn
* #Tears ^property[=].valueString = "Tears specimen (specimen)"
* #TestTis "Sėklidės audiniai"
* #TestTis ^property[0].code = #snomed-code
* #TestTis ^property[=].valueCoding.system = "snomed-ct"
* #TestTis ^property[=].valueCoding = snomed-ct#127475005
* #TestTis ^property[+].code = #snomed-fsn
* #TestTis ^property[=].valueString = "Tissue specimen from testis (specimen)"
* #ThmGlBp "Užkrūčio liaukos bioptatas"
* #ThmGlBp ^property[0].code = #snomed-code
* #ThmGlBp ^property[=].valueCoding.system = "snomed-ct"
* #ThmGlBp ^property[=].valueCoding = snomed-ct#399633004
* #ThmGlBp ^property[+].code = #snomed-fsn
* #ThmGlBp ^property[=].valueString = "Specimen from thymus gland obtained by biopsy (specimen)"
* #Thrt "Gerklės tiriamoji medžiaga"
* #Thrt ^property[0].code = #snomed-code
* #Thrt ^property[=].valueCoding.system = "snomed-ct"
* #Thrt ^property[=].valueCoding = snomed-ct#119389009
* #Thrt ^property[+].code = #snomed-fsn
* #Thrt ^property[=].valueString = "Specimen from throat (specimen)"
* #ThrtSw "Gerklės eksudatas (tamponas)"
* #ThrtSw ^property[0].code = #snomed-code
* #ThrtSw ^property[=].valueCoding.system = "snomed-ct"
* #ThrtSw ^property[=].valueCoding = snomed-ct#258529004
* #ThrtSw ^property[+].code = #snomed-fsn
* #ThrtSw ^property[=].valueString = "Throat swab (specimen)"
* #ThyrBp "Skydliaukės bioptatas"
* #ThyrBp ^property[0].code = #snomed-code
* #ThyrBp ^property[=].valueCoding.system = "snomed-ct"
* #ThyrBp ^property[=].valueCoding = snomed-ct#432984003
* #ThyrBp ^property[+].code = #snomed-fsn
* #ThyrBp ^property[=].valueString = "Specimen from thyroid obtained by biopsy (specimen)"
* #ThyrCystF "Skydliaukės cistos skystis"
* #ThyrCystF ^property[0].code = #snomed-code
* #ThyrCystF ^property[=].valueCoding.system = "snomed-ct"
* #ThyrCystF ^property[=].valueCoding = snomed-ct#309147000
* #ThyrCystF ^property[+].code = #snomed-fsn
* #ThyrCystF ^property[=].valueString = "Thyroid cyst fluid specimen (specimen)"
* #ThyrFNA "Skydliaukės aspiratas plona adata"
* #ThyrFNA ^property[0].code = #snomed-code
* #ThyrFNA ^property[=].valueCoding.system = "snomed-ct"
* #ThyrFNA ^property[=].valueCoding = snomed-ct#309146009
* #ThyrFNA ^property[+].code = #snomed-fsn
* #ThyrFNA ^property[=].valueString = "Thyroid fine needle aspirate specimen (specimen) "
* #Tick "Erkė"
* #Tick ^property[0].code = #snomed-code
* #Tick ^property[=].valueCoding.system = "snomed-ct"
* #Tick ^property[=].valueCoding = snomed-ct#710069003
* #Tick ^property[+].code = #snomed-fsn
* #Tick ^property[=].valueString = "Tick specimen (specimen)"
* #Tis "Audiniai"
* #Tis ^property[0].code = #snomed-code
* #Tis ^property[=].valueCoding.system = "snomed-ct"
* #Tis ^property[=].valueCoding = snomed-ct#119376003
* #Tis ^property[+].code = #snomed-fsn
* #Tis ^property[=].valueString = "Tissue specimen (specimen)"
* #TisF "Intersticinis skystis"
* #TisF ^property[0].code = #snomed-code
* #TisF ^property[=].valueCoding.system = "snomed-ct"
* #TisF ^property[=].valueCoding = snomed-ct#258479004
* #TisF ^property[+].code = #snomed-fsn
* #TisF ^property[=].valueString = "Interstitial fluid specimen (specimen)"
* #TnTstBp "Sėklidės dangalo bioptatas"
* #TnTstBp ^property[0].code = #snomed-code
* #TnTstBp ^property[=].valueCoding.system = "snomed-ct"
* #TnTstBp ^property[=].valueCoding = snomed-ct#431413009
* #TnTstBp ^property[+].code = #snomed-fsn
* #TnTstBp ^property[=].valueString = "Specimen from tunica of testis obtained by biopsy (specimen)"
* #TndBp "Sausgyslės bioptatas"
* #TndBp ^property[0].code = #snomed-code
* #TndBp ^property[=].valueCoding.system = "snomed-ct"
* #TndBp ^property[=].valueCoding = snomed-ct#309113003
* #TndBp ^property[+].code = #snomed-fsn
* #TndBp ^property[=].valueString = "Tendon biopsy specimen (specimen)"
* #TngBp "Liežuvio bioptatas"
* #TngBp ^property[0].code = #snomed-code
* #TngBp ^property[=].valueCoding.system = "snomed-ct"
* #TngBp ^property[=].valueCoding = snomed-ct#309189008
* #TngBp ^property[+].code = #snomed-fsn
* #TngBp ^property[=].valueString = "Tongue biopsy specimen (specimen)"
* #Tns "Tonzilių tiriamoji medžiaga"
* #Tns ^property[0].code = #snomed-code
* #Tns ^property[=].valueCoding.system = "snomed-ct"
* #Tns ^property[=].valueCoding = snomed-ct#430222001
* #Tns ^property[+].code = #snomed-fsn
* #Tns ^property[=].valueString = "Specimen from tonsil (specimen)"
* #TnsBp "Tonzilės bioptatas"
* #TnsBp ^property[0].code = #snomed-code
* #TnsBp ^property[=].valueCoding.system = "snomed-ct"
* #TnsBp ^property[=].valueCoding = snomed-ct#309191000
* #TnsBp ^property[+].code = #snomed-fsn
* #TnsBp ^property[=].valueString = "Tonsil biopsy specimen (specimen)"
* #TnsSw "Tonzilių eksudatas (tamponas)"
* #TnsSw ^property[0].code = #snomed-code
* #TnsSw ^property[=].valueCoding.system = "snomed-ct"
* #TnsSw ^property[=].valueCoding = snomed-ct#472867001
* #TnsSw ^property[+].code = #snomed-fsn
* #TnsSw ^property[=].valueString = "Swab from tonsil (specimen)"
* #ToJoF "Kojos piršto sąnario sinovinis skystis"
* #ToJoF ^property[0].code = #snomed-code
* #ToJoF ^property[=].valueCoding.system = "snomed-ct"
* #ToJoF ^property[=].valueCoding = snomed-ct#167877006
* #ToJoF ^property[+].code = #snomed-fsn
* #ToJoF ^property[=].valueString = "Toe joint synovial fluid (specimen)"
* #TootAbs "Danties absceso turinys"
* #TootAbs ^property[0].code = #snomed-code
* #TootAbs ^property[=].valueCoding.system = "snomed-ct"
* #TootAbs ^property[=].valueCoding = snomed-ct#29021000087108
* #TootAbs ^property[+].code = #snomed-fsn
* #TootAbs ^property[=].valueString = "Specimen from abscess of tooth (specimen)"
* #TrKidBp "Transplantuoto inksto bioptatas"
* #TrKidBp ^property[0].code = #snomed-code
* #TrKidBp ^property[=].valueCoding.system = "snomed-ct"
* #TrKidBp ^property[=].valueCoding = snomed-ct#438661003
* #TrKidBp ^property[+].code = #snomed-fsn
* #TrKidBp ^property[=].valueString = "Specimen from transplanted kidney obtained by biopsy (specimen)"
* #TrLivBp "Transplantuotų kepenų bioptatas"
* #TrLivBp ^property[0].code = #snomed-code
* #TrLivBp ^property[=].valueCoding.system = "snomed-ct"
* #TrLivBp ^property[=].valueCoding = snomed-ct#438543000
* #TrLivBp ^property[+].code = #snomed-fsn
* #TrLivBp ^property[=].valueString = "Specimen from transplanted liver obtained by biopsy (specimen)"
* #TrLungBp "Transplantuoto plaučio bioptatas"
* #TrLungBp ^property[0].code = #snomed-code
* #TrLungBp ^property[=].valueCoding.system = "snomed-ct"
* #TrLungBp ^property[=].valueCoding = snomed-ct#438454007
* #TrLungBp ^property[+].code = #snomed-fsn
* #TrLungBp ^property[=].valueString = "Specimen from transplanted lung obtained by biopsy (specimen)"
* #TraAsp "Trachėjos sekretas (aspiratas)"
* #TraAsp ^property[0].code = #snomed-code
* #TraAsp ^property[=].valueCoding.system = "snomed-ct"
* #TraAsp ^property[=].valueCoding = snomed-ct#445447003
* #TraAsp ^property[+].code = #snomed-fsn
* #TraAsp ^property[=].valueString = "Specimen from trachea obtained by aspiration (specimen)"
* #TraBp "Trachėjos bioptatas"
* #TraBp ^property[0].code = #snomed-code
* #TraBp ^property[=].valueCoding.system = "snomed-ct"
* #TraBp ^property[=].valueCoding = snomed-ct#309169007
* #TraBp ^property[+].code = #snomed-fsn
* #TraBp ^property[=].valueString = "Tracheal biopsy specimen (specimen)"
* #TraStWdSw "Tracheostomos žaizdos eksudatas (tamponas)"
* #TraStWdSw ^property[0].code = #snomed-code
* #TraStWdSw ^property[=].valueCoding.system = "snomed-ct"
* #TraStWdSw ^property[=].valueCoding = snomed-ct#472870002
* #TraStWdSw ^property[+].code = #snomed-fsn
* #TraStWdSw ^property[=].valueString = "Swab from tracheostomy wound (specimen)"
* #TraTis "Trachėjos audiniai"
* #TraTis ^property[0].code = #snomed-code
* #TraTis ^property[=].valueCoding.system = "snomed-ct"
* #TraTis ^property[=].valueCoding = snomed-ct#128173005
* #TraTis ^property[+].code = #snomed-fsn
* #TraTis ^property[=].valueString = "Tissue specimen from trachea (specimen"
* #TrunkBp "Liemens srities bioptatas"
* #TrunkBp ^property[0].code = #snomed-code
* #TrunkBp ^property[=].valueCoding.system = "snomed-ct"
* #TrunkBp ^property[=].valueCoding = snomed-ct#431412004
* #TrunkBp ^property[+].code = #snomed-fsn
* #TrunkBp ^property[=].valueString = "Specimen from trunk obtained by biopsy (specimen)"
* #Tst "Sėklidės tiriamoji medžiaga"
* #Tst ^property[0].code = #snomed-code
* #Tst ^property[=].valueCoding.system = "snomed-ct"
* #Tst ^property[=].valueCoding = snomed-ct#128154006
* #Tst ^property[+].code = #snomed-fsn
* #Tst ^property[=].valueString = "Specimen from testis (specimen)"
* #TstBp "Sėklidės bioptatas"
* #TstBp ^property[0].code = #snomed-code
* #TstBp ^property[=].valueCoding.system = "snomed-ct"
* #TstBp ^property[=].valueCoding = snomed-ct#309137003
* #TstBp ^property[+].code = #snomed-fsn
* #TstBp ^property[=].valueString = "Testes biopsy specimen (specimen)"
* #TstSw "Sėklidės tiriamoji medžiaga (tamponas)"
* #TstSw ^property[0].code = #snomed-code
* #TstSw ^property[=].valueCoding.system = "snomed-ct"
* #TstSw ^property[=].valueCoding = snomed-ct#472861000
* #TstSw ^property[+].code = #snomed-fsn
* #TstSw ^property[=].valueString = "Swab from testicle (specimen)"
* #TumTis "Auglio (naviko) audiniai"
* #TumTis ^property[0].code = #snomed-code
* #TumTis ^property[=].valueCoding.system = "snomed-ct"
* #TumTis ^property[=].valueCoding = snomed-ct#258435002
* #TumTis ^property[+].code = #snomed-fsn
* #TumTis ^property[=].valueString = "Tumor tissue specimen (specimen)"
* #U "Šlapimas"
* #U ^property[0].code = #snomed-code
* #U ^property[=].valueCoding.system = "snomed-ct"
* #U ^property[=].valueCoding = snomed-ct#122575003
* #U ^property[+].code = #snomed-fsn
* #U ^property[=].valueString = "Urine specimen (specimen)"
* #UBldTis "Šlapimo pūslės audiniai"
* #UBldTis ^property[0].code = #snomed-code
* #UBldTis ^property[=].valueCoding.system = "snomed-ct"
* #UBldTis ^property[=].valueCoding = snomed-ct#309272009
* #UBldTis ^property[+].code = #snomed-fsn
* #UBldTis ^property[=].valueString = "Urinary bladder tissue specimen (specimen)"
* #USed "Šlapimo nuosėdos"
* #USed ^property[0].code = #snomed-code
* #USed ^property[=].valueCoding.system = "snomed-ct"
* #USed ^property[=].valueCoding = snomed-ct#122567009
* #USed ^property[+].code = #snomed-fsn
* #USed ^property[=].valueString = "Urine sediment specimen (specimen)"
* #Ulc "Opos tiriamoji medžiaga"
* #Ulc ^property[0].code = #snomed-code
* #Ulc ^property[=].valueCoding.system = "snomed-ct"
* #Ulc ^property[=].valueCoding = snomed-ct#119369008
* #Ulc ^property[+].code = #snomed-fsn
* #Ulc ^property[=].valueString = "Specimen from ulcer (specimen)"
* #UlcSw "Opos eksudatas (tamponas)"
* #UlcSw ^property[0].code = #snomed-code
* #UlcSw ^property[=].valueCoding.system = "snomed-ct"
* #UlcSw ^property[=].valueCoding = snomed-ct#472871003
* #UlcSw ^property[+].code = #snomed-fsn
* #UlcSw ^property[=].valueString = "Swab from ulcer (specimen)"
* #UmbBl "Kraujas, iš virkštelės"
* #UmbBl ^property[0].code = #snomed-code
* #UmbBl ^property[=].valueCoding.system = "snomed-ct"
* #UmbBl ^property[=].valueCoding = snomed-ct#122556008
* #UmbBl ^property[+].code = #snomed-fsn
* #UmbBl ^property[=].valueString = "Cord blood specimen (specimen)"
* #UmbSw "Virkštelė (tamponas)"
* #UmbSw ^property[0].code = #snomed-code
* #UmbSw ^property[=].valueCoding.system = "snomed-ct"
* #UmbSw ^property[=].valueCoding = snomed-ct#445367006
* #UmbSw ^property[+].code = #snomed-fsn
* #UmbSw ^property[=].valueString = "Swab of umbilicus (specimen)"
* #UmbTis "Virkštelės audiniai"
* #UmbTis ^property[0].code = #snomed-code
* #UmbTis ^property[=].valueCoding.system = "snomed-ct"
* #UmbTis ^property[=].valueCoding = snomed-ct#258436001
* #UmbTis ^property[+].code = #snomed-fsn
* #UmbTis ^property[=].valueString = "Umbilical cord tissue sample (specimen)"
* #UpResp "Viršutinių kvėpavimo takų tiriamoji medžiaga"
* #UpResp ^property[0].code = #snomed-code
* #UpResp ^property[=].valueCoding.system = "snomed-ct"
* #UpResp ^property[=].valueCoding = snomed-ct#258604001
* #UpResp ^property[+].code = #snomed-fsn
* #UpResp ^property[=].valueString = "Upper respiratory specimen (specimen)"
* #UpRespSw "Viršutinių kvėpavimo takų tiriamoji medžiaga (tamponas)"
* #UpRespSw ^property[0].code = #snomed-code
* #UpRespSw ^property[=].valueCoding.system = "snomed-ct"
* #UpRespSw ^property[=].valueCoding = snomed-ct#309164002
* #UpRespSw ^property[+].code = #snomed-fsn
* #UpRespSw ^property[=].valueString = "Upper respiratory swab specimen (specimen)"
* #UrtBp "Šlapimtakio bioptatas"
* #UrtBp ^property[0].code = #snomed-code
* #UrtBp ^property[=].valueCoding.system = "snomed-ct"
* #UrtBp ^property[=].valueCoding = snomed-ct#309271002
* #UrtBp ^property[+].code = #snomed-fsn
* #UrtBp ^property[=].valueString = "Ureter biopsy specimen (specimen)"
* #UrtStn "Šlapimtakio akmuo"
* #UrtStn ^property[0].code = #snomed-code
* #UrtStn ^property[=].valueCoding.system = "snomed-ct"
* #UrtStn ^property[=].valueCoding = snomed-ct#258496003
* #UrtStn ^property[+].code = #snomed-fsn
* #UrtStn ^property[=].valueString = "Ureteric stone specimen (specimen)"
* #UrtTis "Šlapimtakio audiniai"
* #UrtTis ^property[0].code = #snomed-code
* #UrtTis ^property[=].valueCoding.system = "snomed-ct"
* #UrtTis ^property[=].valueCoding = snomed-ct#399624001
* #UrtTis ^property[+].code = #snomed-fsn
* #UrtTis ^property[=].valueString = "Tissue specimen from ureter (specimen)"
* #Urth "Šlaplės sekretas (tamponas)"
* #Urth ^property[0].code = #snomed-code
* #Urth ^property[=].valueCoding.system = "snomed-ct"
* #Urth ^property[=].valueCoding = snomed-ct#258530009
* #Urth ^property[+].code = #snomed-fsn
* #Urth ^property[=].valueString = "Urethral swab (specimen)"
* #UrthBp "Šlaplės bioptatas"
* #UrthBp ^property[0].code = #snomed-code
* #UrthBp ^property[=].valueCoding.system = "snomed-ct"
* #UrthBp ^property[=].valueCoding = snomed-ct#309277003
* #UrthBp ^property[+].code = #snomed-fsn
* #UrthBp ^property[=].valueString = "Urethra biopsy specimen (specimen)"
* #UrthTis "Šlaplės audiniai"
* #UrthTis ^property[0].code = #snomed-code
* #UrthTis ^property[=].valueCoding.system = "snomed-ct"
* #UrthTis ^property[=].valueCoding = snomed-ct#128174004
* #UrthTis ^property[+].code = #snomed-fsn
* #UrthTis ^property[=].valueString = "Tissue specimen from urethra (specimen)"
* #Utr "Gimdos ertmės eksudatas"
* #Utr ^property[0].code = #snomed-code
* #Utr ^property[=].valueCoding.system = "snomed-ct"
* #Utr ^property[=].valueCoding = snomed-ct#127479004
* #Utr ^property[+].code = #snomed-fsn
* #Utr ^property[=].valueString = "Specimen from uterus (specimen)"
* #UtrBp "Gimdos bioptatas"
* #UtrBp ^property[0].code = #snomed-code
* #UtrBp ^property[=].valueCoding.system = "snomed-ct"
* #UtrBp ^property[=].valueCoding = snomed-ct#432059003
* #UtrBp ^property[+].code = #snomed-fsn
* #UtrBp ^property[=].valueString = "Specimen from uterus obtained by biopsy (specimen)"
* #UtrTis "Gimdos audiniai"
* #UtrTis ^property[0].code = #snomed-code
* #UtrTis ^property[=].valueCoding.system = "snomed-ct"
* #UtrTis ^property[=].valueCoding = snomed-ct#127480001
* #UtrTis ^property[+].code = #snomed-fsn
* #UtrTis ^property[=].valueString = "Tissue specimen from uterus (specimen)"
* #UvTis "Uogenos audiniai"
* #UvTis ^property[0].code = #snomed-code
* #UvTis ^property[=].valueCoding.system = "snomed-ct"
* #UvTis ^property[=].valueCoding = snomed-ct#399619004
* #UvTis ^property[+].code = #snomed-fsn
* #UvTis ^property[=].valueString = "Tissue specimen from uvea (specimen)"
* #VCordBp "Balso stygų bioptatas"
* #VCordBp ^property[0].code = #snomed-code
* #VCordBp ^property[=].valueCoding.system = "snomed-ct"
* #VCordBp ^property[=].valueCoding = snomed-ct#309184003
* #VCordBp ^property[+].code = #snomed-fsn
* #VCordBp ^property[=].valueString = "Vocal cord biopsy specimen (specimen)"
* #VenBl "Kraujas, veninis"
* #VenBl ^property[0].code = #snomed-code
* #VenBl ^property[=].valueCoding.system = "snomed-ct"
* #VenBl ^property[=].valueCoding = snomed-ct#122555007
* #VenBl ^property[+].code = #snomed-fsn
* #VenBl ^property[=].valueString = "Venous blood specimen (specimen)"
* #VenUmbBl "Kraujas, iš virkštelės, veninis"
* #VenUmbBl ^property[0].code = #snomed-code
* #VenUmbBl ^property[=].valueCoding.system = "snomed-ct"
* #VenUmbBl ^property[=].valueCoding = snomed-ct#703431007
* #VenUmbBl ^property[+].code = #snomed-fsn
* #VenUmbBl ^property[=].valueString = "Venous cord blood specimen (specimen)"
* #VertDc "Tarpslankstelinio disko tiriamoji medžiaga"
* #VertDc ^property[0].code = #snomed-code
* #VertDc ^property[=].valueCoding.system = "snomed-ct"
* #VertDc ^property[=].valueCoding = snomed-ct#438960000
* #VertDc ^property[+].code = #snomed-fsn
* #VertDc ^property[=].valueString = "Specimen from intervertebral disc (specimen)"
* #VesF "Pūslelės (vezikulės) skystis"
* #VesF ^property[0].code = #snomed-code
* #VesF ^property[=].valueCoding.system = "snomed-ct"
* #VesF ^property[=].valueCoding = snomed-ct#258482009
* #VesF ^property[+].code = #snomed-fsn
* #VesF ^property[=].valueString = "Vesicle fluid sample (specimen)"
* #VesFSw "Pūslelės (vezikulės) skystis (tamponas)"
* #VesFSw ^property[0].code = #snomed-code
* #VesFSw ^property[=].valueCoding.system = "snomed-ct"
* #VesFSw ^property[=].valueCoding = snomed-ct#472875007
* #VesFSw ^property[+].code = #snomed-fsn
* #VesFSw ^property[=].valueString = "Swab from vesicle (specimen)"
* #VgnBp "Makšties bioptatas"
* #VgnBp ^property[0].code = #snomed-code
* #VgnBp ^property[=].valueCoding.system = "snomed-ct"
* #VgnBp ^property[=].valueCoding = snomed-ct#309280002
* #VgnBp ^property[+].code = #snomed-fsn
* #VgnBp ^property[=].valueString = "Vaginal biopsy specimen (specimen)"
* #VgnInSw "Makšties prieangio išskyros (tamponas)"
* #VgnInSw ^property[0].code = #snomed-code
* #VgnInSw ^property[=].valueCoding.system = "snomed-ct"
* #VgnInSw ^property[=].valueCoding = snomed-ct#472899007
* #VgnInSw ^property[+].code = #snomed-fsn
* #VgnInSw ^property[=].valueString = "Swab from vaginal introitus (specimen)"
* #VgnRecSw "Makšties prieangio išskyros + tiesioji žarna (tamponas)"
* #VgnRecSw ^property[0].code = #snomed-code
* #VgnRecSw ^property[=].valueCoding.system = "snomed-ct"
* #VgnRecSw ^property[=].valueCoding = snomed-ct#708317005
* #VgnRecSw ^property[+].code = #snomed-fsn
* #VgnRecSw ^property[=].valueString = "Pooled specimen from vaginal introitus and rectal swab (specimen)"
* #VgnSec "Makšties išskyros"
* #VgnSec ^property[0].code = #snomed-code
* #VgnSec ^property[=].valueCoding.system = "snomed-ct"
* #VgnSec ^property[=].valueCoding = snomed-ct#258577004
* #VgnSec ^property[+].code = #snomed-fsn
* #VgnSec ^property[=].valueString = "Vaginal secretion specimen (specimen)"
* #VgnSw "Makšties išskyros (tamponas)"
* #VgnSw ^property[0].code = #snomed-code
* #VgnSw ^property[=].valueCoding.system = "snomed-ct"
* #VgnSw ^property[=].valueCoding = snomed-ct#258520000
* #VgnSw ^property[+].code = #snomed-fsn
* #VgnSw ^property[=].valueString = "Vaginal swab (specimen)"
* #VgnTis "Makšties audiniai"
* #VgnTis ^property[0].code = #snomed-code
* #VgnTis ^property[=].valueCoding.system = "snomed-ct"
* #VgnTis ^property[=].valueCoding = snomed-ct#128175003
* #VgnTis ^property[+].code = #snomed-fsn
* #VgnTis ^property[=].valueString = "Tissue specimen from vagina (specimen)"
* #VgnVltBp "Makšties skliauto bioptatas"
* #VgnVltBp ^property[0].code = #snomed-code
* #VgnVltBp ^property[=].valueCoding.system = "snomed-ct"
* #VgnVltBp ^property[=].valueCoding = snomed-ct#309281003
* #VgnVltBp ^property[+].code = #snomed-fsn
* #VgnVltBp ^property[=].valueString = "Vaginal vault biopsy specimen (specimen)"
* #VgnWs "Makšties išplovos"
* #VgnWs ^property[0].code = #snomed-code
* #VgnWs ^property[=].valueCoding.system = "snomed-ct"
* #VgnWs ^property[=].valueCoding = snomed-ct#258481002
* #VgnWs ^property[+].code = #snomed-fsn
* #VgnWs ^property[=].valueString = "Vaginal washout fluid specimen"
* #VnBp "Venos bioptatas"
* #VnBp ^property[0].code = #snomed-code
* #VnBp ^property[=].valueCoding.system = "snomed-ct"
* #VnBp ^property[=].valueCoding = snomed-ct#432061007
* #VnBp ^property[+].code = #snomed-fsn
* #VnBp ^property[=].valueString = "Specimen from vein obtained by biopsy (specimen)"
* #VntBrCSF "Smegenų skystis, iš smegenų skilvelio"
* #VntBrCSF ^property[0].code = #snomed-code
* #VntBrCSF ^property[=].valueCoding.system = "snomed-ct"
* #VntBrCSF ^property[=].valueCoding = snomed-ct#445372002
* #VntBrCSF ^property[+].code = #snomed-fsn
* #VntBrCSF ^property[=].valueString = "Cerebrospinal fluid specimen from ventricle of brain (specimen)"
* #VntShCSF "Smegenų skystis, iš ventrikuloperitoninio šunto"
* #VntShCSF ^property[0].code = #snomed-code
* #VntShCSF ^property[=].valueCoding.system = "snomed-ct"
* #VntShCSF ^property[=].valueCoding = snomed-ct#446861007
* #VntShCSF ^property[+].code = #snomed-fsn
* #VntShCSF ^property[=].valueString = "Cerebrospinal fluid specimen obtained via ventriculoperitoneal shunt (specimen)"
* #Vom "Vėmalai"
* #Vom ^property[0].code = #snomed-code
* #Vom ^property[=].valueCoding.system = "snomed-ct"
* #Vom ^property[=].valueCoding = snomed-ct#122572000
* #Vom ^property[+].code = #snomed-fsn
* #Vom ^property[=].valueString = "Vomitus specimen (specimen)"
* #VtHumF "Akies stiklakūnio skystis"
* #VtHumF ^property[0].code = #snomed-code
* #VtHumF ^property[=].valueCoding.system = "snomed-ct"
* #VtHumF ^property[=].valueCoding = snomed-ct#258438000
* #VtHumF ^property[+].code = #snomed-fsn
* #VtHumF ^property[=].valueString = "Vitreous humor specimen (specimen)"
* #VulvAbs "Vulvos absceso turinys"
* #VulvAbs ^property[0].code = #snomed-code
* #VulvAbs ^property[=].valueCoding.system = "snomed-ct"
* #VulvAbs ^property[=].valueCoding = snomed-ct#33331000087108
* #VulvAbs ^property[+].code = #snomed-fsn
* #VulvAbs ^property[=].valueString = "Specimen from abscess of vulva (specimen)"
* #VulvSw "Moters išorinių lytinių organų (vulvos) išskyros (tamponas)"
* #VulvSw ^property[0].code = #snomed-code
* #VulvSw ^property[=].valueCoding.system = "snomed-ct"
* #VulvSw ^property[=].valueCoding = snomed-ct#258523003
* #VulvSw ^property[+].code = #snomed-fsn
* #VulvSw ^property[=].valueString = "Vulval swab (specimen)"
* #WBC "Leukocitai"
* #WBC ^property[0].code = #snomed-code
* #WBC ^property[=].valueCoding.system = "snomed-ct"
* #WBC ^property[=].valueCoding = snomed-ct#258591005
* #WBC ^property[+].code = #snomed-fsn
* #WBC ^property[=].valueString = "White blood cell specimen (specimen)"
* #Wd "Žaizdos tiriamoji medžiaga"
* #Wd ^property[0].code = #snomed-code
* #Wd ^property[=].valueCoding.system = "snomed-ct"
* #Wd ^property[=].valueCoding = snomed-ct#119365002
* #Wd ^property[+].code = #snomed-fsn
* #Wd ^property[=].valueString = "Specimen from wound (specimen)"
* #WdAbs "Žaizdos absceso turinys"
* #WdAbs ^property[0].code = #snomed-code
* #WdAbs ^property[=].valueCoding.system = "snomed-ct"
* #WdAbs ^property[=].valueCoding = snomed-ct#119366001
* #WdAbs ^property[+].code = #snomed-fsn
* #WdAbs ^property[=].valueString = "Specimen from wound abscess (specimen)"
* #WdF "Žaizdos eksudatas"
* #WdF ^property[0].code = #snomed-code
* #WdF ^property[=].valueCoding.system = "snomed-ct"
* #WdF ^property[=].valueCoding = snomed-ct#122568004
* #WdF ^property[+].code = #snomed-fsn
* #WdF ^property[=].valueString = "Exudate specimen from wound (specimen)"
* #WdSw "Žaizdos eksudatas (tamponas)"
* #WdSw ^property[0].code = #snomed-code
* #WdSw ^property[=].valueCoding.system = "snomed-ct"
* #WdSw ^property[=].valueCoding = snomed-ct#258531008
* #WdSw ^property[+].code = #snomed-fsn
* #WdSw ^property[=].valueString = "Wound swab (specimen)"
* #WrJoF "Riešo sąnario sinovinis skystis"
* #WrJoF ^property[0].code = #snomed-code
* #WrJoF ^property[=].valueCoding.system = "snomed-ct"
* #WrJoF ^property[=].valueCoding = snomed-ct#167870008
* #WrJoF ^property[+].code = #snomed-fsn
* #WrJoF ^property[=].valueString = "Wrist joint synovial fluid (specimen)"
* #XXX "Ėminys, nepatikslintas"
* #XXX ^property[0].code = #snomed-code
* #XXX ^property[=].valueCoding.system = "snomed-ct"
* #XXX ^property[=].valueCoding = snomed-ct#430304001
* #XXX ^property[+].code = #snomed-fsn
* #XXX ^property[=].valueString = "Specimen from unspecified body site (specimen)"
* #aspU "Šlapimas, suprapubinis aspiratas"
* #aspU ^property[0].code = #snomed-code
* #aspU ^property[=].valueCoding.system = "snomed-ct"
* #aspU ^property[=].valueCoding = snomed-ct#258576008
* #aspU ^property[+].code = #snomed-fsn
* #aspU ^property[=].valueString = "Suprapubic aspirate sample (specimen)"
* #bagU "Šlapimas, iš vaikiško šlapimo surinkimo maišelio"
* #bagU ^property[0].code = #snomed-code
* #bagU ^property[=].valueCoding.system = "snomed-ct"
* #bagU ^property[=].valueCoding = snomed-ct#16221371000119107
* #bagU ^property[+].code = #snomed-fsn
* #bagU ^property[=].valueString = "Urine specimen obtained from pediatric urine collection bag"
* #catU "Šlapimas, per kateterį"
* #catU ^property[0].code = #snomed-code
* #catU ^property[=].valueCoding.system = "snomed-ct"
* #catU ^property[=].valueCoding = snomed-ct#122565001
* #catU ^property[+].code = #snomed-fsn
* #catU ^property[=].valueString = "Urinary catheter specimen (specimen)"
* #conU "Šlapimas, iš dirbtinio šlapimo rezervuaro (konduito)"
* #conU ^property[0].code = #snomed-code
* #conU ^property[=].valueCoding.system = "snomed-ct"
* #conU ^property[=].valueCoding = snomed-ct#447104008
* #conU ^property[+].code = #snomed-fsn
* #conU ^property[=].valueString = "Urine specimen from urinary conduit (specimen)"
* #cvU "Šlapimas, vidurinė srovė"
* #cvU ^property[0].code = #snomed-code
* #cvU ^property[=].valueCoding.system = "snomed-ct"
* #cvU ^property[=].valueCoding = snomed-ct#258574006
* #cvU ^property[+].code = #snomed-fsn
* #cvU ^property[=].valueString = "Mid-stream urine sample (specimen)"
* #cystU "Šlapimas, iš šlapimo pūslės su cistoskopu"
* #cystU ^property[0].code = #snomed-code
* #cystU ^property[=].valueCoding.system = "snomed-ct"
* #cystU ^property[=].valueCoding = snomed-ct#699285000
* #cystU ^property[+].code = #snomed-fsn
* #cystU ^property[=].valueString = "Urine specimen obtained from bladder by cystoscopy (specimen)"
* #dU "Šlapimas, 24 val."
* #dU ^property[0].code = #snomed-code
* #dU ^property[=].valueCoding.system = "snomed-ct"
* #dU ^property[=].valueCoding = snomed-ct#276833005
* #dU ^property[+].code = #snomed-fsn
* #dU ^property[=].valueString = "24 hour urine specimen (specimen)"
* #epiU "Šlapimas, per epicistostomą"
* #epiU ^property[0].code = #snomed-code
* #epiU ^property[=].valueCoding.system = "snomed-ct"
* #epiU ^property[=].valueCoding = snomed-ct#699287008
* #epiU ^property[+].code = #snomed-fsn
* #epiU ^property[=].valueString = "Urine specimen obtained via suprapubic indwelling urinary catheter (specimen)"
* #fmU "Šlapimas, rytinis"
* #fmU ^property[0].code = #snomed-code
* #fmU ^property[=].valueCoding.system = "snomed-ct"
* #fmU ^property[=].valueCoding = snomed-ct#258575007
* #fmU ^property[+].code = #snomed-fsn
* #fmU ^property[=].valueString = "Early morning urine sample (specimen)"
* #fvU "Šlapimas, pirmoji srovė"
* #fvU ^property[0].code = #snomed-code
* #fvU ^property[=].valueCoding.system = "snomed-ct"
* #fvU ^property[=].valueCoding = snomed-ct#698276005
* #fvU ^property[+].code = #snomed-fsn
* #fvU ^property[=].valueString = "First stream urine sample (specimen)"
* #icatU "Šlapimas, per ilgalaikį kateterį"
* #icatU ^property[0].code = #snomed-code
* #icatU ^property[=].valueCoding.system = "snomed-ct"
* #icatU ^property[=].valueCoding = snomed-ct#446846006
* #icatU ^property[+].code = #snomed-fsn
* #icatU ^property[=].valueString = "Urine specimen obtained via indwelling urinary catheter (specimen)"
* #kidU "Šlapimas, iš inksto"
* #kidU ^property[0].code = #snomed-code
* #kidU ^property[=].valueCoding.system = "snomed-ct"
* #kidU ^property[=].valueCoding = snomed-ct#446907008
* #kidU ^property[+].code = #snomed-fsn
* #kidU ^property[=].valueString = "Urine specimen obtained from kidney (specimen)"
* #nefU "Šlapimas, per nefrostomą"
* #nefU ^property[0].code = #snomed-code
* #nefU ^property[=].valueCoding.system = "snomed-ct"
* #nefU ^property[=].valueCoding = snomed-ct#442173007
* #nefU ^property[+].code = #snomed-fsn
* #nefU ^property[=].valueString = "Urine specimen from nephrostomy tube (specimen)"
* #pBl "Kraujas, paciento"
* #pBl ^property[0].code = #snomed-code
* #pBl ^property[=].valueCoding.system = "snomed-ct"
* #pBl ^property[=].valueCoding = snomed-ct#122561005
* #pBl ^property[+].code = #snomed-fsn
* #pBl ^property[=].valueString = "Blood specimen from patient (specimen)"
* #pS "Serumas, paciento"
* #pS ^property[0].code = #snomed-code
* #pS ^property[=].valueCoding.system = "snomed-ct"
* #pS ^property[=].valueCoding = snomed-ct#122590004
* #pS ^property[+].code = #snomed-fsn
* #pS ^property[=].valueString = "Serum specimen from patient (specimen)"
* #scatU "Šlapimas, per vienkartinį kateterį"
* #scatU ^property[0].code = #snomed-code
* #scatU ^property[=].valueCoding.system = "snomed-ct"
* #scatU ^property[=].valueCoding = snomed-ct#16221251000119108
* #scatU ^property[+].code = #snomed-fsn
* #scatU ^property[=].valueString = "Urine specimen obtained via straight catheter (specimen)"
* #urtU "Šlapimas, iš šlapimtakio"
* #urtU ^property[0].code = #snomed-code
* #urtU ^property[=].valueCoding.system = "snomed-ct"
* #urtU ^property[=].valueCoding = snomed-ct#444937002
* #urtU ^property[+].code = #snomed-fsn
* #urtU ^property[=].valueString = "Urine specimen from ureter (specimen)"
* #urtstU "Šlapimas, per ureterostomą"
* #urtstU ^property[0].code = #snomed-code
* #urtstU ^property[=].valueCoding.system = "snomed-ct"
* #urtstU ^property[=].valueCoding = snomed-ct#33351000087104
* #urtstU ^property[+].code = #snomed-fsn
* #urtstU ^property[=].valueString = "Urine specimen from ureterostomy"
* #vP "Plazma, veninė"
* #vP ^property[0].code = #snomed-code
* #vP ^property[=].valueCoding = snomed-ct#703432000
* #vP ^property[+].code = #snomed-fsn
* #vP ^property[=].valueString = "Venous plasma specimen (specimen)"