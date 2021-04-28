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
INSERT INTO VOROS.MULTIMEDIA (CIM, AR, ELERESIUT) VALUES ('Revelación ', 5000, 'https://upload.wikimedia.org/wikipedia/en/3/34/Selena_Gomez_-_Revelaci%C3%B3n.png');
INSERT INTO VOROS.MULTIMEDIA (CIM, AR, ELERESIUT) VALUES ('The Highlights', 5000, 'https://upload.wikimedia.org/wikipedia/hu/1/12/The_Weeknd_-_The_Highlights_%28album_cover%29.png');
INSERT INTO VOROS.MULTIMEDIA (CIM, AR, ELERESIUT) VALUES ('Az AranyPinty', 1500, 'https://media.port.hu/images/001/162/350x510/916.jpg');
INSERT INTO VOROS.MULTIMEDIA (CIM, AR, ELERESIUT) VALUES ('Tenet', 2800, 'https://media.port.hu/images/001/244/350x510/378.jpg');
INSERT INTO VOROS.MULTIMEDIA (CIM, AR, ELERESIUT) VALUES ('Judy', 3000, 'https://media.port.hu/images/001/184/350x510/480.jpg');
INSERT INTO VOROS.MULTIMEDIA (CIM, AR, ELERESIUT) VALUES ('Sonic, a sündisznó', 2800, 'https://media.port.hu/images/001/190/350x510/896.jpg');
INSERT INTO VOROS.MULTIMEDIA (CIM, AR, ELERESIUT) VALUES ('Délidõ', 1800, 'https://media.port.hu/images/000/139/415x310/454.jpg');
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
INSERT INTO VOROS.MUFAJ ( NEV) VALUES ( 'Dráma');
INSERT INTO VOROS.MUFAJ ( NEV) VALUES ( 'Krimi');
INSERT INTO VOROS.MUFAJ ( NEV) VALUES ( 'Vígjáték');
INSERT INTO VOROS.MUFAJ ( NEV) VALUES ( 'Jazz');
INSERT INTO VOROS.MUFAJ ( NEV) VALUES ( 'Pop');
INSERT INTO VOROS.MUFAJ ( NEV) VALUES ( 'Rap');
INSERT INTO VOROS.MUFAJ ( NEV) VALUES ( 'Misztikus');
INSERT INTO VOROS.MUFAJ ( NEV) VALUES ( 'Akció');
INSERT INTO VOROS.MUFAJ ( NEV) VALUES ('Családi');
INSERT INTO VOROS.MUFAJ ( NEV) VALUES ('Western');
INSERT INTO VOROS.MUFAJ ( NEV) VALUES ( 'Rajzfilm');
INSERT INTO VOROS.MUFAJ ( NEV) VALUES ( 'Könnyûzene');
INSERT INTO VOROS.MUFAJ ( NEV) VALUES ( 'Komolyzene');
INSERT INTO VOROS.MUFAJ ( NEV) VALUES ( 'Népzene');
INSERT INTO VOROS.MUFAJ (NEV) VALUES ( 'Spirituális zene');
INSERT INTO VOROS.MUFAJ ( NEV) VALUES ( 'Fantasy');
INSERT INTO VOROS.MUFAJ (NEV) VALUES ( 'Humor-kabaré');
INSERT INTO VOROS.MUFAJ ( NEV) VALUES ( 'Romantkius');
INSERT INTO VOROS.MUFAJ (NEV) VALUES ( 'Történelmi');
INSERT INTO VOROS.MUFAJ ( NEV) VALUES ('Háborús');
INSERT INTO VOROS.MUFAJ (NEV) VALUES ('Mûvész');
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
INSERT INTO VOROS.BOLT ( NEV, ELHELYEZKEDES, NYITVATARTAS) VALUES ( 'Unicorn Kisalföld', 'Gyõr', 'H-P: 8-16');
INSERT INTO VOROS.BOLT ( NEV, ELHELYEZKEDES, NYITVATARTAS) VALUES ( 'Unicorn Alföld', 'Kecskemét', 'H-V: 8-18');
INSERT INTO VOROS.BOLT ( NEV, ELHELYEZKEDES, NYITVATARTAS) VALUES ( 'Unicorn Baranya', 'Pécs', 'H-P: 8-17');
INSERT INTO VOROS.BOLT ( NEV, ELHELYEZKEDES, NYITVATARTAS) VALUES ( 'Unicorn Kárpátalja', 'Szombathely', 'H-P: 8-16');
INSERT INTO VOROS.BOLT ( NEV, ELHELYEZKEDES, NYITVATARTAS) VALUES ( 'Fejér Unicorn', 'Székesfehérvár', 'H-P: 8-16');
INSERT INTO VOROS.BOLT ( NEV, ELHELYEZKEDES, NYITVATARTAS) VALUES ( 'Unicorn Erõmû', 'Paks', 'H-P: 8-16');
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

INSERT INTO VOROS.KONYV ( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES ( 'Delilah S. Dawson', 'Pókember: Új kezdet', 940, 80, 'Vad Virágok Kiadó Kft.', null, 2020, 'Magazin', 'Peter Parker felvette már a versenyt veszedelmes gonosztevõkkel és legendás hõsökkel is, de lehet, hogy a gimis élet kifog rajta. Szerencsére nincs veszve a remény, sikerrel veheti az akadályokat, ha besegítenek új barátai: Miles Morales és Gwen Stacy. Az Új kezdet tökéletes alkalom arra, hogy a fiatalabb olvasók is belegabalyodjanak Pókember és hihetetlen barátai vadonatúj kalandjainak szövevényes hálójába Delilah S. Dawson író és Fico Ossio rajzoló tolmácsolásában.');
INSERT INTO VOROS.KONYV ( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES ( 'Robbie Thompson', 'Star Wars: A célpont: Vader', 5025, 136, 'SZUKITS KÖNYVKIADÓ ÉS KÖNYVKER', null, 2020, 'Magazin', 'A Sith sötét nagyura egy titokzatos bûnözõ szindikátus után nyomoz, amely a Birodalom határán túl mûködik. Arról azonban sejtelme sincs, hogy eközben õ maga is célponttá válik: a bûnszövetkezet a galaxis legveszedelmesebb fejvadászait bérelte fel, hogy egyszer s mindenkorra végezzenek vele! A bukott birodalmi tiszt, Beilert Valance által vezetett orgyilkosok csapatát semmi sem állíthatja meg abban, hogy begyûjtsék életük legnagyobb trófeáját. Valance és Dengar a tökéletes fegyvert keresik, hogy végezzenek a Sith nagyúrral, és szükségük is lesz rá, amikor Vader sarokba szorítja õket! De mi lesz, ha az üldözött és az üldözõk is felfedik a Rejtett Kéz néven ismert szindikátus sötét titkait?');
INSERT INTO VOROS.KONYV ( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES ( 'Karinthy Frigyes', 'Tanár úr kérem', 3200, null, null, null, 2021, 'humoros', 'A Tanár úr kérem Karinthy Frigyes (1887-1938) egyik legnépszerûbb mûve, amelyben humoros és szórakoztató stílusban mesél gyermekkoráról és diákéveirõl. Ezen a kiadványon Mácsai Pál, a Kossuth- és Jászai Mari-díjas színész elõadásában hallhatjuk.');
INSERT INTO VOROS.KONYV ( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES ( 'Sir ARTHUR CONAN DOYLE', 'Sherlock Holmes kalandjai I.', 4525, 360, 'TITIS TANÁCSADÓ KFT.', null, 2020, 'crimi', 'A "Sherlock Holmes kalandjai" Doyle elsõ novelláskötete, mely a két regény, "A brixtoni rejtély" és "A négyek jele" után jelent meg, 1892-ben. Dr. Watson olyan rejtélyeket válogatott itt csokorba, melyek megoldása ékesen bizonyítja Holmes rendkívüli következtetõ képességét. Ezek a történetek tették a nagy detektívet igazán közismertté. Hol rejtette el a hölgy a Csehország királya számára oly kompromittáló fényképet? Miért szûnt meg a Rõt Liga? Hová tûnt a võlegény a templomba vonulás elõtt? Lehet-e hinni a meggyilkolt férfi fiának? Mit jelent az öt narancsmag? És hová lett a példás férj és családapa, miután kiintett feleségének egy kétes hírû kocsma emeleti ablakából? Nem csak remekül szórakozik, de ezekre a kérdésekre is választ kap, aki meghallgatja Fekete Ernõ nagyszerû elõadásában az elsõ 6 kalandot.');
INSERT INTO VOROS.KONYV ( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES ( 'Bartha Gábor', 'Matematika feladatgyüjtemény 1', 1360, 450, 'Mozaik', null, 2012, 'Tankönyv', 'Matematikai feladatgyüjtemény.');
INSERT INTO VOROS.KONYV ( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES ( 'dr. Gerõcs László', 'Matematika 11', 1000, 200, 'Mozaik', null, 2012, 'Tankönyv', 'Matematikai oktatóköny.');
INSERT INTO VOROS.KONYV ( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES ( 'Jay Asher', 'Tizenhárom okom volt...', 5000, 259, 'Könyvmolyképzõ Kiadó Kft.', null, 2017, 'Szépirodalom', 'Mikor Clay Jensen hazaér az iskolából, egy különös csomagot talál a verandán, amit neki címeztek. A csomagban néhány kazettára bukkan, amiket Hannah Baker - osztálytársa és titkos szerelme - készített, aki két héttel korábban öngyilkosságot követett el. Hannah elmondja, hogy tizenhárom oka volt annak, hogy úgy döntött, véget vet az életének. Clay az egyik. Ha meghallgatja a kazettákat, megtudja, miért. Clay egész éjszaka ide-oda bolyong a városban Hannah szavait hallgatva. Tanúja lesz a lány fájdalmának, és megtudja az igazságot saját magáról - az igazságot, amivel soha nem akart szembenézni.');
INSERT INTO VOROS.KONYV ( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES ( 'Matthew McConaughey', 'Zöldlámpa', 4242, 297, '21. Század Kiadó', null, 2020, 'Szépirodalom', 'Hogyan stresszeljek kevesebbet. Hogyan érezzem jól magam. Hogyan bántsam kevésbé az embereket. Hogyan bántsanak engem kevésbé. Hogyan legyek jó ember. Ha az ember tudja, hogyanés mikor boldoguljon az élet kihívásaival – hogyan viszonyuljon relatívan az elkerülhetetlenhez –, akkor élvezheti a sikernek azt az állapotát, amit úgy nevezek, „elkapni a zöldlámpát”. Belátásaim és meglátásaim, ráérzéseim és megérzéseim, lazaságaim és cikiségeim. Brutális finomságok, igazságok és szépségek. Megúszások, lebukások és elhasalások, ahogy az élet akadálypályáján próbáltam szlalomozni. Reményeim szerint ez egy jó ízû orvosság, két aszpirin a betegszoba helyett, ûrhajó a Marsra, amihez nem kell pilótaengedély, templomi élmény, amihez nem kell újjászületni, könnyes nevetés. Egy szerelmeslevél. Az élethez. Ez a könyv a zöldlámpákról szól, és arról, hogy a sárga és a piros is elõbb-utóbb zöld lesz.');
INSERT INTO VOROS.KONYV ( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES ( 'Doron Rabinovici', 'A földönkívüliek', 3324, 256, 'MAGVETÕ KFT.', null, 2021, 'Irodalom', 'Lehet, hogy egy olyan társadalomban, amely képes a vágóhídra küldeni embereket, az igaz ember helye a vágóhídon van? A rádióban bemondják a szenzációs hírt: az idegenek megérkeztek a Földre. Az embereken úrrá lesz az izgatottság, az eufória és az ismeretlentõl való félelem, ami súlyos zavargásokhoz vezet.');
INSERT INTO VOROS.KONYV ( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES ( 'Andrzej Sapkowski', 'Vaják I. - The Witcher - Az utolsó kívánság', 3790, 352, 'GABO KÖNYVKIADÓ ÉS KERESK.KFT.', null, 2021, 'Szorakoztato', 'Geralt a vajákok közé tartozik: mágikus képességeinek köszönhetõen, amelyeket hosszan tartó kiképzése és egy rejtélyes elixír csak még tovább csiszolt, zseniális és könyörtelen harcos hírében áll. Ugyanakkor nem hétköznapi gyilkos: célpontjai vérszomjas szörnyetegek és aljas fenevadak, amelyek mindenütt hatalmas pusztítást végeznek, és megtámadják az ártatlanokat.
Hiába tûnik azonban valami gonosznak vagy jónak, nem biztos, hogy valóban az - és minden mesében van egy csipetnyi igazság.');
INSERT INTO VOROS.KONYV ( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES ( 'Amanda Yee', 'Jóbarátok - A hivatalos szakácskönyv', 5192, 201, '21. Század Kiadó', null, 2021, 'Gasztronómia', 'Trombitáld össze a jóbarátokat, és üdvözöljétek együtt ezt a több mint 100 receptet ("Na, mi a helyzet?"), amelyet hõn szeretett tévémûsorotok ihletett. Akár minden hájjal megkent chef vagy, mint Monica Geller, akár most indítasz catering céget, mint Phoebe Buffay, vagy régi vágású haspók vagy, mint Joey Tribbiani, a Jóbarátok - A hivatalos szakácskönyv egy sor különbözõ receptet kínál a különbözõ szakmai szinten levõ chefeknek. Elõételek, fõfogások, italok és desszertek - minden egyes fejezet olyan ikonikus csemegéket tartogat, mint Monica Hálabarát Lakomája, Rachel Hagyományos Angol Rakott Krémdesszertje, a Sült Krumpli - csakis Joeynak, a Chandler-féle "Tej, amit elrágsz", Phoebe nagyijának csokitallérja és az elmaradhatatlan Hidratáló Szendvics.');
INSERT INTO VOROS.KONYV ( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES ( 'Dagmar Von Cramm', 'Babakonyha - Csecsemõkortól kisgyerekkorig', 4360, 192, 'Central Médiacsoport Zrt.', null, 2021, 'Gasztronómia', 'Ínycsiklandó receptek kicsiknek és nagyoknak. Finom kásák és kézzel ehetõ ételek a legkisebbeknek, egyszerûen elkészíthetõ baba-mama receptek, és sok más ennivaló, amit a család minden tagja szívesen fogyaszt.
Naprakész ismeretek a téma egyik legnagyobb szakértõjétõl, Dagmar von Crammtól. Szoptatási tippek, hozzátáplálás lépésrõl lépésre, jól kamatoztatható tudás a higiénia, a konyhai ismeretek, az ételintolerancia, az allergia, a cukor és a vega táplálkozás témaköreibõl.
Amit tehát ez a könyv nyújt: változatos, kiegyensúlyozott táplálkozást biztosító receptek a kisgyermek egyes életszakaszaihoz igazítva, valamint hasznos válaszok a kicsi fejlõdését érintõ kérdésekre.');
INSERT INTO VOROS.KONYV ( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES ( 'Dr. Esche-Belke Susanne - Dr. Kirschner-Brouns Suzann', 'Nõk a változókor küszöbén - A hormonális egyensúly titkai', 3514, 320, 'Partvonal Könyvkiadó Kft', null, 2021, 'Életmód', 'A változókor nem a világ vége, hanem új lehetõségek kezdete! Depresszió, ízületi fájdalom, migrén, hangulatingadozás, szapora szívverés, hõhullám, súlygyarapodás - ezek a kényelmetlen és sokszor súlyos tünetek gyakran jelentkeznek a negyven feletti nõknél. Az orvostudomány válasza egyértelmû: a változókor elõfutárának tekinthetõ jelenségek hormonális eredetûek, és már a negyvenes éveik elején pokollá tehetik a nõk hétköznapjait. Sajnos nem mindig kezelik megfelelõen a problémát: nem ismerik fel az okokat, vagy elvárják a nõktõl, hogy "éljenek együtt" a hormonváltozással.');
INSERT INTO VOROS.KONYV ( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES ( 'Szitnyainé Gottlieb Éva, Maros Judit', 'Kon-Takt 2 Arbeitsbuch', 910, 120, 'Mozaik', null, 2012, 'Tankönyv', 'Német nyelvû munkafüzet');
INSERT INTO VOROS.KONYV ( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES ( 'Pierre Rabhi', 'Pénzt akarunk vagy életet?', 1900, 190, 'L'' HARMATTAN KFT.', null, 2014, 'Antik', 'Pierre Rabhi a kortárs ökológiai gondolkodás egyik legnagyszerûbb alakja, aki alapítványai révén három kontinensen van jelen, és tízezrek életébe hozott változást Afrikától Indiáig. Mint Yehudi Menuhin írja róla: Ez az egyszerû életszentségû, tisztán és világosan gondolkodó ember, akinek költõi szépségû nyelvezete izzó szenvedélyrõl tanúskodik, saját verítékével termékenyítette meg a meddõ földeket. Ez a kötet filozófiai és bölcseleti írásait gyûjti egybe.');
INSERT INTO VOROS.KONYV ( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES ( 'Erik Burnham', 'Pókember: Pókvadászat - Marvel akcióhõsök', 1192, 72, 'Vad Virágok Kiadó Kft.', null, 2021, 'Magazin', 'Peter Parker, Miles Morales és Gwen Stacy egy csapattá állt össze, és ifjonti kalandozásaiknak semmi sem szabhat határt!
Kivéve persze a házi feladatok tömkelege, a szakmai gyakorlat
a Hírharsonában, valamint egy új, veszélyes ellenfél, aki kiszemelte õket magának: Kraven, a vadász! Hõseink egymás után kerülnek a hálójába, hogy kezdetét vehesse a nagy összecsapás. Lehet, hogy ezzel véget ér Peter, Miles és Gwen pókos pályafutása?
Erik Burnham író és Christoher Jones rajzoló humorban és izgalomban bõvelkedõ történetébõl kiderül.');
INSERT INTO VOROS.KONYV ( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES ( 'Phil Noto - Greg Pak', 'Star Wars: A lázadók végzete', 4232, 128, 'SZUKITS KÖNYVKIADÓ ÉS KÖNYVKER', null, 2021, 'Magazin', 'Lázadók és zsiványok népesítik be a képregény oldalait, melyeken történetünk lassan a végéhez közeledik. A Felkelõk Szövetségének hõsei merész küldetésekre indultak, hogy zavart keltsenek birodalomszerte. De ki az a Dar Champion, és mennyire bízhat meg benne Leia hercegnõ, amikor Han Solo élete a tét? Milyen megrázó élményben lesz része Luke Skywalkernek, amikor Warba végül felfedi valódi kilétét? Képes lesz C-3PO meghozni a végsõ áldozatot, amikor lehetetlen döntés elé kerül? Csubakka vajon állni fogja a sarat a Darth Vaderrel szembeni ádáz közelharc során?');
INSERT INTO VOROS.KONYV ( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES ( 'Sean Murphy', 'Batman - A Fehér Lovag átka', 6796, 272, 'FUMAX KFT', null, 2021, 'Magazin', 'Joker szövetkezik Azraellel, hogy segítsen neki leleplezni a Wayne család hagyatékának döbbenetes titkát - és nem mellékesen tönkretenni Gothamet. Batman a város és veszélyben lévõ szerettei segítségére siet, ám miután õseinek titka napvilágra kerül, kénytelen megkérdõjelezni mindent, amit eddig önmagáról és a Gotham életében betöltött szerepérõl hitt.
');
INSERT INTO VOROS.KONYV ( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES ( 'Szitnyainé Gottlieb Éva, Maros Judit', 'Kon-Takt 2 Lehrbuch', 1460, 112, 'Mozaik', null, 2012, 'Tankönyv', 'Német nyelvû tankönyv');
INSERT INTO VOROS.KONYV ( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES ( ' Antalné dr. Szabó Ágnes, dr. Raátz Judit', 'Magyar nyelv és kommunikáció. Tankönyv a 11. évfolyam számára', 790, 68, 'Mozaik', null, 2012, 'Tankönyv', 'Magyar nyelvtankönyv');
INSERT INTO VOROS.KONYV ( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES ( 'David Attenborough ', 'Egy ifjú természettudós történetei II. - A sárkány nyomában - Hangoskönyv', 3230, 290, 'Kossuth Kiadó / Mojzer Kiadó', null, 2021, 'Szépirodalom', 'Sir David Attenborough távoli tájakról, állatokról és kultúrákról szóló lebilincselõ történetein már több generációnyi lelkes természetkedvelõ és természetvédõ nõtt fel. Hangoskönyvünk egy indonéziai expedíció kalandjait mutatja be. Most sem alakul minden a terv szerint, adódhattak olyan helyzetek, hogy a csapatnak a sziget egyetlen kamionosát kellett megtalálniuk, a környék egyetlen dzsipjét kölcsönkérniük, vagy éppen heteket várni egy-egy hajós vagy repülõs szállításra. Ezeket a helyzeteket és a belõlük adódó bosszantóan komikus szituációkat a szerzõ jó érzékkel, humorosan mutatja be, érzékeltetve velünk, hogy azért a trópusokon se kolbászból van a kerítés.');
INSERT INTO VOROS.KONYV ( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES ( 'Sir ARTHUR CONAN DOYLE', 'A sátán kutyája - Hangoskönyv', 3106, null, 'HUNGAROTON', null, 2021, 'Szépirodalom', 'A detektívregény-irodalom klasszikusának, Sir Arthur Conan Doyle-nak (1859 - 1930) egyik legnépszerûbb regényét Szacsvay László elõadásában hallhatjuk.');
INSERT INTO VOROS.KONYV ( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES ( 'Robert Louis Stevenson', 'Dr. Jekyll és Mr. Hyde különös esete - Hangoskönyv', 2793, 212, 'TITIS TANÁCSADÓ KFT.', null, 2020, 'Szépirodalom', 'Stevenson kisregénye a Jekyll-Hyde párost napjainkig az emberben lakozó jó és gonosz szimbólumává tette. Az 1880-as években jelent meg, 1920 és 2000 között számos film készült belõle, majd színdarabok és musical is. Nagy hatását nem csak a kissé hátborzongató leírásnak, a tudomány és a transzcendens gondolkodás ütköztetésének, hanem annak is köszönhetõ, hogy az emberi lélek mûködését korát megelõzõ realitással elemzi. A történetben a gonosz kerekedik fölül, de végül nem gyõzedelmeskedik, maga is elbukik. Hirtling Isván elõadása érzékletesen kiemeli a fõhõs belsõ vívódása és a külsõ szemlélõk angolos távolságtartása között mindvégig feszülõ ellentétet.');
INSERT INTO VOROS.KONYV ( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES ( 'Ella Maise', 'Elsõ pillantás - 2019 - Alexander és Maya 1.', 2565, 244, 'ÁLOMGYÁR KIADÓ', null, 2019, 'Erotikus', 'Ez a történet egyedi és imádnivaló! Dayreader
A nevem Maya, és nem ugyanaz a lány vagyok, aki egy hónapja voltam.
Ürességet érzek a mellkasomban. A szívem megszakadt a fájdalomtól.
Azokon a sötét éjszakákon, azokban a fájdalmas pillanatokban, amikor visszaemlékszem, miként szorítottam sikoltva apám hideg, élettelen kezét, nehezemre esik még a lélegzetvétel is, ahogy érzem a veszteség súlyát rám nehezedni.
De minden történetben van egy hõs is, ugye? Egy hõs, akit attól a pillanattól semmibe vettem, hogy kinyitotta a száját.
A neve Alexander. Õ az elkerülhetetlen, akirõl soha nem gondoltam, hogy megtalálom. Az egyetlen, akihez az összetört szívem húz. A lénye, az érintése, minden, amit tett, hogy elviselhetõbbé tegye a fájdalmam, örökké nyomot hagy bennem.');
INSERT INTO VOROS.KONYV ( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES ( 'Stephen King', 'Kedvencek temetõje - 2019', 5700, 587, 'EURÓPA KÖNYVKIADÓ KFT.', null, 2019, 'Szépirodalom', 'Dr. Louis Creed, a fiatal orvos kitûnõ állást kapott: a Maine-i Egyetem rendelõjének lett a vezetõje, ezért Chicagóból az idilli New England-i tájban álló, magányos házba költözik családjával feleségével, Rachellel, ötéves lányukkal, Ellie-vel és másfél éves kisfiukkal, Gage-dzsel. Boldogan, a szép jövõ reményében veszik birtokba új otthonukat Az elsõ gondra az út túloldalán, velük átellenben élõ öregember, Jud hívja föl a figyelmüket: a tájat kettészelõ országúton éjjel-nappal olajszállító tartálykocsik dübörögnek, halálos veszélynek téve ki a háziállatokat és az apróságokat. Nem véletlenül van a közelben egy nyomasztó légkörû, ódon temetõ az elgázolt háziállatok számára Az elsõ trauma akkor éri Louist, amikor egy baleset áldozatául esett, haldokló fiú a rendelõben dadogó szavakkal óva inti az állattemetõn túli veszedelemtõl.');


create table AJANDEK
(
    NEV       VARCHAR2(100) not null
        constraint AJANDEK_PK
            primary key,
    AR        NUMBER        not null,
    ELERESIUT VARCHAR2(200)
)
/

INSERT INTO VOROS.AJANDEK (NEV, AR, ELERESIUT) VALUES ('Unicorn-bögre', 500, null);
INSERT INTO VOROS.AJANDEK (NEV, AR, ELERESIUT) VALUES ('Unicorn-hátizsák', 1000, null);
INSERT INTO VOROS.AJANDEK (NEV, AR, ELERESIUT) VALUES ('Unicorn-ajándék Utalvány', 5000, null);
INSERT INTO VOROS.AJANDEK (NEV, AR, ELERESIUT) VALUES ('Unicorn-füzet', 300, null);
INSERT INTO VOROS.AJANDEK (NEV, AR, ELERESIUT) VALUES ('Unicorn-ceruza', 50, null);
INSERT INTO VOROS.AJANDEK (NEV, AR, ELERESIUT) VALUES ('Unicorn-plüssfigura', 4000, null);
INSERT INTO VOROS.AJANDEK (NEV, AR, ELERESIUT) VALUES ('Unicorn-táska', 5000, null);
INSERT INTO VOROS.AJANDEK (NEV, AR, ELERESIUT) VALUES ('Unicorn-poló', 3000, null);
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

INSERT INTO VOROS.ANTIKVARKONYV (KONYV_ID, KOR, ALLAPOT) VALUES (25, 2, 'jó');
INSERT INTO VOROS.ANTIKVARKONYV (KONYV_ID, KOR, ALLAPOT) VALUES (52, 1, 'jó');
INSERT INTO VOROS.ANTIKVARKONYV (KONYV_ID, KOR, ALLAPOT) VALUES (30, 1, 'jó');
INSERT INTO VOROS.ANTIKVARKONYV (KONYV_ID, KOR, ALLAPOT) VALUES (39, 6, 'jó');
INSERT INTO VOROS.ANTIKVARKONYV (KONYV_ID, KOR, ALLAPOT) VALUES (50, 2, 'jó');

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

INSERT INTO VOROS.HANGOSKONYV (KONYV_ID, ELBESZELO, HOSSZ) VALUES (46, 'Csõre Gábor', 112);
INSERT INTO VOROS.HANGOSKONYV (KONYV_ID, ELBESZELO, HOSSZ) VALUES (48, 'Hirtling István', 72);
INSERT INTO VOROS.HANGOSKONYV (KONYV_ID, ELBESZELO, HOSSZ) VALUES (47, 'Szacsvay László', 81);
INSERT INTO VOROS.HANGOSKONYV (KONYV_ID, ELBESZELO, HOSSZ) VALUES (22, 'Fekete Ernõ', 123);
INSERT INTO VOROS.HANGOSKONYV (KONYV_ID, ELBESZELO, HOSSZ) VALUES (21, 'Mácsai Pál', 142);

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

INSERT INTO VOROS.TANKONYV (KONYV_ID, AJANLOTTKOR, FAJTA) VALUES (6, 17, 'tankönyv');
INSERT INTO VOROS.TANKONYV (KONYV_ID, AJANLOTTKOR, FAJTA) VALUES (5, 17, 'feladatgyüjtemény');
INSERT INTO VOROS.TANKONYV (KONYV_ID, AJANLOTTKOR, FAJTA) VALUES (23, 14, 'feladatgyüjtemény');
INSERT INTO VOROS.TANKONYV (KONYV_ID, AJANLOTTKOR, FAJTA) VALUES (44, 17, 'tankönyv');
INSERT INTO VOROS.TANKONYV (KONYV_ID, AJANLOTTKOR, FAJTA) VALUES (45, 17, 'tankönyv');

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
