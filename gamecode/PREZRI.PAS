procedure prezri;
begin
 if cast=1 then begin
 {--------------izba1---------------------------}
 if izba=1 then
 begin
  if predmet=('KLU�KA`') then
   say(192,9,'TAK� KOVOV�.');
  if predmet=('DVERE`') then
   say(192,9,'S� RIADNE PEVN�.');
  if predmet='KVETY' then say(192,9,'S� VO�AV� !!!');
  if predmet='ST~L' then say(192,9,'POSK�KALA SOM PO �OM. JE PEVN�.');
  if predmet='OKNO' then say(192,9,'TERAZ SA NECHCEM POZERA�.');
  if predmet='V�ZA' then say(192,9,'PEKN�, PORCEL�NOV�.');
  if predmet='KUCHY�A' then say(192,9,'V KUCHYNI SU �NOSCOVIA ...');
  if predmet='KUCH. LINKA' then say(192,9,'NEVIEM VARI�, ALE TERAZ MUS�M �JS� ...');
  if predmet='LAMPA' then say(192,9,'NEDO�IAHNEM NA �U.');
  if predmet='OBRAZ' then say(192,9,'TAK� PEKN� SOM E�TE NEVIDELA.');
  if predmet='F�A�A' then say(192,9,'T� DVAJA S� ALE O�RANI !');
  if predmet='POKR�EN� PAPIER' then say(192,9,'JE TO �IST� PAPIER !');
  if predmet='K~�' then say(192,9,'NIE JE NA �OM NI� ZAUJ�MAV�.');
  if predmet='K~�' then begin
   loadspr('data\detail11');
   if not predm[6] then newspr('data\detail12');
   zobraz;
  end;
  if predmet='MINCA' then begin
   say(192,9,'50 HALIEROV !');end;
 end else
 {--------------chodba---------------------------}
 if izba=2 then
 begin
  if predmet='DVERE`' then say(192,9,'NORM�LNE DREVENN�.');
  if predmet='DVERE'+CHR(1)+'`' then say(192,9,'NORM�LNE DREVENN�.');
  if predmet='DVERE'+CHR(2)+'`' then say(192,9,'NORM�LNE DREVENN�.');
  if predmet='DVERE'+CHR(3)+'`' then say(192,9,'NORM�LNE DREVENN�.');
  if (predmet='PR�ZEMIE`')and(not predm[1]) then say(192,9,'SCHODY S� �ERSTVO UMYT�.');
  if (predmet='PR�ZEMIE`')and(predm[1]) then say(192,9,'U� S� VYSU�EN� OD M~JHO P�DU.');
  if predmet='GARN��A' then say(192,9,'DREVENN� ...');
  if predmet='Z�BRADLIE' then say(192,9,'JE NA TO, ABY �UDIA NEPADLI NA SCHODY.');
  if predmet='VYP�NA�' then say(192,9,'CEZ DE� SA NESVIETI.');
  if predmet='NE�NKA' then say(192,9,'JE CEL� NE�NOV�.');
  if predmet='OKNO' then say(192,9,'J���J, TO JE V�H�A����D ...');
 end else
 {--------------izba2---------------------------}
 if izba=3 then
 begin
  if predmet='PAPU�E' then say(192,9,'F�����J, JAK� SMRAD�AV� !!!');
  if predmet='SKRI�A' then
  begin
   if not predmal[15] then say(192,9,'JE ZAMKNUT�, ALE DALA BY SA OTVORI� AJ PLIE�KOM.');
   if predmal[15] then begin loadspr('data\detail21');
   if not predm[8] then newspr('data\detail22');zobraz;end;
  end;
  if predmet='SKRI�A' then say(192,9,'SKORO AKO Z DREVA.');
  if predmet='V�CHOD`' then say(192,9,'JE TO V�CHOD AKO KA�D� IN�.');
  if predmet='�UPL�K' then say(192,9,'JE PLN� ZBYTO�N�CH VEC�.');
  if predmet='OKNO' then say(192,9,'JE TO V�KUOV� OKNO, AJ DOMA M�ME TAK� ...');
   if (predmet='VE�K� �UPL�K')and(predmal[5])and(predmal[10]) then
   begin loadspr('data\detail23');if not predmal[16] then
   newspr('data\detail24');zobraz;end else
  if (predmet='VE�K� �UPL�K')and(predmal[5])and(not predmal[10]) then
   begin loadspr('data\detail23');newspr('data\detail24');zobraz;
    say(192,9,'UFF, PODARILO SA.');predmal[10]:=true;end;
   if (predmet='VE�K� �UPL�K')and(not predmal[5]) then
   begin predmal[5]:=true;say(192,9,'JE �A�K� ASI HO NEOTVOR�M.');end;
  if predmet='K���' then say(192,9,'TEN K��� BY SA ZI�IEL.');
  if predmet='LAMPA' then say(192,9,'NEDO�IAHNEM NA �U.');
  if predmet='SKRINKA' then say(192,9,'NORM�LNE NENORM�LNA SKRINKA.');
  if predmet='PRIMIT�VNY Z�MOK' then say(192,9,'BO�E, VRAJ Z�MOK !');
  if predmet='VE�IAKY' then say(192,9,'NIE SOM DOS� VYSOK� NA VE�ANIE.');
  if predmet='ZRKADLO' then say(192,9,'ZRKADIELKO, ZRKADIELKO, KTO JE NAJKRAJ�� NA SVETE ?');
  if predmet='POSTE�' then say(192,9,'TERAZ NECHCEM SPINKA�.');
  if predmet='STOLOV� LAMPA' then say(192,9,'LAMPA SA ZA��NA A� VE�ER ! �O NEVIE� ?');
  if predmet='Z�VES' then say(192,9,'VE�MI PEKN� Z�VES, ALE NEVIEM �O S N�M.');
 end else
 {--------------izba3---------------------------}
 if izba=4 then
 begin
  if predmet='V�CHOD`' then say(192,9,'JE TO V�CHOD AKO KA�D� IN�.');
  if predmet='STOLI�KA' then say(192,9,'�NO. JE TO STOLI�KA. DOKONCA DREVENN�.');
  if predmet='AKV�RIUM' then begin loadspr('data\detail31');zobraz;end;
  if (predmet='AKVARKO')and(not predmal[2]) then say(192,9,'PL�VAJ� V �OM PIRANE. MYSL�M, �E S� HLADN�.');
  if (predmet='AKVARKO')and(predmal[2])and(predmal[8]) then
   say(192,9,'U� TAM NIE JE NI� ZAUJ�MAV�.');
  if (predmet='VODA')and(predmal[2])and(predmal[8]) then
   say(192,9,'U� TAM NIE JE NI� ZAUJ�MAV�.');
  if (predmet='VODA')and(not predmal[2]) then
   say(192,9,'NIE, NIE, RUKU TAM NESTR��M.');
  if (predmet='AKVARKO')and(predmal[2])and(not predmal[8]) then
   say(192,9,'PIRA�U TO VZALO !');
  if (predmet='VODA')and(predmal[2])and(not predmal[8]) then
   say(192,9,'NA DNE VID�M ZHRDZAVEN� K���.');
  if predmet='Z�VES' then say(192,9,'ODHRNULA SOM HO, ALE NA�LA SOM NI�.');
  if predmet='STOL�EK' then say(192,9,'STOL�EK PRESTRI SA... PROS�M. N������. ASI JE POKAZEN�.');
  if predmet='GARN��A' then say(192,9,'NI� SOM NENA�LA.');
  if predmet='OKNO' then say(192,9,'VONKU JE KR�SNY DE�.');
  if predmet='LUSTER' then say(192,9,'NI� POTREBN� NA �OM NEVID�M.');
  if predmet='KNI�NICA' then say(192,9,'VE�MI ZAUJ�MAV� KNIHY, ALE NEM�M �AS.');
  if predmet='ST~L' then say(192,9,'VE�MI SA PODOB� NA STAR�HO OTCA, ALEBO NIE ?');
  if predmet='POSTE�' then say(192,9,'TAK� TVRD� AKO MOJA. JA CHCEM �S� DOMOV !!!');
 end else
 {--------------izba4---------------------------}
 if izba=5 then
 begin
  if predmet='KNI�NICA' then say(192,9,'AHA. PR�RU�KA MLAD�CH �NOSCOV. JA NEVIEM P�SA�.');
  if predmet='POSTE�' then say(192,9,'TAK� IST� SOM VIDELA V ANTIKVARI�TE.');
  if predmet='SKRI�A' then say(192,9,'JE NA NEJ VYRYT� :BOL SOM TU.  RUMBURAK');
  if predmet='Z�VES' then say(192,9,'NI� POTREBN�, LEN Z�VES.');
  if predmet='OKNO' then say(192,9,'VONKU U� ZA��NA PADA� L�STIE ZO STROMOV.');
  if predmet='K~�' then say(192,9,'NIE JE V �OM NI� POTREBN�.');
  if (predmet='ST~L')and(predm[17]) then say(192,9,'JE PR�ZDNY. JE NA �OM ASI POL KILA PRACHU.');
  if (predmet='ST~L')and(not predm[17]) then say(192,9,'JE ZAMKNUT�. JE NA �OM ASI POL KILA PRACHU.');
  if predmet='HODINY' then say(192,9,'S� TO DIGIT�LKY ?! MAL� RU�I�KA JE NA TROJKE ...');
  if predmet='HIFI VE�A' then say(192,9,'ZNA�KA : MOCKBA ELEKTRONIKA.');
  if predmet='LUSTER' then say(192,9,'E�TE SVIETI SVETLO. NETREBA HO ZAP�NA�.');
  if predmet='V�CHOD`' then say(192,9,'JE TO V�CHOD AKO KA�D� IN�.');
 end else
 {--------------chodba1---------------------------}
 if izba=6 then
 begin
  if (predmet='KUCHY�A`') then say(192,9,'M�AM, M�AM.');
  if (predmet='KABINET`')and(kabinet=3) then say(192,9,'JE ZAMKNUT�.') else
  if predmet='KABINET`' then say(192,9,'NI� ZAUJ�MAV�HO.');
  if predmet='DVERE`' then  say(192,9,'NI� ZAUJ�MAV�HO.');
  if (predmet='ULICA`')and(predmal[14]) then say(192,9,'MUS�M �JS�, K�M SA T� ! P����P ! NEZOBUDIA.');
  if (predmet='ULICA`')and(not predmal[14]) then
   say(192,9,'VR�TNIK MA NECHCE PUSTI�, K�M MU NED�M K��� OD IZBY.');
  if predmet='VR�TNICA' then say(192,9,'JE CEL� DREVENN�.');
  if (predmet='VR�TNIK')and(not predmal[14]) then
   say(192,9,'VR�TNIK SI MA POZORNE OBZER�. AJ JA SI HO OBZER�M.');
  if (predmet='VR�TNIK')and(predmal[14]) then
   say(192,9,'ASI BY HO BOLO TREBA ODVIEZ� DO NEMOCNICE.');
  if predmet='POSCHODIE`' then say(192,9,'CESTOU POSCHODOCH, POSCHODOCH...');
  if predmet='VYP�NA�' then say(192,9,'CEZ DE� SA NESVIETI.');
 end else
 {--------------kuchy�a---------------------------}
 if izba=7 then
 begin
  if predmet='V�CHOD`' then say(192,9,'JE TO V�CHOD AKO KA�D� IN�.');
  if predmet='KACHLI�KY' then say(192,9,'S� TO KACHLI�KY BIELEJ FARBY A S� �PINAV�.');
  if predmet='NE�NKA' then say(192,9,'AJ BY SOM JU CHCELA, ALE JE VYSOKO.');
  if predmet='OKNO' then say(192,9,'JE �PINAV�.');
  if predmet='VODOVODN� BAT�RIA' then say(192,9,'NEM�M DO �OHO NABRA� VODU.');
  if predmet='UM�VADLO' then say(192,9,'JE PEKNE VY�ISTEN�.');
  if predmet='ST~L' then say(192,9,'NEVIEM, �O S N�M.');
  if predmet='STOLI�KA' then say(192,9,'AJ BY SOM SI SADLA, ALE NEM�M �AS.');
  if predmet='DRES' then say(192,9,'JE PR�LI� TA�K�.');
  if predmet='�PAJZA' then
   begin loadspr('data\detail41');if not predmal[4] then newspr('data\detail42');zobraz;end;
  if predmet='STEHNO' then say(192,9,'M�AM, M�AM.');
  if predmet='VYTRHNUT� R��KA' then say(192,9,'ASI M� OPRAV�R DOVOLENKU.');
  if predmet='KORENI�KY' then begin loadspr('data\detail43');zobraz;end;
  if predmet='SKRI�A' then say(192,9,'SKORO AKO �PAJZA.');
  if predmet='KORENIE' then say(192,9,'HAP��K.');
  if predmet='KORENI�KA' then say(192,9,'JE TO N�DOBA NA KORENIE S HODINOV�M VRCHN�KOM.');
  if predmet='VRCHN�K' then say(192,9,'�ASOV� ZNAMENIE OHL�SILO 4:61 HOD�N.');
  if predmet='SKRINKA' then say(192,9,'PR�ZDNA.');
  if predmet='POLI�KA NA KORENI�KY' then say(192,9,'DR�� PEVNE.');
 end else
 {--------------kabinet---------------------------}
 if izba=8 then
 begin
  if predmet='V�CHOD`' then say(192,9,'JE TO V�CHOD AKO KA�D� IN�.');
  if predmet='METLA' then say(192,9,'TO JE TAK� PALICA SO STRAPAT�M NA KONCI.');
  if predmet='Z�MOK' then say(192,9,'JE TO KOVOV� Z�MOK. BEZ K���A HO ASI NEOTVOR�M.');
  if predmet='R�RY' then say(192,9,'PREHLIADLA SOM ICH, ALE NI� PODOZRIV� NA NICH NIE JE.');
  if predmet='OKNO' then say(192,9,'NED� SA OTVORI�. JE PRIPEVNEN� VE�MI PEVNE.');
  if predmet='KRABICA' then say(192,9,'SCHOVALA SOM SA DO NEJ, ALE HNE� SOM VYLIEZLA.');
  if predmet='RIEDIDLO' then say(192,9,'JE RIEDKE.');
  if predmet='POKLOP`' then say(192,9,'JE PRIVALEN� SKRI�OU.');
  if predmet='LEP' then say(192,9,'JE VYSOKO.');
  if predmet='LUSTER' then say(192,9,'JE TO OBY�AJN� KUS PLECHU, NI� MO�.');
  if predmet='PLECHOV� SKRI�A' then say(192,9,'JE CEL� VYROBEN� Z PEVN�HO PLECHU.');
  if predmet='VEDRO' then say(192,9,'E�TE JE MOKR�, MUSELO SA S N�M PRED CHV��OU UM�VA�.');
  if predmet='POLI�KA' then say(192,9,'PREHLIADLA SOM JU. JE TO POLI�KA ? ASI !');
  if predmet='VYP�NA�' then say(192,9,'BO�E AK� TR�PNE. N�JS� VYP�NA� !');
 end else
 {--------------kabinet tma---------------------------}
 if izba=10 then
 begin
  if predmet='V�CHOD`' then say(192,9,'JE TO V�CHOD AKO KA�D� IN�.');
  if predmet='METLA' then say(192,9,'TO JE TAK� PALICA SO STRAPAT�M NA KONCI.');
  if predmet='R�RY' then say(192,9,'JE ICH VIDIE� LEN SLABO.');
  if predmet='OKNO' then say(192,9,'JE CEL� ZAPRA�EN�.');
  if predmet='KRABICA' then say(192,9,'NEDO�IAHNEM.');
  if predmet='POKLOP`' then say(192,9,'JE PRIVALEN� SKRI�OU.');
  if predmet='RIEDIDLO' then say(192,9,'JE RIEDKE.');
  if predmet='Z�MOK' then say(192,9,'SKORO HO NIE JE VIDIE�.');
  if predmet='LEP' then say(192,9,'JE VYSOKO.');
  if predmet='LUSTER' then say(192,9,'JE TO OBY�AJN� KUS PLECHU, NI� MO�.');
  if predmet='PLECHOV� SKRI�A' then say(192,9,'JE CEL� VYROBEN� Z PEVN�HO PLECHU.');
  if predmet='VEDRO' then say(192,9,'E�TE JE MOKR�, MUSELO SA S N�M PRED CHV��OU UM�VA�.');
  if predmet='VYP�NA�' then say(192,9,'YES, SWI.. VYP�NA�.');
  if predmet='POLI�KA' then say(192,9,'PREHLIADLA SOM JU. JE TO POLI�KA, ALEBO NIE ?');
 end else
 {KABINET BORDEL}
 if izba=11 then
 begin
  if predmet='CHODBA`' then say(192,9,'NORM�LNA CHODBA.');
  if predmet='HARABURDY' then begin loadspr('data\detail51');
   if not predmal[9] then newspr('data\detail52');zobraz;end;
  if predmet='�ELEZN� PALICA' then say(192,9,'JE PR�LI� �A�K�.');
  if predmet='HELMA' then say(192,9,'JE TOT�LNE ZACEMENTOVAN�.');
  if predmet='POKLOP`' then say(192,9,'JE PRIVALEN� SKRI�OU.');
  if predmet='R�RY' then say(192,9,'PREHLIADLA SOM ICH, NI� PODOZRIV� NA NICH NIE JE.');
  if predmet='METLA' then say(192,9,'TO JE TAK� PALICA SO STRAPAT�M NA KONCI.');
  if predmet='OKNO' then say(192,9,'NED� SA OTVORI�. JE PRIPEVNEN� NA PEVNO.');
  if predmet='KRABICA' then say(192,9,'SCHOVALA SOM SA DO NEJ, ALE HNE� SOM VYLIEZLA.');
  if predmet='LEP' then say(192,9,'JE VYSOKO.');
  if predmet='LUSTER' then say(192,9,'JE TO OBY�AJN� KUS PLECHU, NI� MOC.');
  if predmet='PLECHOV� SKRI�A' then say(192,9,'JE CEL� VYROBEN� Z PEVN�HO PLECHU.');
  if predmet='VEDRO' then say(192,9,'E�TE JE MOKR�, MUSELO SA S N�M PRED CHV��OU UM�VA�.');
  if predmet='POLI�KA' then say(192,9,'PREHLIADLA SOM JU. JE TO POLI�KA, ALEBO NIE ?');
  if predmet='SKRI�A' then say(192,9,'JE CEL� VYROBEN� Z PEVN�HO PLECHU.');
  if predmet='PALICA' then say(192,9,'JE PR�LI� �A�K�.');
  if predmet='F�A�A' then say(192,9,'JE U� VYPIT�.');
  if predmet='�ROBOV�K' then say(192,9,'U� JE VYDRAT�.');
  if predmet='HELMA'+#01 then say(192,9,'�PINAV� A VE�K�.');
 end else
 {-------------- kabinet - poklop --------------------------}
 if izba=13 then
 begin
  if predmet='V�CHOD`' then say(192,9,'JE TO V�CHOD AKO KA�D� IN�.');
  if predmet='METLA' then say(192,9,'TO JE TAK� PALICA SO STRAPAT�M NA KONCI.');
  if predmet='Z�MOK' then say(192,9,'JE TO KOVOV� Z�MOK. BEZ K���A HO ASI NEOTVOR�M.');
  if predmet='R�RA' then say(192,9,'PREHLIADLA SOM JU, ALE NI� PODOZRIV� NA NEJ NIE JE.');
  if predmet='OKNO' then say(192,9,'NED� SA OTVORI�. JE PRIPEVNEN� NA PEVNO.');
  if predmet='KRABICA' then say(192,9,'SCHOVALA SOM SA DO NEJ, ALE HNE� SOM VYLIEZLA.');
  if predmet='RIEDIDLO' then say(192,9,'JE RIEDKE.');
  if predmet='POKLOP`' then say(192,9,'KE� TO TU UPRATOVALI, MUSELI ODSUN�� SKRI�U.');
  if predmet='LEP' then say(192,9,'JE VYSOKO.');
  if predmet='LUSTER' then say(192,9,'JE TO OBY�AJN� KUS PLECHU, NI� MO�.');
  if predmet='PLECHOV� SKRI�A' then say(192,9,'JE CEL� VYROBEN� Z PEVN�HO PLECHU.');
  if predmet='VEDRO' then say(192,9,'E�TE JE MOKR�, MUSELO SA S N�M PRED CHV��OU UM�VA�.');
  if predmet='POLI�KA' then say(192,9,'PREHLIADLA SOM JU. JE TO POLI�KA, ALEBO NIE ?');
  if predmet='VYP�NA�' then say(192,9,'BO�E AK� TR�PNE. N�JS� VYP�NA� !');
 end else
 {-------------- ULICA --------------------------}
 if izba=15 then
 begin
  if predmet='DO PENZI�NU`' then say(192,9,'NASP�� SA MI VERU NECHCE.');
  if predmet='LAMPA' then say(192,9,'NORM�LNA 8 METROV� LAMPA.');
  if predmet='REKLAMA' then say(192,9,'REKLAMA NA BAVLNEN� PAD�KY.');
  if predmet='DVERE`' then say(192,9,'S� ZAMKNUT�.');
  if predmet='OKNO' then say(192,9,'NED� SA OTVORI�. JE PRIPEVNEN� PEVNE.');
  if predmet='DO MESTA`' then say(192,9,'JUP���, KONE�NE PRE�.');
 end else
 {--------------PiVNICA-----------------------}
 if izba=14 then
 begin
  if predmet='REBR�K`' then say(192,9,'JE PEVN� A DREVENN�.');
  if predmet='DIERA' then say(192,9,'VID�M KABINET A PO�UJEM SVETLO !');
  if predmet='TRUHLICA' then say(192,9,'NEM�M K���IK A POKLOP JE TA�K�.');
  if predmet='SUD' then say(192,9,'JA SA S�DU BOJ�M.');
  if predmet='DEMI��N' then say(192,9,'JE PR�ZDNY.');
  if predmet='F�A�A' then say(192,9,'JE SKORO PR�ZDNA.');
  if predmet='F�A�A' then say(192,9,'JE PLN� V�NA.');
  if predmet='F�A�A'+#3 then say(192,9,'JE SKORO PR�ZDNA.');
  if predmet='POLI�KA' then say(192,9,'SL��I NA POKLADANIE FLIA�.');
  if predmet='PRASKNUT� F�A�A' then say(192,9,'JE PRASKNUT�.');
 end else
 {--------------izba 5 telefon-----------------------}
 if izba=12 then
 begin
  if predmet='IZBA`' then say(192,9,'U� MA TO NEBAV���� !');
  if predmet='SL�CHADLO' then say(192,9,'NESL�CHA. ASI JE POKAZEN�.');
  if predmet='MIESTO NA KAZETY' then say(192,9,'STR� PRST SKRZ KRK ...');
  if predmet='K�SOK PAPIERA' then say(192,9,'NIEKTO S�RNE POTREBOVAL PAPIER. ASI NA WC.');
  if predmet='PLAY' then say(192,9,'POTLA�.');
  if predmet='REC' then say(192,9,'POTLA�.');
  if predmet='REW' then say(192,9,'POTLA�.');
  if predmet='STOP' then say(192,9,'POTLA�.');
  if predmet='#' then say(192,9,'POTLA�.');
  if predmet='*' then say(192,9,'POTLA�.');
  if predmet='0' then say(192,9,'POTLA�.');
  if predmet='1' then say(192,9,'POTLA�.');
  if predmet='2' then say(192,9,'POTLA�.');
  if predmet='3' then say(192,9,'POTLA�.');
  if predmet='4' then say(192,9,'POTLA�.');
  if predmet='6' then say(192,9,'POTLA�.');
  if predmet='5' then say(192,9,'POTLA�.');
  if predmet='7' then say(192,9,'POTLA�.');
  if predmet='8' then say(192,9,'POTLA�.');
  if predmet='9' then say(192,9,'POTLA�.');
 end else
 {--------------izba 5---------------------------}
 if izba=9 then
 begin
  if predmet='V�CHOD`' then say(192,9,'JE TO V�CHOD AKO KA�D� IN�.');
  if predmet='SEKRET�R' then begin loadspr('data\detail61');
   if not predmal[13] then newspr('data\detail62');zobraz;end;
  if predmet='SEKRET�R' then say(192,9,'S K�M JE ASI JEHO MAN�ELKA ?');
  if predmet='K���' then say(192,9,'KRI�� NA M�A ABY SOM SI HO ZOBRALA.');
  if predmet='STOL�K' then say(192,9,'JE NA �OM POLO�EN� TELEF�N.');
  if predmet='N�BYTOK' then say(192,9,'JE VYROBEN� Z BOROVICE.');
  if predmet='GAU�' then say(192,9,'JE VY�RAT� MO�AMI.');
  if predmet='LUSTER' then say(192,9,'TIETO LUSTRE MA U� NUDIA, KTO SI ICH M� PREZERA�.');
  if predmet='TELEF�N' then begin telcis:='';izba:=12;loadroom('data\telefon');end;
  if predmet='SKRI�A' then say(192,9,'KE� SA NA TO POZRIEM, NI� NEVID�M.');
  if predmet='OKNO' then say(192,9,'PRI PODROBNOM PREHLIADNUT� SOM NA�LA VELK� P.. .');
 end;
 end;
 if cast=2 then
 begin
 {--------------posch 1-----------------------}
 if izba=1 then
 begin
  if predmet='VSUNUT� PLAG�T' then say(192,9,'NAJLEP�IE BY BOLO HO VYTIAHNU�.');
  if predmet='K�U�KA' then say(192,9,'TAK� KOVOV�.');
  if predmet='DVERE`' then say(192,9,'S� ZAMKNUT�. ASI ABY SOM NEU�LA !');
  if predmet='PLAG�T' then say(192,9,'SUPER ! KDE HO ZOHNALI !');
  if predmet='Z�MOK' then say(192,9,'DO Z�MKU SA PCHAJ� K���E.');
  if predmet='Z�RUB�A' then say(192,9,'AK� Z�RUB�A ? �O ? J���J. Z�RUB�A. N���.');
  if predmet='N�BYTOK' then say(192,9,'JE MI NA NI�.');
  if predmet='R��KA' then say(192,9,'PODALA SOM JE R��KU.');
  if predmet='PRAH' then say(192,9,'VID�M TADIA� NA CHODBU.');
  if predmet='DR~TIK' then say(192,9,'PCHE. JEDEN DR�T MI NEPOM~�E.');
  if predmet='OBTRHAN� PLAG�T' then say(192,9,'JA SA ZA TO TAK STRA�NE HAMB�M.');
 end else
 if izba=2 then
 begin
  if predmet='OBR�ZOK' then say(192,9,'SCREEN SHOT Z �TEKU.');
  if predmet='DVERE`' then say(192,9,'S�ZAM OTVOR SA.');
  if predmet='DVERE`' then say(192,9,'S�ZAM OTVOR SA.');
  if predmet='DVERE`' then say(192,9,'S�ZAM OTVOR SA.');
  if predmet='Z�MOK' then say(192,9,'DO Z�MKU SA PCHAJ� K���E.');
  if predmet='CHODBA`' then say(192,9,'TREBA ST�PI� �AVOU NOHOU DO �AVA.');
  if predmet='K���OV� DIERKA' then say(192,9,'VID�M CEZ �U TMU.');
  if predmet='DIERA' then say(192,9,'NEVOPCH�M SA.');
 end else
 if izba=3 then
 begin
  if predmet='POSTE�' then say(192,9,'NEM�M �AS.');
  if predmet='STOL�K' then say(192,9,'TOALETN� STOL�K.');
  if predmet='NO�NICE' then say(192,9,'S� RIADNE OSTR�.');
  if predmet='STOL�K' then begin
   if predmal[13] then begin
    if predmal[12] then begin loadspr('data2\posch22');zobraz;end else
     begin loadspr('data2\posch21');zobraz;end;
   end else say(192,9,'JE ZAMKNUT�.');
  end;
  if predmet='DVERE`' then say(192,9,'SK�S ICH OTVORI�.');
  if predmet='Z�MOK' then say(192,9,'DO Z�MKU SA PCHAJ� K���E.');
  if predmet='Z�RUB�A' then say(192,9,'AK� Z�RUB�A ? �O ? J���J. Z�RUB�A. N���.');
  if predmet='SKRI�A' then say(192,9,'JE MI NA NI�.');
  if predmet='K���' then say(192,9,'JE PRIZV�RAN�.');
 end else
 if izba=4 then
 begin
  if predmet='OKNO' then say(192,9,'U� JE LETO.');
  if predmet='VODOVOD' then say(192,9,'NETE�IE TEPL� VODA.');
  if predmet='VODA' then say(192,9,'NIE JE TO N�HODOU VODA ?');
  if predmet='SPRCHA' then say(192,9,'NAPOSLEDY SOM SA SPRCHOVALA MINUL� VIANOCE.');
  if predmet='MYDLO' then say(192,9,'VO�AV�.');
  if predmet='PODLO�KA NA MYDLO' then say(192,9,'JE PODLO�EN� POD MYDLO.');
  if predmet='UM�VADLO' then say(192,9,'UMYJEM SI RUKY, NOHY, ...');
  if predmet='VA�A' then say(192,9,'JE NENAPUSTEN�.');
  if predmet='UTER�K' then say(192,9,'VONIA LENOROM A KRVAV�M SLIZOM.');
  if predmet='VE�IAK' then say(192,9,'JE ZO ZLATA.');
  if predmet='�N�RA' then say(192,9,'ASI JE TO HRDZAV� DR~T, ALE KTO VIE ?');
  if predmet='�TIPEC' then say(192,9,'�T�PE. KOM�R JEDEN HNUSN�.');
  if predmet='R�RA' then say(192,9,'JE HOR�CA.');
  if predmet='DIERA' then say(192,9,'MALA BY TADIA� VYTEKA� VODA.');
  if predmet='V�CHOD`' then say(192,9,'VE� U� IDEM.');
 end else
 if izba=5 then
 begin
  if predmet='OBR�ZOK' then say(192,9,'SCREEN SHOT Z DOOMA 2.');
  if predmet='OBR�ZOK' then say(192,9,'SCREEN SHOT Z MANICA MINER 2000.');
  if predmet='OBR�ZOK' then say(192,9,'SCREEN SHOT Z HERETICA.');
  if predmet='OBR�ZOK' then say(192,9,'SCREEN SHOT Z �TEKU. ');
  if predmet='DVERE`' then say(192,9,'S�ZAM OTVOR SA.');
  if predmet='DVERE`' then say(192,9,'S�ZAM OTVOR SA.');
  if predmet='DVERE`' then say(192,9,'S�ZAM OTVOR SA.');
  if predmet='Z�MOK' then say(192,9,'DO Z�MKU SA PCHAJ� K���E.');
  if predmet='CHODBA`' then say(192,9,'TREBA ST�PI� PRAVOU NOHOU DO PRAVA.');
 end else
 if izba=6 then
 begin
  if predmet='ZVON' then say(192,9,'CINGI LINGI BOM.');
  if predmet='VENTIL�TOR' then say(192,9,'FIJ� F�. SOM SLNE�N� VIETOR.');
  if predmet='SPLACHOVA�' then say(192,9,'E�TE NIEJE PLN� MISA.');
  if predmet='�N�RKA' then say(192,9,'CHYTILA V~�U.');
  if predmet='MISA' then say(192,9,'PLN� DO TROCH �TVRT�N.');
  if predmet='POKLOP' then say(192,9,'ABY NEUNIKALI PLYNY.');
  if predmet='N�DR�' then say(192,9,'JE TAM �IST� VODA. ASPO� D�FAM.');
  if predmet='R�RA' then say(192,9,'NECHCEM ANI VEDIE� �O JE VN�TRI.');
  if predmet='V�CHOD`' then say(192,9,'E�TE CHV��U.');
  if predmet='R��KA' then say(192,9,'DR�� PEVNE.');
  if predmet='PAPIER' then say(192,9,'SILA.');
  if predmet='TOALETN� PAPIER' then begin loadspr('data2\zachodet');zobraz;end;
 end else
 if izba=7 then
 begin
  if predmet='TREZOR' then say(192,9,'VE� NIE JE ZAMKNUT�.');
  if predmet='OVL�DA�' then say(192,9,'SK�S ZATO�I�.');
  if predmet='PENIAZE' then say(192,9,'J��J. CEL� KOPA PE�AZ�. JEDNA. DVE. ...');
  if predmet='OKNO' then say(192,9,'F�KA STUDEN� ZIMN� VIETOR.');
  if predmet='BALK�NOV� DVERE' then say(192,9,'ZAMKNUT�.');
  if predmet='OBRAZ' then
  begin loadspr('data2\trezor');zobraz;end;
  if predmet='LUSTER' then say(192,9,'NESVIETI.');
  if predmet='DVERE`' then say(192,9,'NIKAM NEJDEM.');
  if predmet='STOL�K' then say(192,9,'U� ZAS ?');
  if predmet='�ASOPIS' then say(192,9,'NIE JE TO RIKI ? NIE.');
  if predmet='POPOLN�K' then say(192,9,'JE �PLNE PR�ZDNY.');
  if predmet='F�A�A' then say(192,9,'U� JE DOPIT�.');
  if predmet='POH�R' then say(192,9,'JE PR�ZDNY.');
  if predmet='SEDA�KA' then say(192,9,'NEM�M �AS.');
  if predmet='V�CHOD`' then say(192,9,'P��I SA MI TU.');
 end else
 if izba=8 then
 begin
  if predmet='OKNO' then say(192,9,'OPAD�VAJ� LISTY ZO STROMOV.');
  if predmet='LAVICA' then say(192,9,'NEPOTREBUJEM.');
  if predmet='ST~L' then say(192,9,'JE TO O NI�OM.');
  if predmet='KACHLI�KY' then say(192,9,'TAK� �TVORCE NAUKLADAN� VED�A SEBA.');
  if predmet='VODOVOD' then say(192,9,'VEDIE VODU.');
  if predmet='�UPL�K' then begin
   if predmal[10] then begin loadspr('data2\kuchdet1');zobraz;end;
   if not predmal[10] then begin loadspr('data2\kuchdet');zobraz;end;
  end;
  if predmet='PR�BOR' then say(192,9,'TO SA NA �O POU��VA ?');
  if predmet='V�VRTKA' then say(192,9,'TO�� SA.');
  if predmet='SKRINKA' then say(192,9,'�O S �OU.');
  if predmet='POLI�KA' then say(192,9,'NEM�M SI �O ODLO�I�.');
  if predmet='V�CHOD`' then say(192,9,'U� ZAS ?');
 end else
 if izba=9 then
 begin
  if predmet='DVERE`' then say(192,9,'NIKAM NEJDEM.');
  if predmet='DVERE`' then say(192,9,'NIKAM NEJDEM.');
  if predmet='DVERE`' then say(192,9,'NIKAM NEJDEM.');
  if predmet='DVERE`' then say(192,9,'NIKAM NEJDEM.');
  if predmet='DVERE`' then say(192,9,'NIKAM NEJDEM.');
  if predmet='PLYNOV� MERA�' then
   begin if predmal[24] then begin loadspr('data2\prizcho4');zobraz;end else
   begin loadspr('data2\prizcho1');zobraz;end;end;
  if predmet='SKRINKA' then say(192,9,'JE CEL� DREVENN�.');
  if predmet='DISPLAY' then say(192,9,'UKAZUJE �IERNU FARBU.');
  if predmet='HANDRA' then say(192,9,'F��J SMRD�.');
  if predmet='HADICA' then say(192,9,'JE AK�SI K�UKAT�.');
  if predmet='R�RA' then say(192,9,'ASI M� �LTA�KU.');
  if predmet='HORE`' then say(192,9,'DOLE, DOLE.');
  if predmet='DOLE`' then say(192,9,'HORE, HORE.');
 end else
 if izba=10 then
 begin
  if predmet='SPLACHOVA�' then say(192,9,'E�TE NIEJE PLN� MISA.');
  if predmet='VODOVOD' then say(192,9,'U� HO DR��M.');
  if predmet='Z�CHODOV� MISA' then say(192,9,'PLN� DO TROCH �TVRT�N.');
  if predmet='UM�VADLO' then say(192,9,'NIE ! RUKY SI NEUMYJEM !');
  if predmet='N�DR�' then say(192,9,'JE TAM �IST� VODA. ASPO� D�FAM.');
  if predmet='R�RA' then say(192,9,'NECHCEM ANI VEDIE� �O JE VN�TRI.');
  if predmet='DVERE`' then say(192,9,'E�TE CHV��U.');
  if predmet='DR�IAK' then say(192,9,'DR�� PEVNE.');
  if predmet='TOALETN� PAPIER' then say(192,9,'TAK� �PINAV� ? BO�E.');
  if predmet='HANDRA' then say(192,9,'NEVIZER� BY� VE�MI �IST�.');
 end else
 if izba=11 then
 begin
  if predmet='N~�' then say(192,9,'�UU. POREZALA SOM SA.');
  if predmet='SKRINKA' then say(192,9,'JE PR�ZNDA.');
  if predmet='DRES' then say(192,9,'NEJAK� JE MOKR�.');
  if predmet='UM�VADLO' then say(192,9,'NIE ! RUKY SI NEUMYJEM !');
  if predmet='VODOVOD' then say(192,9,'TE�IE V �OM VODA.');
  if predmet='OKNO' then say(192,9,'U� JE ZNOVA JAR ?');
  if predmet='SKRI�A' then say(192,9,'TIE� PR�ZDNA.');
  if predmet='STOL�EK' then say(192,9,'NOT ENOUGH TIME.');
  if predmet='DVERE`' then say(192,9,'E�TE CHV��U.');
  if predmet='DVERE`' then say(192,9,'E�TE CHV��U.');
  if predmet='STOLI�KA' then say(192,9,'JE �ERSTVO NALAKOVAN�.');
 end else
 if izba=12 then
 begin
  if predmet='OKNO' then say(192,9,'SILA. SNE��. YES. SNE����.');
  if predmet='V�ZA' then say(192,9,'A KDE S� KVETY ?.');
  if predmet='ST~L' then say(192,9,'JE NA �OM POLO�EN� V�ZA.');
  if predmet='OBR�SOK' then say(192,9,'BEREM. DAVAJ. BEREM.');
  if predmet='STOLI�KA' then say(192,9,'MHHHH. DREVENN�.');
  if predmet='DVERE`' then say(192,9,'TIE� BY MOHLI BY� INAK�IE.');
  if predmet='V�CHOD' then say(192,9,'ANI CHV��U NE�AKAJ A CHO�.');
 end else
 if izba=13 then
 begin
  if predmet='ST~L' then say(192,9,'ZASE ST~L. TO SI E�TE NEVIDEL ST~L ?');
  if predmet='MISKA' then say(192,9,'PEKNE VYTIE�OVAN�.');
  if predmet='TELEF�N' then say(192,9,'MAL� EUROTEL�K.');
  if predmet='KRESLO' then say(192,9,'HOJDI, HOJDI. TO NIE JE HOJDACIE ?');
  if predmet='LAMPA' then say(192,9,'NIE JE TAM �IAROVKA.');
  if predmet='DVERE`' then say(192,9,'V�AK SI CHO�.');
  if predmet='V�CHOD`' then say(192,9,'OPAK V�CHODU JE Z�CHOD.');
 end else
 if izba=14 then
 begin
  if predmet='ML�KA' then say(192,9,'�IST� VODA. SRANDA.');
  if predmet='KON�TRUKCIA' then say(192,9,'JE RIADNE PEVN�.');
  if predmet='SCHODY' then say(192,9,'NEMAJ� ZABRADLIE !');
  if predmet='HORE`' then say(192,9,'DIERA V STROPE ?');
  if predmet='REBR�K' then say(192,9,'POZOR ABY NESPADOL.');
  if predmet='VED�A`' then say(192,9,'E�TE SEKUNDI�KU.');
  if predmet='VED�A`' then say(192,9,'E�TE CHV��U.');
 end else
 if izba=15 then
 begin
  if predmet='OKNO' then say(192,9,'BO�E TO JE ALE DUSNO.');
  if predmet='VEDRO' then say(192,9,'JE PR�ZDNE.');
  if predmet='REBR�K' then say(192,9,'JE TROCHU �UDN�.');
  if predmet='HADICA' then say(192,9,'POZOR ! HAD ! UTEKAJ PRE� ! TO JE HADICA ? AHA.');
  if predmet='VYP�NA�' then say(192,9,'�IK.');
  if predmet='VED�A`' then say(192,9,'TAM RAD�EJ NECHO� !');
 end else
 if izba=16 then
 begin
  if predmet='VYP�NA�' then say(192,9,'�IK.');
  if predmet='KON�TRUKCIA' then say(192,9,'DR�� PEVNE.');
  if predmet='KRABICA' then say(192,9,'JE PR�LI� VYSOKO.');
  if predmet='ZAV�RANINA' then say(192,9,'U� JE POKAZEN�.');
  if predmet='BED�A' then say(192,9,'JE CEL� ZAOLEJOVAN�.');
  if predmet='HARABURDY' then say(192,9,'J�J. OLEJNI�KA, KOMBINA�KY A K���.');
  if predmet='S�NKY' then say(192,9,'CHO� O POSCHODIE VY��IE DO JED�LNE A POZRI Z OKNA.');
  if predmet='PNEUMATIKA' then say(192,9,'JE PRASKNUT�.');
  if predmet='VIDLY' then say(192,9,'NAPICHNEM SA NA NE ? NIE.');
  if predmet='MOTYKA' then say(192,9,'BUDEM IM TU R��OVA� ZAHRADU ! NO UR�ITE !');
  if predmet='OKNO' then say(192,9,'PANE BO�E. U� PADAJ� LISTY.');
  if predmet='ML�KA' then say(192,9,'�IST� VODA.');
  if predmet='VED�A`' then say(192,9,'NECHO� TAM !');
  if predmet='SCHODY' then say(192,9,'S� NEJAK� K�UKAT�.');
 end else
 if izba=17 then
 begin
  if predmet='POLI�KA' then say(192,9,'JE RIADNE ZAPR��EN�.');
  if predmet='SKRINKA NA OBUV' then say(192,9,'SRANDA. JE PR�ZDNA. ONI S� V�ETCI OBUT�.');
  if predmet='GARN��A' then say(192,9,'ABY NESPADLA.');
  if predmet='Z�VES' then say(192,9,'JE CEL� �PINAV�.');
  if predmet='OKNO' then say(192,9,'U� SA SPR�ZDNINIEVA.');
  if predmet='DVERE`' then say(192,9,'TO S� DVERE VON.');
  if predmet='V�CHOD`' then say(192,9,'U� IDEM.');
  if predmet='K�U�KA' then say(192,9,'JE CEL� KOVOV�.');
 end else
 end;
 if cast=3 then
 begin
 if izba=1 then
 begin
  if predmet='OVL�DA�' then say(192,9,'D� SA S N�M ZAVOLA� V��AH.');
  if predmet='TLA��TKO' then say(192,9,'V�AK HO STLA� !');
  if predmet='V��AH`' then say(192,9,'M� PLECHOV� DVERE.');
  if predmet='VR�TNICA' then say(192,9,'SED� V NEJ VR�TNIK.');
 end else
 if izba=2 then
 begin
  if predmet='DVERE`' then say(192,9,'S�ZAM OTVOR SA.');
  if predmet='DVERE`' then say(192,9,'U� SA TE��M.');
  if predmet='K�U�KA' then say(192,9,'PODALA SOM JEJ RUKU.');
 end;
 end;
end;