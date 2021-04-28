create table MULTIMEDIA
(
    ID        NUMBER generated as identity,
    CIM       VARCHAR2(100) not null,
    AR        NUMBER        not null,
    ELERESIUT VARCHAR2(200)
)
/

create unique index MULTIMEDIA_ID_UINDEX
    on MULTIMEDIA (ID)
/

alter table MULTIMEDIA
    add constraint MULTIMEDIA_PK
        primary key (ID)
/

INSERT INTO VOROS.MULTIMEDIA (CIM, AR, ELERESIUT) VALUES ( 'Evermore', 5000, 'https://m.blog.hu/re/recorder/image//taylor_evermore.jpg');
INSERT INTO VOROS.MULTIMEDIA (CIM, AR, ELERESIUT) VALUES ( 'Positions', 12000, 'https://upload.wikimedia.org/wikipedia/en/a/a0/Ariana_Grande_-_Positions.png');
INSERT INTO VOROS.MULTIMEDIA (CIM, AR, ELERESIUT) VALUES ('Revelaci�n ', 5000, 'https://upload.wikimedia.org/wikipedia/en/3/34/Selena_Gomez_-_Revelaci%C3%B3n.png');
INSERT INTO VOROS.MULTIMEDIA (CIM, AR, ELERESIUT) VALUES ('The Highlights', 5000, 'https://upload.wikimedia.org/wikipedia/hu/1/12/The_Weeknd_-_The_Highlights_%28album_cover%29.png');
INSERT INTO VOROS.MULTIMEDIA (CIM, AR, ELERESIUT) VALUES ('Az AranyPinty', 1500, 'https://media.port.hu/images/001/162/350x510/916.jpg');
INSERT INTO VOROS.MULTIMEDIA (CIM, AR, ELERESIUT) VALUES ('Tenet', 2800, 'https://media.port.hu/images/001/244/350x510/378.jpg');
INSERT INTO VOROS.MULTIMEDIA (CIM, AR, ELERESIUT) VALUES ('Judy', 3000, 'https://media.port.hu/images/001/184/350x510/480.jpg');
INSERT INTO VOROS.MULTIMEDIA (CIM, AR, ELERESIUT) VALUES ('Sonic, a s�ndiszn�', 2800, 'https://media.port.hu/images/001/190/350x510/896.jpg');
INSERT INTO VOROS.MULTIMEDIA (CIM, AR, ELERESIUT) VALUES ('D�lid�', 1800, 'https://media.port.hu/images/000/139/415x310/454.jpg');
INSERT INTO VOROS.MULTIMEDIA (CIM, AR, ELERESIUT) VALUES ('Dolittle', 4700, 'https://media.port.hu/images/001/184/350x510/522.jpg');

 create table MUFAJ
(
    ID  NUMBER generated as identity,
    NEV VARCHAR2(100) not null
)
/

create unique index MUFAJ_ID_UINDEX
    on MUFAJ (ID)
/

alter table MUFAJ
    add constraint MUFAJ_PK
        primary key (ID)
/

INSERT INTO VOROS.MUFAJ ( NEV) VALUES ( 'Erotika');
INSERT INTO VOROS.MUFAJ ( NEV) VALUES ( 'Dr�ma');
INSERT INTO VOROS.MUFAJ ( NEV) VALUES ( 'Krimi');
INSERT INTO VOROS.MUFAJ ( NEV) VALUES ( 'V�gj�t�k');
INSERT INTO VOROS.MUFAJ ( NEV) VALUES ( 'Jazz');
INSERT INTO VOROS.MUFAJ ( NEV) VALUES ( 'Pop');
INSERT INTO VOROS.MUFAJ ( NEV) VALUES ( 'Rap');
INSERT INTO VOROS.MUFAJ ( NEV) VALUES ( 'Misztikus');
INSERT INTO VOROS.MUFAJ ( NEV) VALUES ( 'Akci�');
INSERT INTO VOROS.MUFAJ ( NEV) VALUES ('Csal�di');
INSERT INTO VOROS.MUFAJ ( NEV) VALUES ('Western');
INSERT INTO VOROS.MUFAJ ( NEV) VALUES ( 'Rajzfilm');
INSERT INTO VOROS.MUFAJ ( NEV) VALUES ( 'K�nny�zene');
INSERT INTO VOROS.MUFAJ ( NEV) VALUES ( 'Komolyzene');
INSERT INTO VOROS.MUFAJ ( NEV) VALUES ( 'N�pzene');
INSERT INTO VOROS.MUFAJ (NEV) VALUES ( 'Spiritu�lis zene');
INSERT INTO VOROS.MUFAJ ( NEV) VALUES ( 'Fantasy');
INSERT INTO VOROS.MUFAJ (NEV) VALUES ( 'Humor-kabar�');
INSERT INTO VOROS.MUFAJ ( NEV) VALUES ( 'Romantkius');
INSERT INTO VOROS.MUFAJ (NEV) VALUES ( 'T�rt�nelmi');
INSERT INTO VOROS.MUFAJ ( NEV) VALUES ('H�bor�s');
INSERT INTO VOROS.MUFAJ (NEV) VALUES ('M�v�sz');
INSERT INTO VOROS.MUFAJ ( NEV) VALUES ('Horror');

create table BOLT
(
    ID            NUMBER generated as identity,
    NEV           VARCHAR2(100) not null,
    ELHELYEZKEDES VARCHAR2(100),
    NYITVATARTAS  VARCHAR2(200)
)
/

create unique index BOLT_ID_UINDEX
    on BOLT (ID)
/

alter table BOLT
    add constraint BOLT_PK
        primary key (ID)
/

INSERT INTO VOROS.BOLT ( NEV, ELHELYEZKEDES, NYITVATARTAS) VALUES ( 'Unicorn Szeged', 'Szeged', 'H-P: 8-16');
INSERT INTO VOROS.BOLT ( NEV, ELHELYEZKEDES, NYITVATARTAS) VALUES ( 'Unicorn Budapest', 'Budapest', 'H-P:8-16');
INSERT INTO VOROS.BOLT ( NEV, ELHELYEZKEDES, NYITVATARTAS) VALUES ( 'Unicorn Zalaegerszeg', 'Zalaegerszeg', 'H-P: 8-16');
INSERT INTO VOROS.BOLT ( NEV, ELHELYEZKEDES, NYITVATARTAS) VALUES ( 'Unicorn Kisalf�ld', 'Gy�r', 'H-P: 8-16');
INSERT INTO VOROS.BOLT ( NEV, ELHELYEZKEDES, NYITVATARTAS) VALUES ( 'Unicorn Alf�ld', 'Kecskem�t', 'H-V: 8-18');
INSERT INTO VOROS.BOLT ( NEV, ELHELYEZKEDES, NYITVATARTAS) VALUES ( 'Unicorn Baranya', 'P�cs', 'H-P: 8-17');
INSERT INTO VOROS.BOLT ( NEV, ELHELYEZKEDES, NYITVATARTAS) VALUES ( 'Unicorn K�rp�talja', 'Szombathely', 'H-P: 8-16');
INSERT INTO VOROS.BOLT ( NEV, ELHELYEZKEDES, NYITVATARTAS) VALUES ( 'Fej�r Unicorn', 'Sz�kesfeh�rv�r', 'H-P: 8-16');
INSERT INTO VOROS.BOLT ( NEV, ELHELYEZKEDES, NYITVATARTAS) VALUES ( 'Unicorn Er�m�', 'Paks', 'H-P: 8-16');
INSERT INTO VOROS.BOLT ( NEV, ELHELYEZKEDES, NYITVATARTAS) VALUES ( 'Heves Unicorn', 'Eger', null);

create table KONYV
(
    ID        NUMBER generated as identity,
    SZERZO    VARCHAR2(100),
    CIM       VARCHAR2(100) not null,
    AR        NUMBER        not null,
    OLDALSZAM NUMBER,
    KIADO     VARCHAR2(100),
    ELERESIUT VARCHAR2(200),
    KIADASIEV NUMBER,
    TIPUS     VARCHAR2(100),
    LEIRAS    VARCHAR2(1000)
)
/

create unique index KONYV_ID_UINDEX
    on KONYV (ID)
/

alter table KONYV
    add constraint KONYV_PK
        primary key (ID)
/

INSERT INTO VOROS.KONYV ( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES ( 'Delilah S. Dawson', 'P�kember: �j kezdet', 940, 80, 'Vad Vir�gok Kiad� Kft.', null, 2020, 'Magazin', 'Peter Parker felvette m�r a versenyt veszedelmes gonosztev�kkel �s legend�s h�s�kkel is, de lehet, hogy a gimis �let kifog rajta. Szerencs�re nincs veszve a rem�ny, sikerrel veheti az akad�lyokat, ha beseg�tenek �j bar�tai: Miles Morales �s Gwen Stacy. Az �j kezdet t�k�letes alkalom arra, hogy a fiatalabb olvas�k is belegabalyodjanak P�kember �s hihetetlen bar�tai vadonat�j kalandjainak sz�vev�nyes h�l�j�ba Delilah S. Dawson �r� �s Fico Ossio rajzol� tolm�csol�s�ban.');
INSERT INTO VOROS.KONYV ( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES ( 'Robbie Thompson', 'Star Wars: A c�lpont: Vader', 5025, 136, 'SZUKITS K�NYVKIAD� �S K�NYVKER', null, 2020, 'Magazin', 'A Sith s�t�t nagyura egy titokzatos b�n�z� szindik�tus ut�n nyomoz, amely a Birodalom hat�r�n t�l m�k�dik. Arr�l azonban sejtelme sincs, hogy ek�zben � maga is c�lpontt� v�lik: a b�nsz�vetkezet a galaxis legveszedelmesebb fejvad�szait b�relte fel, hogy egyszer s mindenkorra v�gezzenek vele! A bukott birodalmi tiszt, Beilert Valance �ltal vezetett orgyilkosok csapat�t semmi sem �ll�thatja meg abban, hogy begy�jts�k �let�k legnagyobb tr�fe�j�t. Valance �s Dengar a t�k�letes fegyvert keresik, hogy v�gezzenek a Sith nagy�rral, �s sz�ks�g�k is lesz r�, amikor Vader sarokba szor�tja �ket! De mi lesz, ha az �ld�z�tt �s az �ld�z�k is felfedik a Rejtett K�z n�ven ismert szindik�tus s�t�t titkait?');
INSERT INTO VOROS.KONYV ( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES ( 'Karinthy Frigyes', 'Tan�r �r k�rem', 3200, null, null, null, 2021, 'humoros', 'A Tan�r �r k�rem Karinthy Frigyes (1887-1938) egyik legn�pszer�bb m�ve, amelyben humoros �s sz�rakoztat� st�lusban mes�l gyermekkor�r�l �s di�k�veir�l. Ezen a kiadv�nyon M�csai P�l, a Kossuth- �s J�szai Mari-d�jas sz�n�sz el�ad�s�ban hallhatjuk.');
INSERT INTO VOROS.KONYV ( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES ( 'Sir ARTHUR CONAN DOYLE', 'Sherlock Holmes kalandjai I.', 4525, 360, 'TITIS TAN�CSAD� KFT.', null, 2020, 'crimi', 'A "Sherlock Holmes kalandjai" Doyle els� novell�sk�tete, mely a k�t reg�ny, "A brixtoni rejt�ly" �s "A n�gyek jele" ut�n jelent meg, 1892-ben. Dr. Watson olyan rejt�lyeket v�logatott itt csokorba, melyek megold�sa �kesen bizony�tja Holmes rendk�v�li k�vetkeztet� k�pess�g�t. Ezek a t�rt�netek tett�k a nagy detekt�vet igaz�n k�zismertt�. Hol rejtette el a h�lgy a Csehorsz�g kir�lya sz�m�ra oly kompromitt�l� f�nyk�pet? Mi�rt sz�nt meg a R�t Liga? Hov� t�nt a v�leg�ny a templomba vonul�s el�tt? Lehet-e hinni a meggyilkolt f�rfi fi�nak? Mit jelent az �t narancsmag? �s hov� lett a p�ld�s f�rj �s csal�dapa, miut�n kiintett feles�g�nek egy k�tes h�r� kocsma emeleti ablak�b�l? Nem csak remek�l sz�rakozik, de ezekre a k�rd�sekre is v�laszt kap, aki meghallgatja Fekete Ern� nagyszer� el�ad�s�ban az els� 6 kalandot.');
INSERT INTO VOROS.KONYV ( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES ( 'Bartha G�bor', 'Matematika feladatgy�jtem�ny 1', 1360, 450, 'Mozaik', null, 2012, 'Tank�nyv', 'Matematikai feladatgy�jtem�ny.');
INSERT INTO VOROS.KONYV ( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES ( 'dr. Ger�cs L�szl�', 'Matematika 11', 1000, 200, 'Mozaik', null, 2012, 'Tank�nyv', 'Matematikai oktat�k�ny.');
INSERT INTO VOROS.KONYV ( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES ( 'Jay Asher', 'Tizenh�rom okom volt...', 5000, 259, 'K�nyvmolyk�pz� Kiad� Kft.', null, 2017, 'Sz�pirodalom', 'Mikor Clay Jensen haza�r az iskol�b�l, egy k�l�n�s csomagot tal�l a verand�n, amit neki c�meztek. A csomagban n�h�ny kazett�ra bukkan, amiket Hannah Baker - oszt�lyt�rsa �s titkos szerelme - k�sz�tett, aki k�t h�ttel kor�bban �ngyilkoss�got k�vetett el. Hannah elmondja, hogy tizenh�rom oka volt annak, hogy �gy d�nt�tt, v�get vet az �let�nek. Clay az egyik. Ha meghallgatja a kazett�kat, megtudja, mi�rt. Clay eg�sz �jszaka ide-oda bolyong a v�rosban Hannah szavait hallgatva. Tan�ja lesz a l�ny f�jdalm�nak, �s megtudja az igazs�got saj�t mag�r�l - az igazs�got, amivel soha nem akart szemben�zni.');
INSERT INTO VOROS.KONYV ( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES ( 'Matthew McConaughey', 'Z�ldl�mpa', 4242, 297, '21. Sz�zad Kiad�', null, 2020, 'Sz�pirodalom', 'Hogyan stresszeljek kevesebbet. Hogyan �rezzem j�l magam. Hogyan b�ntsam kev�sb� az embereket. Hogyan b�ntsanak engem kev�sb�. Hogyan legyek j� ember. Ha az ember tudja, hogyan�s mikor boldoguljon az �let kih�v�saival � hogyan viszonyuljon relat�van az elker�lhetetlenhez �, akkor �lvezheti a sikernek azt az �llapot�t, amit �gy nevezek, �elkapni a z�ldl�mp�t�. Bel�t�saim �s megl�t�saim, r��rz�seim �s meg�rz�seim, lazas�gaim �s cikis�geim. Brut�lis finoms�gok, igazs�gok �s sz�ps�gek. Meg�sz�sok, lebuk�sok �s elhasal�sok, ahogy az �let akad�lyp�ly�j�n pr�b�ltam szlalomozni. Rem�nyeim szerint ez egy j� �z� orvoss�g, k�t aszpirin a betegszoba helyett, �rhaj� a Marsra, amihez nem kell pil�taenged�ly, templomi �lm�ny, amihez nem kell �jj�sz�letni, k�nnyes nevet�s. Egy szerelmeslev�l. Az �lethez. Ez a k�nyv a z�ldl�mp�kr�l sz�l, �s arr�l, hogy a s�rga �s a piros is el�bb-ut�bb z�ld lesz.');
INSERT INTO VOROS.KONYV ( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES ( 'Doron Rabinovici', 'A f�ld�nk�v�liek', 3324, 256, 'MAGVET� KFT.', null, 2021, 'Irodalom', 'Lehet, hogy egy olyan t�rsadalomban, amely k�pes a v�g�h�dra k�ldeni embereket, az igaz ember helye a v�g�h�don van? A r�di�ban bemondj�k a szenz�ci�s h�rt: az idegenek meg�rkeztek a F�ldre. Az embereken �rr� lesz az izgatotts�g, az euf�ria �s az ismeretlent�l val� f�lelem, ami s�lyos zavarg�sokhoz vezet.');
INSERT INTO VOROS.KONYV ( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES ( 'Andrzej Sapkowski', 'Vaj�k I. - The Witcher - Az utols� k�v�ns�g', 3790, 352, 'GABO K�NYVKIAD� �S KERESK.KFT.', null, 2021, 'Szorakoztato', 'Geralt a vaj�kok k�z� tartozik: m�gikus k�pess�geinek k�sz�nhet�en, amelyeket hosszan tart� kik�pz�se �s egy rejt�lyes elix�r csak m�g tov�bb csiszolt, zseni�lis �s k�ny�rtelen harcos h�r�ben �ll. Ugyanakkor nem h�tk�znapi gyilkos: c�lpontjai v�rszomjas sz�rnyetegek �s aljas fenevadak, amelyek minden�tt hatalmas puszt�t�st v�geznek, �s megt�madj�k az �rtatlanokat.
Hi�ba t�nik azonban valami gonosznak vagy j�nak, nem biztos, hogy val�ban az - �s minden mes�ben van egy csipetnyi igazs�g.');
INSERT INTO VOROS.KONYV ( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES ( 'Amanda Yee', 'J�bar�tok - A hivatalos szak�csk�nyv', 5192, 201, '21. Sz�zad Kiad�', null, 2021, 'Gasztron�mia', 'Trombit�ld �ssze a j�bar�tokat, �s �dv�z�lj�tek egy�tt ezt a t�bb mint 100 receptet ("Na, mi a helyzet?"), amelyet h�n szeretett t�v�m�sorotok ihletett. Ak�r minden h�jjal megkent chef vagy, mint Monica Geller, ak�r most ind�tasz catering c�get, mint Phoebe Buffay, vagy r�gi v�g�s� hasp�k vagy, mint Joey Tribbiani, a J�bar�tok - A hivatalos szak�csk�nyv egy sor k�l�nb�z� receptet k�n�l a k�l�nb�z� szakmai szinten lev� chefeknek. El��telek, f�fog�sok, italok �s desszertek - minden egyes fejezet olyan ikonikus csemeg�ket tartogat, mint Monica H�labar�t Lakom�ja, Rachel Hagyom�nyos Angol Rakott Kr�mdesszertje, a S�lt Krumpli - csakis Joeynak, a Chandler-f�le "Tej, amit elr�gsz", Phoebe nagyij�nak csokitall�rja �s az elmaradhatatlan Hidrat�l� Szendvics.');
INSERT INTO VOROS.KONYV ( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES ( 'Dagmar Von Cramm', 'Babakonyha - Csecsem�kort�l kisgyerekkorig', 4360, 192, 'Central M�diacsoport Zrt.', null, 2021, 'Gasztron�mia', '�nycsikland� receptek kicsiknek �s nagyoknak. Finom k�s�k �s k�zzel ehet� �telek a legkisebbeknek, egyszer�en elk�sz�thet� baba-mama receptek, �s sok m�s ennival�, amit a csal�d minden tagja sz�vesen fogyaszt.
Naprak�sz ismeretek a t�ma egyik legnagyobb szak�rt�j�t�l, Dagmar von Crammt�l. Szoptat�si tippek, hozz�t�pl�l�s l�p�sr�l l�p�sre, j�l kamatoztathat� tud�s a higi�nia, a konyhai ismeretek, az �telintolerancia, az allergia, a cukor �s a vega t�pl�lkoz�s t�mak�reib�l.
Amit teh�t ez a k�nyv ny�jt: v�ltozatos, kiegyens�lyozott t�pl�lkoz�st biztos�t� receptek a kisgyermek egyes �letszakaszaihoz igaz�tva, valamint hasznos v�laszok a kicsi fejl�d�s�t �rint� k�rd�sekre.');
INSERT INTO VOROS.KONYV ( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES ( 'Dr. Esche-Belke Susanne - Dr. Kirschner-Brouns Suzann', 'N�k a v�ltoz�kor k�sz�b�n - A hormon�lis egyens�ly titkai', 3514, 320, 'Partvonal K�nyvkiad� Kft', null, 2021, '�letm�d', 'A v�ltoz�kor nem a vil�g v�ge, hanem �j lehet�s�gek kezdete! Depresszi�, �z�leti f�jdalom, migr�n, hangulatingadoz�s, szapora sz�vver�s, h�hull�m, s�lygyarapod�s - ezek a k�nyelmetlen �s sokszor s�lyos t�netek gyakran jelentkeznek a negyven feletti n�kn�l. Az orvostudom�ny v�lasza egy�rtelm�: a v�ltoz�kor el�fut�r�nak tekinthet� jelens�gek hormon�lis eredet�ek, �s m�r a negyvenes �veik elej�n pokoll� tehetik a n�k h�tk�znapjait. Sajnos nem mindig kezelik megfelel�en a probl�m�t: nem ismerik fel az okokat, vagy elv�rj�k a n�kt�l, hogy "�ljenek egy�tt" a hormonv�ltoz�ssal.');
INSERT INTO VOROS.KONYV ( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES ( 'Szitnyain� Gottlieb �va, Maros Judit', 'Kon-Takt 2 Arbeitsbuch', 910, 120, 'Mozaik', null, 2012, 'Tank�nyv', 'N�met nyelv� munkaf�zet');
INSERT INTO VOROS.KONYV ( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES ( 'Pierre Rabhi', 'P�nzt akarunk vagy �letet?', 1900, 190, 'L'' HARMATTAN KFT.', null, 2014, 'Antik', 'Pierre Rabhi a kort�rs �kol�giai gondolkod�s egyik legnagyszer�bb alakja, aki alap�tv�nyai r�v�n h�rom kontinensen van jelen, �s t�zezrek �let�be hozott v�ltoz�st Afrik�t�l Indi�ig. Mint Yehudi Menuhin �rja r�la: Ez az egyszer� �letszents�g�, tiszt�n �s vil�gosan gondolkod� ember, akinek k�lt�i sz�ps�g� nyelvezete izz� szenved�lyr�l tan�skodik, saj�t ver�t�k�vel term�keny�tette meg a medd� f�ldeket. Ez a k�tet filoz�fiai �s b�lcseleti �r�sait gy�jti egybe.');
INSERT INTO VOROS.KONYV ( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES ( 'Erik Burnham', 'P�kember: P�kvad�szat - Marvel akci�h�s�k', 1192, 72, 'Vad Vir�gok Kiad� Kft.', null, 2021, 'Magazin', 'Peter Parker, Miles Morales �s Gwen Stacy egy csapatt� �llt �ssze, �s ifjonti kalandoz�saiknak semmi sem szabhat hat�rt!
Kiv�ve persze a h�zi feladatok t�mkelege, a szakmai gyakorlat
a H�rharson�ban, valamint egy �j, vesz�lyes ellenf�l, aki kiszemelte �ket mag�nak: Kraven, a vad�sz! H�seink egym�s ut�n ker�lnek a h�l�j�ba, hogy kezdet�t vehesse a nagy �sszecsap�s. Lehet, hogy ezzel v�get �r Peter, Miles �s Gwen p�kos p�lyafut�sa?
Erik Burnham �r� �s Christoher Jones rajzol� humorban �s izgalomban b�velked� t�rt�net�b�l kider�l.');
INSERT INTO VOROS.KONYV ( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES ( 'Phil Noto - Greg Pak', 'Star Wars: A l�zad�k v�gzete', 4232, 128, 'SZUKITS K�NYVKIAD� �S K�NYVKER', null, 2021, 'Magazin', 'L�zad�k �s zsiv�nyok n�pes�tik be a k�preg�ny oldalait, melyeken t�rt�net�nk lassan a v�g�hez k�zeledik. A Felkel�k Sz�vets�g�nek h�sei mer�sz k�ldet�sekre indultak, hogy zavart keltsenek birodalomszerte. De ki az a Dar Champion, �s mennyire b�zhat meg benne Leia hercegn�, amikor Han Solo �lete a t�t? Milyen megr�z� �lm�nyben lesz r�sze Luke Skywalkernek, amikor Warba v�g�l felfedi val�di kil�t�t? K�pes lesz C-3PO meghozni a v�gs� �ldozatot, amikor lehetetlen d�nt�s el� ker�l? Csubakka vajon �llni fogja a sarat a Darth Vaderrel szembeni �d�z k�zelharc sor�n?');
INSERT INTO VOROS.KONYV ( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES ( 'Sean Murphy', 'Batman - A Feh�r Lovag �tka', 6796, 272, 'FUMAX KFT', null, 2021, 'Magazin', 'Joker sz�vetkezik Azraellel, hogy seg�tsen neki leleplezni a Wayne csal�d hagyat�k�nak d�bbenetes titk�t - �s nem mell�kesen t�nkretenni Gothamet. Batman a v�ros �s vesz�lyben l�v� szerettei seg�ts�g�re siet, �m miut�n �seinek titka napvil�gra ker�l, k�nytelen megk�rd�jelezni mindent, amit eddig �nmag�r�l �s a Gotham �let�ben bet�lt�tt szerep�r�l hitt.
');
INSERT INTO VOROS.KONYV ( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES ( 'Szitnyain� Gottlieb �va, Maros Judit', 'Kon-Takt 2 Lehrbuch', 1460, 112, 'Mozaik', null, 2012, 'Tank�nyv', 'N�met nyelv� tank�nyv');
INSERT INTO VOROS.KONYV ( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES ( ' Antaln� dr. Szab� �gnes, dr. Ra�tz Judit', 'Magyar nyelv �s kommunik�ci�. Tank�nyv a 11. �vfolyam sz�m�ra', 790, 68, 'Mozaik', null, 2012, 'Tank�nyv', 'Magyar nyelvtank�nyv');
INSERT INTO VOROS.KONYV ( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES ( 'David Attenborough ', 'Egy ifj� term�szettud�s t�rt�netei II. - A s�rk�ny nyom�ban - Hangosk�nyv', 3230, 290, 'Kossuth Kiad� / Mojzer Kiad�', null, 2021, 'Sz�pirodalom', 'Sir David Attenborough t�voli t�jakr�l, �llatokr�l �s kult�r�kr�l sz�l� lebilincsel� t�rt�netein m�r t�bb gener�ci�nyi lelkes term�szetkedvel� �s term�szetv�d� n�tt fel. Hangosk�nyv�nk egy indon�ziai exped�ci� kalandjait mutatja be. Most sem alakul minden a terv szerint, ad�dhattak olyan helyzetek, hogy a csapatnak a sziget egyetlen kamionos�t kellett megtal�lniuk, a k�rny�k egyetlen dzsipj�t k�lcs�nk�rni�k, vagy �ppen heteket v�rni egy-egy haj�s vagy rep�l�s sz�ll�t�sra. Ezeket a helyzeteket �s a bel�l�k ad�d� bosszant�an komikus szitu�ci�kat a szerz� j� �rz�kkel, humorosan mutatja be, �rz�keltetve vel�nk, hogy az�rt a tr�pusokon se kolb�szb�l van a ker�t�s.');
INSERT INTO VOROS.KONYV ( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES ( 'Sir ARTHUR CONAN DOYLE', 'A s�t�n kuty�ja - Hangosk�nyv', 3106, null, 'HUNGAROTON', null, 2021, 'Sz�pirodalom', 'A detekt�vreg�ny-irodalom klasszikus�nak, Sir Arthur Conan Doyle-nak (1859 - 1930) egyik legn�pszer�bb reg�ny�t Szacsvay L�szl� el�ad�s�ban hallhatjuk.');
INSERT INTO VOROS.KONYV ( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES ( 'Robert Louis Stevenson', 'Dr. Jekyll �s Mr. Hyde k�l�n�s esete - Hangosk�nyv', 2793, 212, 'TITIS TAN�CSAD� KFT.', null, 2020, 'Sz�pirodalom', 'Stevenson kisreg�nye a Jekyll-Hyde p�rost napjainkig az emberben lakoz� j� �s gonosz szimb�lum�v� tette. Az 1880-as �vekben jelent meg, 1920 �s 2000 k�z�tt sz�mos film k�sz�lt bel�le, majd sz�ndarabok �s musical is. Nagy hat�s�t nem csak a kiss� h�tborzongat� le�r�snak, a tudom�ny �s a transzcendens gondolkod�s �tk�ztet�s�nek, hanem annak is k�sz�nhet�, hogy az emberi l�lek m�k�d�s�t kor�t megel�z� realit�ssal elemzi. A t�rt�netben a gonosz kerekedik f�l�l, de v�g�l nem gy�zedelmeskedik, maga is elbukik. Hirtling Isv�n el�ad�sa �rz�kletesen kiemeli a f�h�s bels� v�v�d�sa �s a k�ls� szeml�l�k angolos t�vols�gtart�sa k�z�tt mindv�gig fesz�l� ellent�tet.');
INSERT INTO VOROS.KONYV ( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES ( 'Ella Maise', 'Els� pillant�s - 2019 - Alexander �s Maya 1.', 2565, 244, '�LOMGY�R KIAD�', null, 2019, 'Erotikus', 'Ez a t�rt�net egyedi �s im�dnival�! Dayreader
A nevem Maya, �s nem ugyanaz a l�ny vagyok, aki egy h�napja voltam.
�ress�get �rzek a mellkasomban. A sz�vem megszakadt a f�jdalomt�l.
Azokon a s�t�t �jszak�kon, azokban a f�jdalmas pillanatokban, amikor visszaeml�kszem, mik�nt szor�tottam sikoltva ap�m hideg, �lettelen kez�t, nehezemre esik m�g a l�legzetv�tel is, ahogy �rzem a vesztes�g s�ly�t r�m nehezedni.
De minden t�rt�netben van egy h�s is, ugye? Egy h�s, akit att�l a pillanatt�l semmibe vettem, hogy kinyitotta a sz�j�t.
A neve Alexander. � az elker�lhetetlen, akir�l soha nem gondoltam, hogy megtal�lom. Az egyetlen, akihez az �sszet�rt sz�vem h�z. A l�nye, az �rint�se, minden, amit tett, hogy elviselhet�bb� tegye a f�jdalmam, �r�kk� nyomot hagy bennem.');
INSERT INTO VOROS.KONYV ( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES ( 'Stephen King', 'Kedvencek temet�je - 2019', 5700, 587, 'EUR�PA K�NYVKIAD� KFT.', null, 2019, 'Sz�pirodalom', 'Dr. Louis Creed, a fiatal orvos kit�n� �ll�st kapott: a Maine-i Egyetem rendel�j�nek lett a vezet�je, ez�rt Chicag�b�l az idilli New England-i t�jban �ll�, mag�nyos h�zba k�lt�zik csal�dj�val feles�g�vel, Rachellel, �t�ves l�nyukkal, Ellie-vel �s m�sf�l �ves kisfiukkal, Gage-dzsel. Boldogan, a sz�p j�v� rem�ny�ben veszik birtokba �j otthonukat Az els� gondra az �t t�loldal�n, vel�k �tellenben �l� �regember, Jud h�vja f�l a figyelm�ket: a t�jat kett�szel� orsz�g�ton �jjel-nappal olajsz�ll�t� tart�lykocsik d�b�r�gnek, hal�los vesz�lynek t�ve ki a h�zi�llatokat �s az apr�s�gokat. Nem v�letlen�l van a k�zelben egy nyomaszt� l�gk�r�, �don temet� az elg�zolt h�zi�llatok sz�m�ra Az els� trauma akkor �ri Louist, amikor egy baleset �ldozat�ul esett, haldokl� fi� a rendel�ben dadog� szavakkal �va inti az �llattemet�n t�li veszedelemt�l.');


create table AJANDEK
(
    NEV       VARCHAR2(100) not null
        constraint AJANDEK_PK
            primary key,
    AR        NUMBER        not null,
    ELERESIUT VARCHAR2(200)
)
/

INSERT INTO VOROS.AJANDEK (NEV, AR, ELERESIUT) VALUES ('Unicorn-b�gre', 500, null);
INSERT INTO VOROS.AJANDEK (NEV, AR, ELERESIUT) VALUES ('Unicorn-h�tizs�k', 1000, null);
INSERT INTO VOROS.AJANDEK (NEV, AR, ELERESIUT) VALUES ('Unicorn-aj�nd�k Utalv�ny', 5000, null);
INSERT INTO VOROS.AJANDEK (NEV, AR, ELERESIUT) VALUES ('Unicorn-f�zet', 300, null);
INSERT INTO VOROS.AJANDEK (NEV, AR, ELERESIUT) VALUES ('Unicorn-ceruza', 50, null);
INSERT INTO VOROS.AJANDEK (NEV, AR, ELERESIUT) VALUES ('Unicorn-pl�ssfigura', 4000, null);
INSERT INTO VOROS.AJANDEK (NEV, AR, ELERESIUT) VALUES ('Unicorn-t�ska', 5000, null);
INSERT INTO VOROS.AJANDEK (NEV, AR, ELERESIUT) VALUES ('Unicorn-pol�', 3000, null);
INSERT INTO VOROS.AJANDEK (NEV, AR, ELERESIUT) VALUES ('Unicorn-pulcsi', 4300, null);
INSERT INTO VOROS.AJANDEK (NEV, AR, ELERESIUT) VALUES ('Unicorn-szarv', 10000, null);

create table ANTIKVARKONYV
(
    KONYV_ID NUMBER not null
        constraint ANTIKVARKONYV_KONYV_ID_FK
            references KONYV
                on delete cascade,
    KOR      NUMBER,
    ALLAPOT  VARCHAR2(100)
)
/

create unique index ANTIKVARKONYV_KONYV_ID_UINDEX
    on ANTIKVARKONYV (KONYV_ID)
/

alter table ANTIKVARKONYV
    add constraint ANTIKVARKONYV_PK
        primary key (KONYV_ID)
/

INSERT INTO VOROS.ANTIKVARKONYV (KONYV_ID, KOR, ALLAPOT) VALUES (25, 2, 'j�');
INSERT INTO VOROS.ANTIKVARKONYV (KONYV_ID, KOR, ALLAPOT) VALUES (52, 1, 'j�');
INSERT INTO VOROS.ANTIKVARKONYV (KONYV_ID, KOR, ALLAPOT) VALUES (30, 1, 'j�');
INSERT INTO VOROS.ANTIKVARKONYV (KONYV_ID, KOR, ALLAPOT) VALUES (39, 6, 'j�');
INSERT INTO VOROS.ANTIKVARKONYV (KONYV_ID, KOR, ALLAPOT) VALUES (50, 2, 'j�');

create table FILM
(
    MULTIMEDIA_ID NUMBER not null
        constraint FILM_PK
            primary key
        constraint FILM_MULTIMEDIA_ID_FK
            references MULTIMEDIA
                on delete cascade,
    EV            NUMBER,
    HOSSZ         NUMBER
)
/

INSERT INTO VOROS.FILM (MULTIMEDIA_ID, EV, HOSSZ) VALUES (5, 2020, 150);
INSERT INTO VOROS.FILM (MULTIMEDIA_ID, EV, HOSSZ) VALUES (6, 2019, 149);
INSERT INTO VOROS.FILM (MULTIMEDIA_ID, EV, HOSSZ) VALUES (7, 2019, 118);
INSERT INTO VOROS.FILM (MULTIMEDIA_ID, EV, HOSSZ) VALUES (8, 2020, 100);
INSERT INTO VOROS.FILM (MULTIMEDIA_ID, EV, HOSSZ) VALUES (9, 1952, 85);
INSERT INTO VOROS.FILM (MULTIMEDIA_ID, EV, HOSSZ) VALUES (10, 2020, 101);

create table HANGOSKONYV
(
    KONYV_ID  NUMBER not null
        constraint HANGOSKONYV_KONYV_ID_FK
            references KONYV
                on delete cascade,
    ELBESZELO VARCHAR2(100),
    HOSSZ     NUMBER
)
/

create unique index HANGOSKONYV_KONYV_ID_UINDEX
    on HANGOSKONYV (KONYV_ID)
/

alter table HANGOSKONYV
    add constraint HANGOSKONYV_PK
        primary key (KONYV_ID)
/

INSERT INTO VOROS.HANGOSKONYV (KONYV_ID, ELBESZELO, HOSSZ) VALUES (46, 'Cs�re G�bor', 112);
INSERT INTO VOROS.HANGOSKONYV (KONYV_ID, ELBESZELO, HOSSZ) VALUES (48, 'Hirtling Istv�n', 72);
INSERT INTO VOROS.HANGOSKONYV (KONYV_ID, ELBESZELO, HOSSZ) VALUES (47, 'Szacsvay L�szl�', 81);
INSERT INTO VOROS.HANGOSKONYV (KONYV_ID, ELBESZELO, HOSSZ) VALUES (22, 'Fekete Ern�', 123);
INSERT INTO VOROS.HANGOSKONYV (KONYV_ID, ELBESZELO, HOSSZ) VALUES (21, 'M�csai P�l', 142);

create table KEDVEZMENY
(
    ID         NUMBER generated as identity,
    MEGNEVEZES VARCHAR2(100) not null,
    MEKKORA    NUMBER        not null,
    METTOL     DATE          not null,
    MEDDIG     DATE          not null
)
/

create unique index KEDVEZMENY_ID_UINDEX
    on KEDVEZMENY (ID)
/

alter table KEDVEZMENY
    add constraint KEDVEZMENY_PK
        primary key (ID)
/

create table MAGAZIN
(
    KONYV_ID   NUMBER not null
        constraint MAGAZIN_KONYV_ID_FK
            references KONYV
                on delete cascade,
    GYAKORISAG VARCHAR2(100)
)
/

create unique index MAGAZIN_KONYV_ID_UINDEX
    on MAGAZIN (KONYV_ID)
/

alter table MAGAZIN
    add constraint MAGAZIN_PK
        primary key (KONYV_ID)
/

INSERT INTO VOROS.MAGAZIN (KONYV_ID, GYAKORISAG) VALUES (40, 'heti');
INSERT INTO VOROS.MAGAZIN (KONYV_ID, GYAKORISAG) VALUES (41, 'havi');
INSERT INTO VOROS.MAGAZIN (KONYV_ID, GYAKORISAG) VALUES (42, 'heti');
INSERT INTO VOROS.MAGAZIN (KONYV_ID, GYAKORISAG) VALUES (53, 'heti');


create table MUFAJA
(
    ID            NUMBER generated as identity,
    MUFAJ_ID      NUMBER
        constraint MUFAJA_MUFAJ_ID_FK
            references MUFAJ
                on delete cascade,
    KONYV_ID      NUMBER
        constraint MUFAJA_KONYV_ID_FK
            references KONYV
                on delete cascade,
    MULTIMEDIA_ID NUMBER
        constraint MUFAJA_MULTIMEDIA_ID_FK
            references MULTIMEDIA
                on delete cascade
)
/

create unique index MUFAJA_ID_UINDEX
    on MUFAJA (ID)
/

alter table MUFAJA
    add constraint MUFAJA_PK
        primary key (ID)
/
create table RAKTARON
(
    ID            NUMBER generated as identity,
    KONYV_ID      NUMBER
        constraint RAKTARON_KONYV_ID_FK
            references KONYV
                on delete cascade,
    MULTIMEDIA_ID NUMBER
        constraint RAKTARON_MULTIMEDIA_ID_FK
            references MULTIMEDIA
                on delete cascade,
    AJANDEK_ID    VARCHAR2(100)
        constraint RAKTARON_AJANDEK_NEV_FK
            references AJANDEK
                on delete cascade,
    BOLT_ID       NUMBER
        constraint RAKTARON_BOLT_ID_FK
            references BOLT
                on delete cascade,
    MENNYISEG     NUMBER
)
/

create unique index RAKTARON_ID_UINDEX
    on RAKTARON (ID)
/

alter table RAKTARON
    add constraint RAKTARON_PK
        primary key (ID)
/



create table RAKTARON
(
    ID            NUMBER generated as identity,
    KONYV_ID      NUMBER
        constraint RAKTARON_KONYV_ID_FK
            references KONYV
                on delete cascade,
    MULTIMEDIA_ID NUMBER
        constraint RAKTARON_MULTIMEDIA_ID_FK
            references MULTIMEDIA
                on delete cascade,
    AJANDEK_ID    VARCHAR2(100)
        constraint RAKTARON_AJANDEK_NEV_FK
            references AJANDEK
                on delete cascade,
    BOLT_ID       NUMBER
        constraint RAKTARON_BOLT_ID_FK
            references BOLT
                on delete cascade,
    MENNYISEG     NUMBER
)
/

create unique index RAKTARON_ID_UINDEX
    on RAKTARON (ID)
/

alter table RAKTARON
    add constraint RAKTARON_PK
        primary key (ID)
/

create table TANKONYV
(
    KONYV_ID    NUMBER not null
        constraint TANKONYV_KONYV_ID_FK
            references KONYV
                on delete cascade,
    AJANLOTTKOR NUMBER,
    FAJTA       VARCHAR2(100)
)
/

create unique index TANKONYV_KONYV_ID_UINDEX
    on TANKONYV (KONYV_ID)
/

alter table TANKONYV
    add constraint TANKONYV_PK
        primary key (KONYV_ID)
/

INSERT INTO VOROS.TANKONYV (KONYV_ID, AJANLOTTKOR, FAJTA) VALUES (6, 17, 'tank�nyv');
INSERT INTO VOROS.TANKONYV (KONYV_ID, AJANLOTTKOR, FAJTA) VALUES (5, 17, 'feladatgy�jtem�ny');
INSERT INTO VOROS.TANKONYV (KONYV_ID, AJANLOTTKOR, FAJTA) VALUES (23, 14, 'feladatgy�jtem�ny');
INSERT INTO VOROS.TANKONYV (KONYV_ID, AJANLOTTKOR, FAJTA) VALUES (44, 17, 'tank�nyv');
INSERT INTO VOROS.TANKONYV (KONYV_ID, AJANLOTTKOR, FAJTA) VALUES (45, 17, 'tank�nyv');

create table VASARLAS
(
    ID            NUMBER generated as identity,
    SZAMLAIGENYES CHAR          not null,
    MIKOR         DATE          not null,
    ATVETEL       VARCHAR2(100) not null
)
/

create unique index VASARLAS_ID_UINDEX
    on VASARLAS (ID)
/

alter table VASARLAS
    add constraint VASARLAS_PK
        primary key (ID)
/


create table VASARLO
(
    ID            NUMBER generated as identity,
    EMAIL         VARCHAR2(50)  not null,
    JELSZO        VARCHAR2(100) not null,
    NEV           VARCHAR2(100) not null,
    SZULIDO       DATE,
    TORZSVASARLOE CHAR          not null,
    IRSZAM        NUMBER,
    UTCANEV       VARCHAR2(100),
    HAZSZAM       NUMBER
)
/

create unique index VASARLO_EMAIL_UINDEX
    on VASARLO (EMAIL)
/

create unique index VASARLO_ID_UINDEX
    on VASARLO (ID)
/

alter table VASARLO
    add constraint VASARLO_PK
        primary key (ID)
/
create table VASAROL
(
    ID            NUMBER generated as identity,
    VASARLO_ID    NUMBER not null
        constraint VASAROL_VASARLO_ID_FK
            references VASARLO
                on delete cascade,
    KEDVEZMENY_ID NUMBER
        constraint VASAROL_KEDVEZMENY_ID_FK
            references KEDVEZMENY
                on delete cascade,
    BOLT_ID       NUMBER not null
        constraint VASAROL_BOLT_ID_FK
            references BOLT,
    VASARLAS_ID   NUMBER not null
        constraint VASAROL_VASARLAS_ID_FK
            references VASARLAS
                on delete cascade
)
/

create unique index VASAROL_ID_UINDEX
    on VASAROL (ID)
/

alter table VASAROL
    add constraint VASAROL_PK
        primary key (ID)
/
create table ZENE
(
    MULTIMEDIA_ID NUMBER not null
        constraint ZENE_MULTIMEDIA_ID_FK
            references MULTIMEDIA
                on delete cascade,
    ELOADO        VARCHAR2(100)
)
/

create unique index ZENE_MULTIMEDIA_ID_UINDEX
    on ZENE (MULTIMEDIA_ID)
/

alter table ZENE
    add constraint ZENE_PK
        primary key (MULTIMEDIA_ID)
/

INSERT INTO VOROS.ZENE (MULTIMEDIA_ID, ELOADO) VALUES (1, 'Selena Gomez');
INSERT INTO VOROS.ZENE (MULTIMEDIA_ID, ELOADO) VALUES (2, 'Ariana Grande');
INSERT INTO VOROS.ZENE (MULTIMEDIA_ID, ELOADO) VALUES (3, 'Taylor Swift');
INSERT INTO VOROS.ZENE (MULTIMEDIA_ID, ELOADO) VALUES (4, 'The Weeknd');

create table TARTOZIK
(
    ID            NUMBER generated as identity,
    VASARLAS_ID   NUMBER
        constraint TARTOZIK_VASARLAS_ID_FK
            references VASARLAS
                on delete cascade,
    KONYV_ID      NUMBER
        constraint TARTOZIK_KONYV_ID_FK
            references KONYV
                on delete cascade,
    MULTIMEDIA_ID NUMBER
        constraint TARTOZIK_MULTIMEDIA_ID_FK
            references MULTIMEDIA
                on delete cascade,
    AJANDEK_ID    VARCHAR2(100)
        constraint TARTOZIK_AJANDEK_NEV_FK
            references AJANDEK
                on delete cascade,
    MENNYISEG     NUMBER
)
/

create unique index TARTOZIK_ID_UINDEX
    on TARTOZIK (ID)
/

alter table TARTOZIK
    add constraint TARTOZIK_PK
        primary key (ID)
/
