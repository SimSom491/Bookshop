--------------------------------------------------------
--  File created - vas�rnap-m�jus-09-2021   
--------------------------------------------------------
DROP TABLE "VOROS"."AJANDEK" cascade constraints;
DROP TABLE "VOROS"."ANTIKVARKONYV" cascade constraints;
DROP TABLE "VOROS"."BOLT" cascade constraints;
DROP TABLE "VOROS"."FILM" cascade constraints;
DROP TABLE "VOROS"."HANGOSKONYV" cascade constraints;
DROP TABLE "VOROS"."KONYV" cascade constraints;
DROP TABLE "VOROS"."MAGAZIN" cascade constraints;
DROP TABLE "VOROS"."MUFAJ" cascade constraints;
DROP TABLE "VOROS"."MUFAJA" cascade constraints;
DROP TABLE "VOROS"."MULTIMEDIA" cascade constraints;
DROP TABLE "VOROS"."RAKTARON" cascade constraints;
DROP TABLE "VOROS"."SPRING_SESSION" cascade constraints;
DROP TABLE "VOROS"."SPRING_SESSION_ATTRIBUTES" cascade constraints;
DROP TABLE "VOROS"."TANKONYV" cascade constraints;
DROP TABLE "VOROS"."TARTOZIK" cascade constraints;
DROP TABLE "VOROS"."VASARLAS" cascade constraints;
DROP TABLE "VOROS"."VASARLO" cascade constraints;
DROP TABLE "VOROS"."VASAROL" cascade constraints;
DROP TABLE "VOROS"."ZENE" cascade constraints;
DROP FUNCTION "VOROS"."BOLTV";
DROP FUNCTION "VOROS"."KAR";
DROP FUNCTION "VOROS"."KONYVMENNYISEG";
DROP FUNCTION "VOROS"."MAR";
--------------------------------------------------------
--  DDL for Table AJANDEK
--------------------------------------------------------

  CREATE TABLE "VOROS"."AJANDEK" 
   (	"NEV" VARCHAR2(100 BYTE), 
	"AR" NUMBER, 
	"ELERESIUT" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ANTIKVARKONYV
--------------------------------------------------------

  CREATE TABLE "VOROS"."ANTIKVARKONYV" 
   (	"KONYV_ID" NUMBER, 
	"KOR" NUMBER, 
	"ALLAPOT" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table BOLT
--------------------------------------------------------

  CREATE TABLE "VOROS"."BOLT" 
   (	"ID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE , 
	"NEV" VARCHAR2(100 BYTE), 
	"ELHELYEZKEDES" VARCHAR2(100 BYTE), 
	"NYITVATARTAS" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table FILM
--------------------------------------------------------

  CREATE TABLE "VOROS"."FILM" 
   (	"MULTIMEDIA_ID" NUMBER, 
	"EV" NUMBER, 
	"HOSSZ" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table HANGOSKONYV
--------------------------------------------------------

  CREATE TABLE "VOROS"."HANGOSKONYV" 
   (	"KONYV_ID" NUMBER, 
	"ELBESZELO" VARCHAR2(100 BYTE), 
	"HOSSZ" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table KONYV
--------------------------------------------------------

  CREATE TABLE "VOROS"."KONYV" 
   (	"ID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE , 
	"SZERZO" VARCHAR2(100 BYTE), 
	"CIM" VARCHAR2(100 BYTE), 
	"AR" NUMBER, 
	"OLDALSZAM" NUMBER, 
	"KIADO" VARCHAR2(100 BYTE), 
	"ELERESIUT" VARCHAR2(200 BYTE), 
	"KIADASIEV" NUMBER, 
	"TIPUS" VARCHAR2(100 BYTE), 
	"LEIRAS" VARCHAR2(1000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MAGAZIN
--------------------------------------------------------

  CREATE TABLE "VOROS"."MAGAZIN" 
   (	"KONYV_ID" NUMBER, 
	"GYAKORISAG" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MUFAJ
--------------------------------------------------------

  CREATE TABLE "VOROS"."MUFAJ" 
   (	"ID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE , 
	"NEV" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MUFAJA
--------------------------------------------------------

  CREATE TABLE "VOROS"."MUFAJA" 
   (	"ID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE , 
	"MUFAJ_ID" NUMBER, 
	"KONYV_ID" NUMBER, 
	"MULTIMEDIA_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MULTIMEDIA
--------------------------------------------------------

  CREATE TABLE "VOROS"."MULTIMEDIA" 
   (	"ID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE , 
	"CIM" VARCHAR2(100 BYTE), 
	"AR" NUMBER, 
	"ELERESIUT" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table RAKTARON
--------------------------------------------------------

  CREATE TABLE "VOROS"."RAKTARON" 
   (	"ID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE , 
	"KONYV_ID" NUMBER, 
	"MULTIMEDIA_ID" NUMBER, 
	"AJANDEK_ID" VARCHAR2(100 BYTE), 
	"BOLT_ID" NUMBER, 
	"MENNYISEG" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SPRING_SESSION
--------------------------------------------------------

  CREATE TABLE "VOROS"."SPRING_SESSION" 
   (	"PRIMARY_ID" CHAR(36 BYTE), 
	"SESSION_ID" CHAR(36 BYTE), 
	"CREATION_TIME" NUMBER(19,0), 
	"LAST_ACCESS_TIME" NUMBER(19,0), 
	"MAX_INACTIVE_INTERVAL" NUMBER(10,0), 
	"EXPIRY_TIME" NUMBER(19,0), 
	"PRINCIPAL_NAME" VARCHAR2(100 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SPRING_SESSION_ATTRIBUTES
--------------------------------------------------------

  CREATE TABLE "VOROS"."SPRING_SESSION_ATTRIBUTES" 
   (	"SESSION_PRIMARY_ID" CHAR(36 BYTE), 
	"ATTRIBUTE_NAME" VARCHAR2(200 CHAR), 
	"ATTRIBUTE_BYTES" BLOB
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("ATTRIBUTE_BYTES") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table TANKONYV
--------------------------------------------------------

  CREATE TABLE "VOROS"."TANKONYV" 
   (	"KONYV_ID" NUMBER, 
	"AJANLOTTKOR" NUMBER, 
	"FAJTA" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TARTOZIK
--------------------------------------------------------

  CREATE TABLE "VOROS"."TARTOZIK" 
   (	"ID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE , 
	"VASARLAS_ID" NUMBER, 
	"KONYV_ID" NUMBER, 
	"MULTIMEDIA_ID" NUMBER, 
	"AJANDEK_ID" VARCHAR2(100 BYTE), 
	"MENNYISEG" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table VASARLAS
--------------------------------------------------------

  CREATE TABLE "VOROS"."VASARLAS" 
   (	"ID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE , 
	"SZAMLAIGENYES" CHAR(1 BYTE), 
	"MIKOR" DATE, 
	"ATVETEL" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table VASARLO
--------------------------------------------------------

  CREATE TABLE "VOROS"."VASARLO" 
   (	"ID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE , 
	"EMAIL" VARCHAR2(50 BYTE), 
	"JELSZO" VARCHAR2(100 BYTE), 
	"NEV" VARCHAR2(100 BYTE), 
	"SZULIDO" DATE, 
	"TORZSVASARLOE" CHAR(1 BYTE), 
	"ADMINE" CHAR(1 BYTE), 
	"IRSZAM" NUMBER, 
	"UTCANEV" VARCHAR2(100 BYTE), 
	"HAZSZAM" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table VASAROL
--------------------------------------------------------

  CREATE TABLE "VOROS"."VASAROL" 
   (	"ID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE , 
	"VASARLO_ID" NUMBER, 
	"KEDVEZMENY_ID" NUMBER, 
	"BOLT_ID" NUMBER, 
	"VASARLAS_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ZENE
--------------------------------------------------------

  CREATE TABLE "VOROS"."ZENE" 
   (	"MULTIMEDIA_ID" NUMBER, 
	"ELOADO" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into VOROS.AJANDEK
SET DEFINE OFF;
Insert into VOROS.AJANDEK (NEV,AR,ELERESIUT) values ('Unicorn-b�gre','500','https://bogremanufaktura.com/img/97634/GYF010/496x664,r/GYF010.jpg?time=1610869967');
Insert into VOROS.AJANDEK (NEV,AR,ELERESIUT) values ('Unicorn-utalv�ny aj�nd�k','1000','https://ajikartyak.hu/images/kartyak/ajandekkartya-5/ajandekkartya-6-.png');
Insert into VOROS.AJANDEK (NEV,AR,ELERESIUT) values ('Unicorn-utalv�ny k�sz�net','5000','https://ajikartyak.hu/images/kartyak/koszonet/aji-ajandekkartya-koszonettel.png');
Insert into VOROS.AJANDEK (NEV,AR,ELERESIUT) values ('Unicorn-f�zet','300','https://www.pirex.hu/upload_files/products_thumb/thumb_list_09543976.jpg');
Insert into VOROS.AJANDEK (NEV,AR,ELERESIUT) values ('Unicorn-ceruza','50','https://upload.wikimedia.org/wikipedia/commons/thumb/2/23/Bleistift1.jpg/375px-Bleistift1.jpg');
Insert into VOROS.AJANDEK (NEV,AR,ELERESIUT) values ('Unicorn-pl�ss','4000','https://s13emagst.akamaized.net/products/23300/23299883/images/res_251ff62ee8eb48483069369a8f85222d.jpg?width=450&height=450&hash=4D206C581B418A831402D8E966759CD5');
Insert into VOROS.AJANDEK (NEV,AR,ELERESIUT) values ('Unicorn-utalv�ny sz�linap','5000','https://ajikartyak.hu/images/kartyak/boldog-szuletesnapot-ajandekkartya/aji-ajandekkartya-boldog-szuletesnapot-png.-1');
Insert into VOROS.AJANDEK (NEV,AR,ELERESIUT) values ('Unicorn-p�l�','3000','https://pix.bonprix.pl/imgc/0/0/1/7/0/0/7/0/6/1/_640/17007061/polo-egyszarvu-motivummal-lanyoknak-fekete.jpg');
Insert into VOROS.AJANDEK (NEV,AR,ELERESIUT) values ('Unicorn-pulcsi','4300','https://hellomall.hu/img/26309/13733womenhood_altpic_4/744x996,r/13733womenhood.webp?time=1616719031');
Insert into VOROS.AJANDEK (NEV,AR,ELERESIUT) values ('Unicorn-utalv�ny meglepet�s','10000','https://ajikartyak.hu/images/kartyak/strucc/strucc.png');
REM INSERTING into VOROS.ANTIKVARKONYV
SET DEFINE OFF;
Insert into VOROS.ANTIKVARKONYV (KONYV_ID,KOR,ALLAPOT) values ('7','1','remek');
Insert into VOROS.ANTIKVARKONYV (KONYV_ID,KOR,ALLAPOT) values ('8','1','j�');
Insert into VOROS.ANTIKVARKONYV (KONYV_ID,KOR,ALLAPOT) values ('15','1','j�');
Insert into VOROS.ANTIKVARKONYV (KONYV_ID,KOR,ALLAPOT) values ('24','2','j�');
Insert into VOROS.ANTIKVARKONYV (KONYV_ID,KOR,ALLAPOT) values ('25','2','j�');
REM INSERTING into VOROS.BOLT
SET DEFINE OFF;
Insert into VOROS.BOLT (ID,NEV,ELHELYEZKEDES,NYITVATARTAS) values ('11','Kis Bolt','San Francisco','H-P 15-18');
Insert into VOROS.BOLT (ID,NEV,ELHELYEZKEDES,NYITVATARTAS) values ('1','Unicorn Szeged','Szeged','H-P: 8-16');
Insert into VOROS.BOLT (ID,NEV,ELHELYEZKEDES,NYITVATARTAS) values ('2','Unicorn Budapest','Budapest','H-P:8-16');
Insert into VOROS.BOLT (ID,NEV,ELHELYEZKEDES,NYITVATARTAS) values ('3','Unicorn Zalaegerszeg','Zalaegerszeg','H-P: 8-16');
Insert into VOROS.BOLT (ID,NEV,ELHELYEZKEDES,NYITVATARTAS) values ('4','Unicorn Kisalf�ld','Gy�r','H-P: 8-16');
Insert into VOROS.BOLT (ID,NEV,ELHELYEZKEDES,NYITVATARTAS) values ('5','Unicorn Alf�ld','Kecskem�t','H-V: 8-18');
Insert into VOROS.BOLT (ID,NEV,ELHELYEZKEDES,NYITVATARTAS) values ('6','Unicorn Baranya','P�cs','H-P: 8-17');
Insert into VOROS.BOLT (ID,NEV,ELHELYEZKEDES,NYITVATARTAS) values ('7','Unicorn K�rp�talja','Szombathely','H-P: 8-16');
Insert into VOROS.BOLT (ID,NEV,ELHELYEZKEDES,NYITVATARTAS) values ('8','Fej�r Unicorn','Sz�kesfeh�rv�r','H-P: 8-16');
Insert into VOROS.BOLT (ID,NEV,ELHELYEZKEDES,NYITVATARTAS) values ('9','Unicorn Er�m�','Paks','H-P: 8-16');
Insert into VOROS.BOLT (ID,NEV,ELHELYEZKEDES,NYITVATARTAS) values ('10','Heves Unicorn','Eger','H-V: 8-10');
Insert into VOROS.BOLT (ID,NEV,ELHELYEZKEDES,NYITVATARTAS) values ('32','Boltocska','Szeged','H-P:8-10');
REM INSERTING into VOROS.FILM
SET DEFINE OFF;
Insert into VOROS.FILM (MULTIMEDIA_ID,EV,HOSSZ) values ('21','1995','130');
Insert into VOROS.FILM (MULTIMEDIA_ID,EV,HOSSZ) values ('5','2020','150');
Insert into VOROS.FILM (MULTIMEDIA_ID,EV,HOSSZ) values ('6','2019','149');
Insert into VOROS.FILM (MULTIMEDIA_ID,EV,HOSSZ) values ('7','2019','118');
Insert into VOROS.FILM (MULTIMEDIA_ID,EV,HOSSZ) values ('8','2020','100');
Insert into VOROS.FILM (MULTIMEDIA_ID,EV,HOSSZ) values ('9','1952','85');
Insert into VOROS.FILM (MULTIMEDIA_ID,EV,HOSSZ) values ('10','2020','101');
Insert into VOROS.FILM (MULTIMEDIA_ID,EV,HOSSZ) values ('22','2020','20');
REM INSERTING into VOROS.HANGOSKONYV
SET DEFINE OFF;
Insert into VOROS.HANGOSKONYV (KONYV_ID,ELBESZELO,HOSSZ) values ('22','Szacsvay L�szl�','123');
Insert into VOROS.HANGOSKONYV (KONYV_ID,ELBESZELO,HOSSZ) values ('21','Cs�re G�bor','142');
Insert into VOROS.HANGOSKONYV (KONYV_ID,ELBESZELO,HOSSZ) values ('23','Hirtling Istv�n','89');
Insert into VOROS.HANGOSKONYV (KONYV_ID,ELBESZELO,HOSSZ) values ('3','M�csai P�l','112');
Insert into VOROS.HANGOSKONYV (KONYV_ID,ELBESZELO,HOSSZ) values ('4','Fekete Ern�','92');
REM INSERTING into VOROS.KONYV
SET DEFINE OFF;
Insert into VOROS.KONYV (ID,SZERZO,CIM,AR,OLDALSZAM,KIADO,ELERESIUT,KIADASIEV,TIPUS,LEIRAS) values ('1','Delilah S. Dawson','P�kember: �j kezdet','852','80','Vad Vir�gok Kiad� Kft.','https://s03.static.libri.hu/cover/d9/e/6930865_5.jpg','2020','Magazin','Peter Parker felvette m�r a versenyt veszedelmes gonosztev�kkel �s legend�s h�s�kkel is, de lehet, hogy a gimis �let kifog rajta. Szerencs�re nincs veszve a rem�ny, sikerrel veheti az akad�lyokat, ha beseg�tenek �j bar�tai: Miles Morales �s Gwen Stacy. Az �j kezdet t�k�letes alkalom arra, hogy a fiatalabb olvas�k is belegabalyodjanak P�kember �s hihetetlen bar�tai vadonat�j kalandjainak sz�vev�nyes h�l�j�ba Delilah S. Dawson �r� �s Fico Ossio rajzol� tolm�csol�s�ban.');
Insert into VOROS.KONYV (ID,SZERZO,CIM,AR,OLDALSZAM,KIADO,ELERESIUT,KIADASIEV,TIPUS,LEIRAS) values ('2','Robbie Thompson','Star Wars: A c�lpont: Vader','5025','136','SZUKITS K�NYVKIAD� �S K�NYVKER','https://s04.static.libri.hu/cover/d7/a/6892448_5.jpg','2020','Magazin','A Sith s�t�t nagyura egy titokzatos b�n�z� szindik�tus ut�n nyomoz, amely a Birodalom hat�r�n t�l m�k�dik. Arr�l azonban sejtelme sincs, hogy ek�zben � maga is c�lpontt� v�lik: a b�nsz�vetkezet a galaxis legveszedelmesebb fejvad�szait b�relte fel, hogy egyszer s mindenkorra v�gezzenek vele! A bukott birodalmi tiszt, Beilert Valance �ltal vezetett orgyilkosok csapat�t semmi sem �ll�thatja meg abban, hogy begy�jts�k �let�k legnagyobb tr�fe�j�t. Valance �s Dengar a t�k�letes fegyvert keresik, hogy v�gezzenek a Sith nagy�rral, �s sz�ks�g�k is lesz r�, amikor Vader sarokba szor�tja �ket! De mi lesz, ha az �ld�z�tt �s az �ld�z�k is felfedik a Rejtett K�z n�ven ismert szindik�tus s�t�t titkait?');
Insert into VOROS.KONYV (ID,SZERZO,CIM,AR,OLDALSZAM,KIADO,ELERESIUT,KIADASIEV,TIPUS,LEIRAS) values ('3','Karinthy Frigyes','Tan�r �r k�rem','3200',null,null,'https://s03.static.libri.hu/cover/99/6/7233046_5.jpg','2021','Hangosk�nyv','A Tan�r �r k�rem Karinthy Frigyes (1887-1938) egyik legn�pszer�bb m�ve, amelyben humoros �s sz�rakoztat� st�lusban mes�l gyermekkor�r�l �s di�k�veir�l. Ezen a kiadv�nyon M�csai P�l, a Kossuth- �s J�szai Mari-d�jas sz�n�sz el�ad�s�ban hallhatjuk.');
Insert into VOROS.KONYV (ID,SZERZO,CIM,AR,OLDALSZAM,KIADO,ELERESIUT,KIADASIEV,TIPUS,LEIRAS) values ('4','Sir ARTHUR CONAN DOYLE','Sherlock Holmes kalandjai I.','4525','360','TITIS TAN�CSAD� KFT.','https://s02.static.libri.hu/cover/8f/d/6643793_5.jpg','2020','Hangosk�nyv','A "Sherlock Holmes kalandjai" Doyle els� novell�sk�tete, mely a k�t reg�ny, "A brixtoni rejt�ly" �s "A n�gyek jele" ut�n jelent meg, 1892-ben. Dr. Watson olyan rejt�lyeket v�logatott itt csokorba, melyek megold�sa �kesen bizony�tja Holmes rendk�v�li k�vetkeztet� k�pess�g�t. Ezek a t�rt�netek tett�k a nagy detekt�vet igaz�n k�zismertt�. Hol rejtette el a h�lgy a Csehorsz�g kir�lya sz�m�ra oly kompromitt�l� f�nyk�pet? Mi�rt sz�nt meg a R�t Liga? Hov� t�nt a v�leg�ny a templomba vonul�s el�tt? Lehet-e hinni a meggyilkolt f�rfi fi�nak? Mit jelent az �t narancsmag? �s hov� lett a p�ld�s f�rj �s csal�dapa, miut�n kiintett feles�g�nek egy k�tes h�r� kocsma emeleti ablak�b�l? Nem csak remek�l sz�rakozik, de ezekre a k�rd�sekre is v�laszt kap, aki meghallgatja Fekete Ern� nagyszer� el�ad�s�ban az els� 6 kalandot.');
Insert into VOROS.KONYV (ID,SZERZO,CIM,AR,OLDALSZAM,KIADO,ELERESIUT,KIADASIEV,TIPUS,LEIRAS) values ('5','Bartha G�bor','Matematika feladatgy�jtem�ny 1','1360','450','Mozaik','https://www.tankonyvkatalogus.hu/images/cover/NT-13135_NAT.jpg','2012','Tank�nyv','Matematikai feladatgy�jtem�ny.');
Insert into VOROS.KONYV (ID,SZERZO,CIM,AR,OLDALSZAM,KIADO,ELERESIUT,KIADASIEV,TIPUS,LEIRAS) values ('6','dr. Ger�cs L�szl�','Matematika 11','1000','200','Mozaik','https://www.tankonyvkatalogus.hu/images/cover/NT-17302.jpg','2012','Tank�nyv','Matematikai oktat�k�ny.');
Insert into VOROS.KONYV (ID,SZERZO,CIM,AR,OLDALSZAM,KIADO,ELERESIUT,KIADASIEV,TIPUS,LEIRAS) values ('7','Jay Asher','Tizenh�rom okom volt...','5000','259','K�nyvmolyk�pz� Kiad� Kft.','https://s04.static.libri.hu/cover/sl/d1/5/d156021eb9586475611b080c3855dff2_big.jpg','2017','Antikv�r','Mikor Clay Jensen haza�r az iskol�b�l, egy k�l�n�s csomagot tal�l a verand�n, amit neki c�meztek. A csomagban n�h�ny kazett�ra bukkan, amiket Hannah Baker - oszt�lyt�rsa �s titkos szerelme - k�sz�tett, aki k�t h�ttel kor�bban �ngyilkoss�got k�vetett el. Hannah elmondja, hogy tizenh�rom oka volt annak, hogy �gy d�nt�tt, v�get vet az �let�nek. Clay az egyik. Ha meghallgatja a kazett�kat, megtudja, mi�rt. Clay eg�sz �jszaka ide-oda bolyong a v�rosban Hannah szavait hallgatva. Tan�ja lesz a l�ny f�jdalm�nak, �s megtudja az igazs�got saj�t mag�r�l - az igazs�got, amivel soha nem akart szemben�zni.');
Insert into VOROS.KONYV (ID,SZERZO,CIM,AR,OLDALSZAM,KIADO,ELERESIUT,KIADASIEV,TIPUS,LEIRAS) values ('8','Matthew McConaughey','Z�ldl�mpa','4242','297','21. Sz�zad Kiad�','https://s04.static.libri.hu/cover/b8/f/6708894_5.jpg','2020','Antikv�r','Hogyan stresszeljek kevesebbet. Hogyan �rezzem j�l magam. Hogyan b�ntsam kev�sb� az embereket. Hogyan b�ntsanak engem kev�sb�. Hogyan legyek j� ember. Ha az ember tudja, hogyan�s mikor boldoguljon az �let kih�v�saival � hogyan viszonyuljon relat�van az elker�lhetetlenhez �, akkor �lvezheti a sikernek azt az �llapot�t, amit �gy nevezek, �elkapni a z�ldl�mp�t�. Bel�t�saim �s megl�t�saim, r��rz�seim �s meg�rz�seim, lazas�gaim �s cikis�geim. Brut�lis finoms�gok, igazs�gok �s sz�ps�gek. Meg�sz�sok, lebuk�sok �s elhasal�sok, ahogy az �let akad�lyp�ly�j�n pr�b�ltam szlalomozni. Rem�nyeim szerint ez egy j� �z� orvoss�g, k�t aszpirin a betegszoba helyett, �rhaj� a Marsra, amihez nem kell pil�taenged�ly, templomi �lm�ny, amihez nem kell �jj�sz�letni, k�nnyes nevet�s. Egy szerelmeslev�l. Az �lethez. Ez a k�nyv a z�ldl�mp�kr�l sz�l, �s arr�l, hogy a s�rga �s a piros is el�bb-ut�bb z�ld lesz.');
Insert into VOROS.KONYV (ID,SZERZO,CIM,AR,OLDALSZAM,KIADO,ELERESIUT,KIADASIEV,TIPUS,LEIRAS) values ('9','Doron Rabinovici','A f�ld�nk�v�liek','3324','256','MAGVET� KFT.','https://s03.static.libri.hu/cover/bb/6/7046722_5.jpg','2021','K�nyv','Lehet, hogy egy olyan t�rsadalomban, amely k�pes a v�g�h�dra k�ldeni embereket, az igaz ember helye a v�g�h�don van? A r�di�ban bemondj�k a szenz�ci�s h�rt: az idegenek meg�rkeztek a F�ldre. Az embereken �rr� lesz az izgatotts�g, az euf�ria �s az ismeretlent�l val� f�lelem, ami s�lyos zavarg�sokhoz vezet.');
Insert into VOROS.KONYV (ID,SZERZO,CIM,AR,OLDALSZAM,KIADO,ELERESIUT,KIADASIEV,TIPUS,LEIRAS) values ('10','Andrzej Sapkowski','Vaj�k I. - The Witcher - Az utols� k�v�ns�g','3790','352','GABO K�NYVKIAD� �S KERESK.KFT.','https://s04.static.libri.hu/cover/e2/3/7016504_5.jpg','2021','K�nyv','Geralt a vaj�kok k�z� tartozik: m�gikus k�pess�geinek k�sz�nhet�en, amelyeket hosszan tart� kik�pz�se �s egy rejt�lyes elix�r csak m�g tov�bb csiszolt, zseni�lis �s k�ny�rtelen harcos h�r�ben �ll. Ugyanakkor nem h�tk�znapi gyilkos: c�lpontjai v�rszomjas sz�rnyetegek �s aljas fenevadak, amelyek minden�tt hatalmas puszt�t�st v�geznek, �s megt�madj�k az �rtatlanokat.
Hi�ba t�nik azonban valami gonosznak vagy j�nak, nem biztos, hogy val�ban az - �s minden mes�ben van egy csipetnyi igazs�g.');
Insert into VOROS.KONYV (ID,SZERZO,CIM,AR,OLDALSZAM,KIADO,ELERESIUT,KIADASIEV,TIPUS,LEIRAS) values ('11','Amanda Yee','J�bar�tok - A hivatalos szak�csk�nyv','5192','201','21. Sz�zad Kiad�','https://s03.static.libri.hu/cover/14/a/6930868_5.jpg','2021','K�nyv','Trombit�ld �ssze a j�bar�tokat, �s �dv�z�lj�tek egy�tt ezt a t�bb mint 100 receptet ("Na, mi a helyzet?"), amelyet h�n szeretett t�v�m�sorotok ihletett. Ak�r minden h�jjal megkent chef vagy, mint Monica Geller, ak�r most ind�tasz catering c�get, mint Phoebe Buffay, vagy r�gi v�g�s� hasp�k vagy, mint Joey Tribbiani, a J�bar�tok - A hivatalos szak�csk�nyv egy sor k�l�nb�z� receptet k�n�l a k�l�nb�z� szakmai szinten lev� chefeknek. El��telek, f�fog�sok, italok �s desszertek - minden egyes fejezet olyan ikonikus csemeg�ket tartogat, mint Monica H�labar�t Lakom�ja, Rachel Hagyom�nyos Angol Rakott Kr�mdesszertje, a S�lt Krumpli - csakis Joeynak, a Chandler-f�le "Tej, amit elr�gsz", Phoebe nagyij�nak csokitall�rja �s az elmaradhatatlan Hidrat�l� Szendvics.');
Insert into VOROS.KONYV (ID,SZERZO,CIM,AR,OLDALSZAM,KIADO,ELERESIUT,KIADASIEV,TIPUS,LEIRAS) values ('12','Dagmar Von Cramm','Babakonyha - Csecsem�kort�l kisgyerekkorig','4360','192','Central M�diacsoport Zrt.','https://s03.static.libri.hu/cover/cf/9/4869660_5.jpg','2021','K�nyv','�nycsikland� receptek kicsiknek �s nagyoknak. Finom k�s�k �s k�zzel ehet� �telek a legkisebbeknek, egyszer�en elk�sz�thet� baba-mama receptek, �s sok m�s ennival�, amit a csal�d minden tagja sz�vesen fogyaszt.
Naprak�sz ismeretek a t�ma egyik legnagyobb szak�rt�j�t�l, Dagmar von Crammt�l. Szoptat�si tippek, hozz�t�pl�l�s l�p�sr�l l�p�sre, j�l kamatoztathat� tud�s a higi�nia, a konyhai ismeretek, az �telintolerancia, az allergia, a cukor �s a vega t�pl�lkoz�s t�mak�reib�l.
Amit teh�t ez a k�nyv ny�jt: v�ltozatos, kiegyens�lyozott t�pl�lkoz�st biztos�t� receptek a kisgyermek egyes �letszakaszaihoz igaz�tva, valamint hasznos v�laszok a kicsi fejl�d�s�t �rint� k�rd�sekre.');
Insert into VOROS.KONYV (ID,SZERZO,CIM,AR,OLDALSZAM,KIADO,ELERESIUT,KIADASIEV,TIPUS,LEIRAS) values ('13','Dr. Esche-Belke Susanne - Dr. Kirschner-Brouns Suzann','N�k a v�ltoz�kor k�sz�b�n - A hormon�lis egyens�ly titkai','3514','320','Partvonal K�nyvkiad� Kft','https://s03.static.libri.hu/cover/ae/8/6945651_5.jpg','2021','K�nyv','A v�ltoz�kor nem a vil�g v�ge, hanem �j lehet�s�gek kezdete! Depresszi�, �z�leti f�jdalom, migr�n, hangulatingadoz�s, szapora sz�vver�s, h�hull�m, s�lygyarapod�s - ezek a k�nyelmetlen �s sokszor s�lyos t�netek gyakran jelentkeznek a negyven feletti n�kn�l. Az orvostudom�ny v�lasza egy�rtelm�: a v�ltoz�kor el�fut�r�nak tekinthet� jelens�gek hormon�lis eredet�ek, �s m�r a negyvenes �veik elej�n pokoll� tehetik a n�k h�tk�znapjait. Sajnos nem mindig kezelik megfelel�en a probl�m�t: nem ismerik fel az okokat, vagy elv�rj�k a n�kt�l, hogy "�ljenek egy�tt" a hormonv�ltoz�ssal.');
Insert into VOROS.KONYV (ID,SZERZO,CIM,AR,OLDALSZAM,KIADO,ELERESIUT,KIADASIEV,TIPUS,LEIRAS) values ('14','Szitnyain� Gottlieb �va, Maros Judit','Kon-Takt 2 Arbeitsbuch','910','120','Mozaik','https://www.tankonyvkatalogus.hu/images/cover/OH-NEM10M.jpg','2012','Tank�nyv','N�met nyelv� munkaf�zet');
Insert into VOROS.KONYV (ID,SZERZO,CIM,AR,OLDALSZAM,KIADO,ELERESIUT,KIADASIEV,TIPUS,LEIRAS) values ('15','Pierre Rabhi','P�nzt akarunk vagy �letet?','1900','190','L'' HARMATTAN KFT.','https://s04.static.libri.hu/cover/d2/9/7315717_5.jpg','2014','Antikv�r','Pierre Rabhi a kort�rs �kol�giai gondolkod�s egyik legnagyszer�bb alakja, aki alap�tv�nyai r�v�n h�rom kontinensen van jelen, �s t�zezrek �let�be hozott v�ltoz�st Afrik�t�l Indi�ig. Mint Yehudi Menuhin �rja r�la: Ez az egyszer� �letszents�g�, tiszt�n �s vil�gosan gondolkod� ember, akinek k�lt�i sz�ps�g� nyelvezete izz� szenved�lyr�l tan�skodik, saj�t ver�t�k�vel term�keny�tette meg a medd� f�ldeket. Ez a k�tet filoz�fiai �s b�lcseleti �r�sait gy�jti egybe.');
Insert into VOROS.KONYV (ID,SZERZO,CIM,AR,OLDALSZAM,KIADO,ELERESIUT,KIADASIEV,TIPUS,LEIRAS) values ('16','Erik Burnham','P�kember: P�kvad�szat - Marvel akci�h�s�k','1192','72','Vad Vir�gok Kiad� Kft.','https://s03.static.libri.hu/cover/8c/f/7383908_5.jpg','2021','Magazin','Peter Parker, Miles Morales �s Gwen Stacy egy csapatt� �llt �ssze, �s ifjonti kalandoz�saiknak semmi sem szabhat hat�rt!
Kiv�ve persze a h�zi feladatok t�mkelege, a szakmai gyakorlat
a H�rharson�ban, valamint egy �j, vesz�lyes ellenf�l, aki kiszemelte �ket mag�nak: Kraven, a vad�sz! H�seink egym�s ut�n ker�lnek a h�l�j�ba, hogy kezdet�t vehesse a nagy �sszecsap�s. Lehet, hogy ezzel v�get �r Peter, Miles �s Gwen p�kos p�lyafut�sa?
Erik Burnham �r� �s Christoher Jones rajzol� humorban �s izgalomban b�velked� t�rt�net�b�l kider�l.');
Insert into VOROS.KONYV (ID,SZERZO,CIM,AR,OLDALSZAM,KIADO,ELERESIUT,KIADASIEV,TIPUS,LEIRAS) values ('17','Phil Noto - Greg Pak','Star Wars: A l�zad�k v�gzete','4232','128','SZUKITS K�NYVKIAD� �S K�NYVKER','https://s05.static.libri.hu/cover/6c/3/7300744_5.jpg','2021','Magazin','L�zad�k �s zsiv�nyok n�pes�tik be a k�preg�ny oldalait, melyeken t�rt�net�nk lassan a v�g�hez k�zeledik. A Felkel�k Sz�vets�g�nek h�sei mer�sz k�ldet�sekre indultak, hogy zavart keltsenek birodalomszerte. De ki az a Dar Champion, �s mennyire b�zhat meg benne Leia hercegn�, amikor Han Solo �lete a t�t? Milyen megr�z� �lm�nyben lesz r�sze Luke Skywalkernek, amikor Warba v�g�l felfedi val�di kil�t�t? K�pes lesz C-3PO meghozni a v�gs� �ldozatot, amikor lehetetlen d�nt�s el� ker�l? Csubakka vajon �llni fogja a sarat a Darth Vaderrel szembeni �d�z k�zelharc sor�n?');
Insert into VOROS.KONYV (ID,SZERZO,CIM,AR,OLDALSZAM,KIADO,ELERESIUT,KIADASIEV,TIPUS,LEIRAS) values ('18','Sean Murphy','Batman - A Feh�r Lovag �tka','6796','272','FUMAX KFT','https://s02.static.libri.hu/cover/e9/e/7248895_5.jpg','2021','Magazin','Joker sz�vetkezik Azraellel, hogy seg�tsen neki leleplezni a Wayne csal�d hagyat�k�nak d�bbenetes titk�t - �s nem mell�kesen t�nkretenni Gothamet. Batman a v�ros �s vesz�lyben l�v� szerettei seg�ts�g�re siet, �m miut�n �seinek titka napvil�gra ker�l, k�nytelen megk�rd�jelezni mindent, amit eddig �nmag�r�l �s a Gotham �let�ben bet�lt�tt szerep�r�l hitt.
');
Insert into VOROS.KONYV (ID,SZERZO,CIM,AR,OLDALSZAM,KIADO,ELERESIUT,KIADASIEV,TIPUS,LEIRAS) values ('19','Szitnyain� Gottlieb �va, Maros Judit','Kon-Takt 2 Lehrbuch','1460','112','Mozaik','https://www.tankonyvkatalogus.hu/images/cover/OH-NEM10T.jpg','2012','Tank�nyv','N�met nyelv� tank�nyv');
Insert into VOROS.KONYV (ID,SZERZO,CIM,AR,OLDALSZAM,KIADO,ELERESIUT,KIADASIEV,TIPUS,LEIRAS) values ('20',' Antaln� dr. Szab� �gnes, dr. Ra�tz Judit','Magyar nyelv �s kommunik�ci�. Tank�nyv a 11. �vfolyam sz�m�ra','790','68','Mozaik','https://www.tankonyvkatalogus.hu/images/cover/NT-17337.jpg','2012','Tank�nyv','Magyar nyelvtank�nyv');
Insert into VOROS.KONYV (ID,SZERZO,CIM,AR,OLDALSZAM,KIADO,ELERESIUT,KIADASIEV,TIPUS,LEIRAS) values ('21','David Attenborough ','Egy ifj� term�szettud�s t�rt�netei II. - A s�rk�ny nyom�ban - Hangosk�nyv','3230','290','Kossuth Kiad� / Mojzer Kiad�','https://s01.static.libri.hu/cover/11/c/7298062_5.jpg','2021','Hangosk�nyv','Sir David Attenborough t�voli t�jakr�l, �llatokr�l �s kult�r�kr�l sz�l� lebilincsel� t�rt�netein m�r t�bb gener�ci�nyi lelkes term�szetkedvel� �s term�szetv�d� n�tt fel. Hangosk�nyv�nk egy indon�ziai exped�ci� kalandjait mutatja be. Most sem alakul minden a terv szerint, ad�dhattak olyan helyzetek, hogy a csapatnak a sziget egyetlen kamionos�t kellett megtal�lniuk, a k�rny�k egyetlen dzsipj�t k�lcs�nk�rni�k, vagy �ppen heteket v�rni egy-egy haj�s vagy rep�l�s sz�ll�t�sra. Ezeket a helyzeteket �s a bel�l�k ad�d� bosszant�an komikus szitu�ci�kat a szerz� j� �rz�kkel, humorosan mutatja be, �rz�keltetve vel�nk, hogy az�rt a tr�pusokon se kolb�szb�l van a ker�t�s.');
Insert into VOROS.KONYV (ID,SZERZO,CIM,AR,OLDALSZAM,KIADO,ELERESIUT,KIADASIEV,TIPUS,LEIRAS) values ('22','Sir ARTHUR CONAN DOYLE','A s�t�n kuty�ja - Hangosk�nyv','3106',null,'HUNGAROTON','https://s03.static.libri.hu/cover/6c/2/7232763_5.jpg','2021','Hangosk�nyv','A detekt�vreg�ny-irodalom klasszikus�nak, Sir Arthur Conan Doyle-nak (1859 - 1930) egyik legn�pszer�bb reg�ny�t Szacsvay L�szl� el�ad�s�ban hallhatjuk.');
Insert into VOROS.KONYV (ID,SZERZO,CIM,AR,OLDALSZAM,KIADO,ELERESIUT,KIADASIEV,TIPUS,LEIRAS) values ('23','Robert Louis Stevenson','Dr. Jekyll �s Mr. Hyde k�l�n�s esete - Hangosk�nyv','2793','212','TITIS TAN�CSAD� KFT.','https://s06.static.libri.hu/cover/79/1/6910508_5.jpg','2020','Hangosk�nyv','Stevenson kisreg�nye a Jekyll-Hyde p�rost napjainkig az emberben lakoz� j� �s gonosz szimb�lum�v� tette. Az 1880-as �vekben jelent meg, 1920 �s 2000 k�z�tt sz�mos film k�sz�lt bel�le, majd sz�ndarabok �s musical is. Nagy hat�s�t nem csak a kiss� h�tborzongat� le�r�snak, a tudom�ny �s a transzcendens gondolkod�s �tk�ztet�s�nek, hanem annak is k�sz�nhet�, hogy az emberi l�lek m�k�d�s�t kor�t megel�z� realit�ssal elemzi. A t�rt�netben a gonosz kerekedik f�l�l, de v�g�l nem gy�zedelmeskedik, maga is elbukik. Hirtling Isv�n el�ad�sa �rz�kletesen kiemeli a f�h�s bels� v�v�d�sa �s a k�ls� szeml�l�k angolos t�vols�gtart�sa k�z�tt mindv�gig fesz�l� ellent�tet.');
Insert into VOROS.KONYV (ID,SZERZO,CIM,AR,OLDALSZAM,KIADO,ELERESIUT,KIADASIEV,TIPUS,LEIRAS) values ('24','Ella Maise','Els� pillant�s - 2019 - Alexander �s Maya 1.','2565','244','�LOMGY�R KIAD�','https://s04.static.libri.hu/cover/d0/4/5767536_5.jpg','2019','Antikv�r','Ez a t�rt�net egyedi �s im�dnival�! Dayreader
A nevem Maya, �s nem ugyanaz a l�ny vagyok, aki egy h�napja voltam.
�ress�get �rzek a mellkasomban. A sz�vem megszakadt a f�jdalomt�l.
Azokon a s�t�t �jszak�kon, azokban a f�jdalmas pillanatokban, amikor visszaeml�kszem, mik�nt szor�tottam sikoltva ap�m hideg, �lettelen kez�t, nehezemre esik m�g a l�legzetv�tel is, ahogy �rzem a vesztes�g s�ly�t r�m nehezedni.
De minden t�rt�netben van egy h�s is, ugye? Egy h�s, akit att�l a pillanatt�l semmibe vettem, hogy kinyitotta a sz�j�t.
A neve Alexander. � az elker�lhetetlen, akir�l soha nem gondoltam, hogy megtal�lom. Az egyetlen, akihez az �sszet�rt sz�vem h�z. A l�nye, az �rint�se, minden, amit tett, hogy elviselhet�bb� tegye a f�jdalmam, �r�kk� nyomot hagy bennem.');
Insert into VOROS.KONYV (ID,SZERZO,CIM,AR,OLDALSZAM,KIADO,ELERESIUT,KIADASIEV,TIPUS,LEIRAS) values ('25','Stephen King','Kedvencek temet�je - 2019','5700','587','EUR�PA K�NYVKIAD� KFT.','https://s02.static.libri.hu/cover/8a/e/5133250_5.jpg','2019','Antikv�r','Dr. Louis Creed, a fiatal orvos kit�n� �ll�st kapott: a Maine-i Egyetem rendel�j�nek lett a vezet�je, ez�rt Chicag�b�l az idilli New England-i t�jban �ll�, mag�nyos h�zba k�lt�zik csal�dj�val feles�g�vel, Rachellel, �t�ves l�nyukkal, Ellie-vel �s m�sf�l �ves kisfiukkal, Gage-dzsel. Boldogan, a sz�p j�v� rem�ny�ben veszik birtokba �j otthonukat Az els� gondra az �t t�loldal�n, vel�k �tellenben �l� �regember, Jud h�vja f�l a figyelm�ket: a t�jat kett�szel� orsz�g�ton �jjel-nappal olajsz�ll�t� tart�lykocsik d�b�r�gnek, hal�los vesz�lynek t�ve ki a h�zi�llatokat �s az apr�s�gokat. Nem v�letlen�l van a k�zelben egy nyomaszt� l�gk�r�, �don temet� az elg�zolt h�zi�llatok sz�m�ra Az els� trauma akkor �ri Louist, amikor egy baleset �ldozat�ul esett, haldokl� fi� a rendel�ben dadog� szavakkal �va inti az �llattemet�n t�li veszedelemt�l.');
Insert into VOROS.KONYV (ID,SZERZO,CIM,AR,OLDALSZAM,KIADO,ELERESIUT,KIADASIEV,TIPUS,LEIRAS) values ('38','Bauer Barbara','A fekete r�zsa','2100','312','Jaffa Kiad�','https://s06.static.libri.hu/cover/94/6/6704856_5.jpg','2020','K�nyv','Azt mondj�k, fekete r�zsa nem l�tezik. Sz�ne csup�n f�nyek j�t�ka, �rnyalatok keltette l�tszat. Sommer Anna azonban nap mint nap ott l�tja a sz�l�ben, a sorok v�g�be �ltetve. Vajon egyszer megtudja majd, milyen is a sz�ne val�j�ban?');
REM INSERTING into VOROS.MAGAZIN
SET DEFINE OFF;
Insert into VOROS.MAGAZIN (KONYV_ID,GYAKORISAG) values ('1','heti');
Insert into VOROS.MAGAZIN (KONYV_ID,GYAKORISAG) values ('2','havi');
Insert into VOROS.MAGAZIN (KONYV_ID,GYAKORISAG) values ('16','heti');
Insert into VOROS.MAGAZIN (KONYV_ID,GYAKORISAG) values ('17','heti');
Insert into VOROS.MAGAZIN (KONYV_ID,GYAKORISAG) values ('18','heti');
REM INSERTING into VOROS.MUFAJ
SET DEFINE OFF;
Insert into VOROS.MUFAJ (ID,NEV) values ('26','�letrajz/�letm�d');
Insert into VOROS.MUFAJ (ID,NEV) values ('1','Erotika');
Insert into VOROS.MUFAJ (ID,NEV) values ('2','Dr�ma');
Insert into VOROS.MUFAJ (ID,NEV) values ('3','Krimi');
Insert into VOROS.MUFAJ (ID,NEV) values ('4','V�gj�t�k');
Insert into VOROS.MUFAJ (ID,NEV) values ('5','Jazz');
Insert into VOROS.MUFAJ (ID,NEV) values ('6','Pop');
Insert into VOROS.MUFAJ (ID,NEV) values ('7','Rap');
Insert into VOROS.MUFAJ (ID,NEV) values ('8','Misztikus');
Insert into VOROS.MUFAJ (ID,NEV) values ('9','Akci�');
Insert into VOROS.MUFAJ (ID,NEV) values ('10','Csal�di');
Insert into VOROS.MUFAJ (ID,NEV) values ('11','Western');
Insert into VOROS.MUFAJ (ID,NEV) values ('12','Rajzfilm');
Insert into VOROS.MUFAJ (ID,NEV) values ('13','K�nny�zene');
Insert into VOROS.MUFAJ (ID,NEV) values ('14','Komolyzene');
Insert into VOROS.MUFAJ (ID,NEV) values ('15','N�pzene');
Insert into VOROS.MUFAJ (ID,NEV) values ('16','Spiritu�lis zene');
Insert into VOROS.MUFAJ (ID,NEV) values ('17','Fantasy');
Insert into VOROS.MUFAJ (ID,NEV) values ('18','Humor-kabar�');
Insert into VOROS.MUFAJ (ID,NEV) values ('19','Romantkius');
Insert into VOROS.MUFAJ (ID,NEV) values ('20','T�rt�nelmi');
Insert into VOROS.MUFAJ (ID,NEV) values ('21','H�bor�s');
Insert into VOROS.MUFAJ (ID,NEV) values ('22','M�v�sz');
Insert into VOROS.MUFAJ (ID,NEV) values ('23','Horror');
REM INSERTING into VOROS.MUFAJA
SET DEFINE OFF;
Insert into VOROS.MUFAJA (ID,MUFAJ_ID,KONYV_ID,MULTIMEDIA_ID) values ('1','4','3',null);
Insert into VOROS.MUFAJA (ID,MUFAJ_ID,KONYV_ID,MULTIMEDIA_ID) values ('2','3','4',null);
Insert into VOROS.MUFAJA (ID,MUFAJ_ID,KONYV_ID,MULTIMEDIA_ID) values ('3','2','7',null);
Insert into VOROS.MUFAJA (ID,MUFAJ_ID,KONYV_ID,MULTIMEDIA_ID) values ('5','26','13',null);
Insert into VOROS.MUFAJA (ID,MUFAJ_ID,KONYV_ID,MULTIMEDIA_ID) values ('6','26','15',null);
Insert into VOROS.MUFAJA (ID,MUFAJ_ID,KONYV_ID,MULTIMEDIA_ID) values ('7','26','13',null);
Insert into VOROS.MUFAJA (ID,MUFAJ_ID,KONYV_ID,MULTIMEDIA_ID) values ('8','26','15',null);
Insert into VOROS.MUFAJA (ID,MUFAJ_ID,KONYV_ID,MULTIMEDIA_ID) values ('9','4','3',null);
Insert into VOROS.MUFAJA (ID,MUFAJ_ID,KONYV_ID,MULTIMEDIA_ID) values ('10','3','4',null);
Insert into VOROS.MUFAJA (ID,MUFAJ_ID,KONYV_ID,MULTIMEDIA_ID) values ('11','2','7',null);
Insert into VOROS.MUFAJA (ID,MUFAJ_ID,KONYV_ID,MULTIMEDIA_ID) values ('13','4','3',null);
Insert into VOROS.MUFAJA (ID,MUFAJ_ID,KONYV_ID,MULTIMEDIA_ID) values ('14','3','4',null);
Insert into VOROS.MUFAJA (ID,MUFAJ_ID,KONYV_ID,MULTIMEDIA_ID) values ('15','2','7',null);
Insert into VOROS.MUFAJA (ID,MUFAJ_ID,KONYV_ID,MULTIMEDIA_ID) values ('16','26','8',null);
Insert into VOROS.MUFAJA (ID,MUFAJ_ID,KONYV_ID,MULTIMEDIA_ID) values ('17','8','9',null);
Insert into VOROS.MUFAJA (ID,MUFAJ_ID,KONYV_ID,MULTIMEDIA_ID) values ('18','17','9',null);
Insert into VOROS.MUFAJA (ID,MUFAJ_ID,KONYV_ID,MULTIMEDIA_ID) values ('19','10','12',null);
Insert into VOROS.MUFAJA (ID,MUFAJ_ID,KONYV_ID,MULTIMEDIA_ID) values ('20','4','10',null);
Insert into VOROS.MUFAJA (ID,MUFAJ_ID,KONYV_ID,MULTIMEDIA_ID) values ('21','8','10',null);
Insert into VOROS.MUFAJA (ID,MUFAJ_ID,KONYV_ID,MULTIMEDIA_ID) values ('22','9','10',null);
Insert into VOROS.MUFAJA (ID,MUFAJ_ID,KONYV_ID,MULTIMEDIA_ID) values ('23','17','10',null);
Insert into VOROS.MUFAJA (ID,MUFAJ_ID,KONYV_ID,MULTIMEDIA_ID) values ('24','10','11',null);
Insert into VOROS.MUFAJA (ID,MUFAJ_ID,KONYV_ID,MULTIMEDIA_ID) values ('25','18','11',null);
Insert into VOROS.MUFAJA (ID,MUFAJ_ID,KONYV_ID,MULTIMEDIA_ID) values ('26','26','13',null);
Insert into VOROS.MUFAJA (ID,MUFAJ_ID,KONYV_ID,MULTIMEDIA_ID) values ('27','26','15',null);
Insert into VOROS.MUFAJA (ID,MUFAJ_ID,KONYV_ID,MULTIMEDIA_ID) values ('28','8','21',null);
Insert into VOROS.MUFAJA (ID,MUFAJ_ID,KONYV_ID,MULTIMEDIA_ID) values ('29','10','21',null);
Insert into VOROS.MUFAJA (ID,MUFAJ_ID,KONYV_ID,MULTIMEDIA_ID) values ('30','17','21',null);
Insert into VOROS.MUFAJA (ID,MUFAJ_ID,KONYV_ID,MULTIMEDIA_ID) values ('31','3','22',null);
Insert into VOROS.MUFAJA (ID,MUFAJ_ID,KONYV_ID,MULTIMEDIA_ID) values ('32','9','22',null);
Insert into VOROS.MUFAJA (ID,MUFAJ_ID,KONYV_ID,MULTIMEDIA_ID) values ('33','10','22',null);
Insert into VOROS.MUFAJA (ID,MUFAJ_ID,KONYV_ID,MULTIMEDIA_ID) values ('34','3','23',null);
Insert into VOROS.MUFAJA (ID,MUFAJ_ID,KONYV_ID,MULTIMEDIA_ID) values ('35','9','23',null);
Insert into VOROS.MUFAJA (ID,MUFAJ_ID,KONYV_ID,MULTIMEDIA_ID) values ('36','10','23',null);
Insert into VOROS.MUFAJA (ID,MUFAJ_ID,KONYV_ID,MULTIMEDIA_ID) values ('37','1','24',null);
Insert into VOROS.MUFAJA (ID,MUFAJ_ID,KONYV_ID,MULTIMEDIA_ID) values ('38','2','24',null);
Insert into VOROS.MUFAJA (ID,MUFAJ_ID,KONYV_ID,MULTIMEDIA_ID) values ('39','19','24',null);
Insert into VOROS.MUFAJA (ID,MUFAJ_ID,KONYV_ID,MULTIMEDIA_ID) values ('40','23','25',null);
Insert into VOROS.MUFAJA (ID,MUFAJ_ID,KONYV_ID,MULTIMEDIA_ID) values ('41','8','25',null);
Insert into VOROS.MUFAJA (ID,MUFAJ_ID,KONYV_ID,MULTIMEDIA_ID) values ('42','8','16',null);
Insert into VOROS.MUFAJA (ID,MUFAJ_ID,KONYV_ID,MULTIMEDIA_ID) values ('43','8','17',null);
Insert into VOROS.MUFAJA (ID,MUFAJ_ID,KONYV_ID,MULTIMEDIA_ID) values ('44','8','18',null);
Insert into VOROS.MUFAJA (ID,MUFAJ_ID,KONYV_ID,MULTIMEDIA_ID) values ('45','9','16',null);
Insert into VOROS.MUFAJA (ID,MUFAJ_ID,KONYV_ID,MULTIMEDIA_ID) values ('46','9','17',null);
Insert into VOROS.MUFAJA (ID,MUFAJ_ID,KONYV_ID,MULTIMEDIA_ID) values ('47','9','18',null);
Insert into VOROS.MUFAJA (ID,MUFAJ_ID,KONYV_ID,MULTIMEDIA_ID) values ('48','8','1',null);
Insert into VOROS.MUFAJA (ID,MUFAJ_ID,KONYV_ID,MULTIMEDIA_ID) values ('49','9','1',null);
Insert into VOROS.MUFAJA (ID,MUFAJ_ID,KONYV_ID,MULTIMEDIA_ID) values ('50','8','2',null);
Insert into VOROS.MUFAJA (ID,MUFAJ_ID,KONYV_ID,MULTIMEDIA_ID) values ('51','9','2',null);
Insert into VOROS.MUFAJA (ID,MUFAJ_ID,KONYV_ID,MULTIMEDIA_ID) values ('52','12',null,'8');
REM INSERTING into VOROS.MULTIMEDIA
SET DEFINE OFF;
Insert into VOROS.MULTIMEDIA (ID,CIM,AR,ELERESIUT) values ('2','Positions','12000','https://upload.wikimedia.org/wikipedia/en/a/a0/Ariana_Grande_-_Positions.png');
Insert into VOROS.MULTIMEDIA (ID,CIM,AR,ELERESIUT) values ('3','Revelaci�n ','5000','https://upload.wikimedia.org/wikipedia/en/3/34/Selena_Gomez_-_Revelaci%C3%B3n.png');
Insert into VOROS.MULTIMEDIA (ID,CIM,AR,ELERESIUT) values ('4','The Highlights','5000','https://upload.wikimedia.org/wikipedia/hu/1/12/The_Weeknd_-_The_Highlights_%28album_cover%29.png');
Insert into VOROS.MULTIMEDIA (ID,CIM,AR,ELERESIUT) values ('5','Az AranyPinty','1500','https://media.port.hu/images/001/162/350x510/916.jpg');
Insert into VOROS.MULTIMEDIA (ID,CIM,AR,ELERESIUT) values ('6','Tenet','2800','https://media.port.hu/images/001/244/350x510/378.jpg');
Insert into VOROS.MULTIMEDIA (ID,CIM,AR,ELERESIUT) values ('7','Judy','3000','https://media.port.hu/images/001/184/350x510/480.jpg');
Insert into VOROS.MULTIMEDIA (ID,CIM,AR,ELERESIUT) values ('8','Sonic, a s�ndiszn�','2800','https://media.port.hu/images/001/190/350x510/896.jpg');
Insert into VOROS.MULTIMEDIA (ID,CIM,AR,ELERESIUT) values ('9','D�lid�','1800','https://media.port.hu/images/000/139/415x310/454.jpg');
Insert into VOROS.MULTIMEDIA (ID,CIM,AR,ELERESIUT) values ('10','Dolittle','4700','https://media.port.hu/images/001/184/350x510/522.jpg');
Insert into VOROS.MULTIMEDIA (ID,CIM,AR,ELERESIUT) values ('22','A rem�ny rabjai','1500',' https://media.port.hu/images/001/084/200x286/126.jpg');
Insert into VOROS.MULTIMEDIA (ID,CIM,AR,ELERESIUT) values ('23','Evermore','5000','https://upload.wikimedia.org/wikipedia/en/0/0a/Taylor_Swift_-_Evermore.png');
REM INSERTING into VOROS.RAKTARON
SET DEFINE OFF;
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('1','1',null,null,'1','10');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('2','1',null,null,'2','11');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('3','1',null,null,'3','15');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('4','1',null,null,'4','20');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('5','1',null,null,'5','12');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('6','1',null,null,'6','13');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('7','1',null,null,'7','5');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('8','1',null,null,'8','7');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('9','1',null,null,'9','21');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('10','1',null,null,'10','40');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('11','2',null,null,'1','12');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('12','2',null,null,'2','41');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('13','2',null,null,'3','74');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('14','2',null,null,'4','41');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('15','2',null,null,'5','20');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('16','2',null,null,'6','14');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('17','2',null,null,'7','11');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('18','2',null,null,'8','10');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('19','2',null,null,'9','24');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('20','2',null,null,'10','22');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('21','3',null,null,'1','10');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('22','3',null,null,'2','52');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('23','3',null,null,'3','3');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('24','3',null,null,'4','10');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('25','3',null,null,'5','7');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('26','4',null,null,'6','10');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('27','4',null,null,'5','10');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('28','5',null,null,'5','41');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('29','5',null,null,'6','21');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('30','7',null,null,'4','14');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('31','8',null,null,'5','12');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('32','7',null,null,'5','17');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('33',null,'1',null,'5','10');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('34',null,'2',null,'5','14');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('35',null,'3',null,'5','7');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('36',null,'4',null,'5','14');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('37',null,'5',null,'5','3');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('38',null,'6',null,'5','18');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('39',null,'7',null,'5','20');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('40',null,'8',null,'5','34');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('41',null,'9',null,'5','14');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('42',null,'10',null,'5','4');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('43',null,'1',null,'6','41');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('44',null,'2',null,'6','12');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('45',null,'3',null,'6','14');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('46',null,'1',null,'1','2');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('47',null,'2',null,'1','3');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('48',null,'3',null,'7','10');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('49',null,'4',null,'4','17');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('50',null,'5',null,'3','7');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('51','9',null,null,'1','10');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('52','9',null,null,'2','11');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('53','9',null,null,'3','20');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('54','9',null,null,'4','30');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('55','9',null,null,'5','14');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('56','9',null,null,'6','20');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('57','9',null,null,'7','21');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('58','9',null,null,'8','6');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('59','9',null,null,'9','4');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('60','9',null,null,'10','3');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('61','10',null,null,'2','6');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('62','10',null,null,'3','7');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('63','10',null,null,'1','2');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('64','10',null,null,'4','20');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('65','10',null,null,'5','10');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('66','10',null,null,'6','3');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('67','10',null,null,'7','4');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('68','10',null,null,'8','12');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('69','10',null,null,'9','15');
Insert into VOROS.RAKTARON (ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,BOLT_ID,MENNYISEG) values ('70','10',null,null,'10','4');
REM INSERTING into VOROS.SPRING_SESSION
SET DEFINE OFF;
Insert into VOROS.SPRING_SESSION (PRIMARY_ID,SESSION_ID,CREATION_TIME,LAST_ACCESS_TIME,MAX_INACTIVE_INTERVAL,EXPIRY_TIME,PRINCIPAL_NAME) values ('1a541642-e8ba-4e2d-a1a0-6192bdf1f205','994376b0-77e1-4a79-9a54-148fa859076d','1620585121338','1620585283221','1800','1620587083221',null);
REM INSERTING into VOROS.SPRING_SESSION_ATTRIBUTES
SET DEFINE OFF;
Insert into VOROS.SPRING_SESSION_ATTRIBUTES (SESSION_PRIMARY_ID,ATTRIBUTE_NAME) values ('1a541642-e8ba-4e2d-a1a0-6192bdf1f205','logged_in_user');
REM INSERTING into VOROS.TANKONYV
SET DEFINE OFF;
Insert into VOROS.TANKONYV (KONYV_ID,AJANLOTTKOR,FAJTA) values ('6','17','tank�nyv');
Insert into VOROS.TANKONYV (KONYV_ID,AJANLOTTKOR,FAJTA) values ('5','17','feladatgy�jtem�ny');
Insert into VOROS.TANKONYV (KONYV_ID,AJANLOTTKOR,FAJTA) values ('19','17','tank�nyv');
Insert into VOROS.TANKONYV (KONYV_ID,AJANLOTTKOR,FAJTA) values ('14','17','feladatgy�jtem�ny');
Insert into VOROS.TANKONYV (KONYV_ID,AJANLOTTKOR,FAJTA) values ('20','17','tank�nyv');
REM INSERTING into VOROS.TARTOZIK
SET DEFINE OFF;
Insert into VOROS.TARTOZIK (ID,VASARLAS_ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,MENNYISEG) values ('7','5','4',null,null,'1');
Insert into VOROS.TARTOZIK (ID,VASARLAS_ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,MENNYISEG) values ('8','6',null,'6',null,'1');
Insert into VOROS.TARTOZIK (ID,VASARLAS_ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,MENNYISEG) values ('10','8',null,'7',null,'1');
Insert into VOROS.TARTOZIK (ID,VASARLAS_ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,MENNYISEG) values ('11','9','15',null,null,'1');
Insert into VOROS.TARTOZIK (ID,VASARLAS_ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,MENNYISEG) values ('14','12',null,'22',null,'1');
Insert into VOROS.TARTOZIK (ID,VASARLAS_ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,MENNYISEG) values ('21','21','1',null,null,'1');
Insert into VOROS.TARTOZIK (ID,VASARLAS_ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,MENNYISEG) values ('15','13',null,'1',null,'1');
Insert into VOROS.TARTOZIK (ID,VASARLAS_ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,MENNYISEG) values ('16','13',null,'2',null,'1');
Insert into VOROS.TARTOZIK (ID,VASARLAS_ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,MENNYISEG) values ('17','13',null,'6',null,'1');
Insert into VOROS.TARTOZIK (ID,VASARLAS_ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,MENNYISEG) values ('18','14',null,'9',null,'1');
Insert into VOROS.TARTOZIK (ID,VASARLAS_ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,MENNYISEG) values ('3','2','6',null,null,'1');
Insert into VOROS.TARTOZIK (ID,VASARLAS_ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,MENNYISEG) values ('4','2','3',null,null,'1');
Insert into VOROS.TARTOZIK (ID,VASARLAS_ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,MENNYISEG) values ('5','3',null,'3',null,'1');
Insert into VOROS.TARTOZIK (ID,VASARLAS_ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,MENNYISEG) values ('6','4',null,'4',null,'1');
Insert into VOROS.TARTOZIK (ID,VASARLAS_ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,MENNYISEG) values ('9','7','16',null,null,'1');
Insert into VOROS.TARTOZIK (ID,VASARLAS_ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,MENNYISEG) values ('12','10','4',null,null,'1');
Insert into VOROS.TARTOZIK (ID,VASARLAS_ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,MENNYISEG) values ('13','11','6',null,null,'1');
Insert into VOROS.TARTOZIK (ID,VASARLAS_ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,MENNYISEG) values ('1','1','1',null,null,'1');
Insert into VOROS.TARTOZIK (ID,VASARLAS_ID,KONYV_ID,MULTIMEDIA_ID,AJANDEK_ID,MENNYISEG) values ('2','1','2',null,null,'1');
REM INSERTING into VOROS.VASARLAS
SET DEFINE OFF;
Insert into VOROS.VASARLAS (ID,SZAMLAIGENYES,MIKOR,ATVETEL) values ('5','1',to_date('21-M�J.  -09','RR-MON-DD'),'hazhoz');
Insert into VOROS.VASARLAS (ID,SZAMLAIGENYES,MIKOR,ATVETEL) values ('6','0',to_date('21-M�J.  -09','RR-MON-DD'),'uzletbe');
Insert into VOROS.VASARLAS (ID,SZAMLAIGENYES,MIKOR,ATVETEL) values ('8','1',to_date('21-M�J.  -09','RR-MON-DD'),'hazhoz');
Insert into VOROS.VASARLAS (ID,SZAMLAIGENYES,MIKOR,ATVETEL) values ('9','0',to_date('21-M�J.  -09','RR-MON-DD'),'uzletbe');
Insert into VOROS.VASARLAS (ID,SZAMLAIGENYES,MIKOR,ATVETEL) values ('12','0',to_date('21-M�J.  -09','RR-MON-DD'),'uzletbe');
Insert into VOROS.VASARLAS (ID,SZAMLAIGENYES,MIKOR,ATVETEL) values ('21','1',to_date('21-M�J.  -09','RR-MON-DD'),'hazhoz');
Insert into VOROS.VASARLAS (ID,SZAMLAIGENYES,MIKOR,ATVETEL) values ('13','0',to_date('21-M�J.  -09','RR-MON-DD'),'hazhoz');
Insert into VOROS.VASARLAS (ID,SZAMLAIGENYES,MIKOR,ATVETEL) values ('14','0',to_date('21-M�J.  -09','RR-MON-DD'),'uzletbe');
Insert into VOROS.VASARLAS (ID,SZAMLAIGENYES,MIKOR,ATVETEL) values ('2','0',to_date('21-M�J.  -09','RR-MON-DD'),'uzletbe');
Insert into VOROS.VASARLAS (ID,SZAMLAIGENYES,MIKOR,ATVETEL) values ('3','1',to_date('21-M�J.  -09','RR-MON-DD'),'hazhoz');
Insert into VOROS.VASARLAS (ID,SZAMLAIGENYES,MIKOR,ATVETEL) values ('4','0',to_date('21-M�J.  -09','RR-MON-DD'),'uzletbe');
Insert into VOROS.VASARLAS (ID,SZAMLAIGENYES,MIKOR,ATVETEL) values ('7','1',to_date('21-M�J.  -09','RR-MON-DD'),'hazhoz');
Insert into VOROS.VASARLAS (ID,SZAMLAIGENYES,MIKOR,ATVETEL) values ('10','0',to_date('21-M�J.  -09','RR-MON-DD'),'uzletbe');
Insert into VOROS.VASARLAS (ID,SZAMLAIGENYES,MIKOR,ATVETEL) values ('11','0',to_date('21-M�J.  -09','RR-MON-DD'),'uzletbe');
Insert into VOROS.VASARLAS (ID,SZAMLAIGENYES,MIKOR,ATVETEL) values ('1','1',to_date('21-M�J.  -09','RR-MON-DD'),'hazhoz');
REM INSERTING into VOROS.VASARLO
SET DEFINE OFF;
Insert into VOROS.VASARLO (ID,EMAIL,JELSZO,NEV,SZULIDO,TORZSVASARLOE,ADMINE,IRSZAM,UTCANEV,HAZSZAM) values ('1','hapi@kacsa.com','123456','H�pi Kacsa',to_date('21-�PR.  -27','RR-MON-DD'),'1','1','6700','Lovas utca','60');
Insert into VOROS.VASARLO (ID,EMAIL,JELSZO,NEV,SZULIDO,TORZSVASARLOE,ADMINE,IRSZAM,UTCANEV,HAZSZAM) values ('2','janos@gmail.com','Janos!1234','Kiss J�nos',to_date('50-AUG.  -27','RR-MON-DD'),'1','0','6520','K�m utca','10');
Insert into VOROS.VASARLO (ID,EMAIL,JELSZO,NEV,SZULIDO,TORZSVASARLOE,ADMINE,IRSZAM,UTCANEV,HAZSZAM) values ('3','eszter@gmail.com','Eszter!1234','Nagy Eszter',to_date('98-�PR.  -26','RR-MON-DD'),'1','0','3201','Haj�s utca','520');
Insert into VOROS.VASARLO (ID,EMAIL,JELSZO,NEV,SZULIDO,TORZSVASARLOE,ADMINE,IRSZAM,UTCANEV,HAZSZAM) values ('4','geza@gmail.com','Geza!1234','Kov�cs G�za',to_date('67-SZEPT.-25','RR-MON-DD'),'1','0','5204','Legend�s utca','1');
Insert into VOROS.VASARLO (ID,EMAIL,JELSZO,NEV,SZULIDO,TORZSVASARLOE,ADMINE,IRSZAM,UTCANEV,HAZSZAM) values ('5','hanna@gmail.com','Hanna!1234','Lov�sz Hanna',to_date('02-AUG.  -31','RR-MON-DD'),'0','0','5208','Bor�r�s utca','56');
Insert into VOROS.VASARLO (ID,EMAIL,JELSZO,NEV,SZULIDO,TORZSVASARLOE,ADMINE,IRSZAM,UTCANEV,HAZSZAM) values ('6','adam@gmail.com','Adam!1234','Fekete �d�m',to_date('75-M�RC. -17','RR-MON-DD'),'0','0','8520','Combos utca','852');
Insert into VOROS.VASARLO (ID,EMAIL,JELSZO,NEV,SZULIDO,TORZSVASARLOE,ADMINE,IRSZAM,UTCANEV,HAZSZAM) values ('7','balazs@gmail.com','Balazs!1324','G�l Bal�zs',to_date('00-JAN.  -20','RR-MON-DD'),'0','0','8541','F� utca','622');
Insert into VOROS.VASARLO (ID,EMAIL,JELSZO,NEV,SZULIDO,TORZSVASARLOE,ADMINE,IRSZAM,UTCANEV,HAZSZAM) values ('8','kata@gmail.com','Kata!1234','Horv�th Kata',to_date('85-FEBR. -05','RR-MON-DD'),'0','0','6325','Z�ldike utca','85');
Insert into VOROS.VASARLO (ID,EMAIL,JELSZO,NEV,SZULIDO,TORZSVASARLOE,ADMINE,IRSZAM,UTCANEV,HAZSZAM) values ('9','maria@gmail.com','Maria!1234','Szab� M�ria',to_date('75-SZEPT.-15','RR-MON-DD'),'0','0','5241','Bolti utca','8');
Insert into VOROS.VASARLO (ID,EMAIL,JELSZO,NEV,SZULIDO,TORZSVASARLOE,ADMINE,IRSZAM,UTCANEV,HAZSZAM) values ('10','erzsebet@gmail.com','Erzsebet!1234','Piros Erzs�bet',to_date('85-FEBR. -11','RR-MON-DD'),'0','0','5214','Gerenda utca','41');
Insert into VOROS.VASARLO (ID,EMAIL,JELSZO,NEV,SZULIDO,TORZSVASARLOE,ADMINE,IRSZAM,UTCANEV,HAZSZAM) values ('11','adel@gmail.com','Adel!1234','Halmai Ad�l',to_date('88-FEBR. -07','RR-MON-DD'),'0','0','4520','Felh� utca','10');
Insert into VOROS.VASARLO (ID,EMAIL,JELSZO,NEV,SZULIDO,TORZSVASARLOE,ADMINE,IRSZAM,UTCANEV,HAZSZAM) values ('12','almos@gmail.com','Almos!1234','Legend�s �lmos',to_date('89-NOV.  -26','RR-MON-DD'),'0','0','8520','Galamb utca','20');
Insert into VOROS.VASARLO (ID,EMAIL,JELSZO,NEV,SZULIDO,TORZSVASARLOE,ADMINE,IRSZAM,UTCANEV,HAZSZAM) values ('13','eniko@gmail.com','Eniko!1234','Nagyv�ri Enik�',to_date('96-DEC.  -12','RR-MON-DD'),'0','0','6520','H�s utca','52');
Insert into VOROS.VASARLO (ID,EMAIL,JELSZO,NEV,SZULIDO,TORZSVASARLOE,ADMINE,IRSZAM,UTCANEV,HAZSZAM) values ('23','wivien@gmail.com','123456','Vivi',to_date('16-�PR.  -21','RR-MON-DD'),'0','0','5410','Lovas utca','10');
REM INSERTING into VOROS.VASAROL
SET DEFINE OFF;
Insert into VOROS.VASAROL (ID,VASARLO_ID,KEDVEZMENY_ID,BOLT_ID,VASARLAS_ID) values ('5','23',null,'1','5');
Insert into VOROS.VASAROL (ID,VASARLO_ID,KEDVEZMENY_ID,BOLT_ID,VASARLAS_ID) values ('6','23',null,'1','6');
Insert into VOROS.VASAROL (ID,VASARLO_ID,KEDVEZMENY_ID,BOLT_ID,VASARLAS_ID) values ('8','23',null,'1','8');
Insert into VOROS.VASAROL (ID,VASARLO_ID,KEDVEZMENY_ID,BOLT_ID,VASARLAS_ID) values ('9','23',null,'1','9');
Insert into VOROS.VASAROL (ID,VASARLO_ID,KEDVEZMENY_ID,BOLT_ID,VASARLAS_ID) values ('12','23',null,'1','12');
Insert into VOROS.VASAROL (ID,VASARLO_ID,KEDVEZMENY_ID,BOLT_ID,VASARLAS_ID) values ('21','1',null,'1','21');
Insert into VOROS.VASAROL (ID,VASARLO_ID,KEDVEZMENY_ID,BOLT_ID,VASARLAS_ID) values ('13','23',null,'1','13');
Insert into VOROS.VASAROL (ID,VASARLO_ID,KEDVEZMENY_ID,BOLT_ID,VASARLAS_ID) values ('14','23',null,'1','14');
Insert into VOROS.VASAROL (ID,VASARLO_ID,KEDVEZMENY_ID,BOLT_ID,VASARLAS_ID) values ('2','23',null,'1','2');
Insert into VOROS.VASAROL (ID,VASARLO_ID,KEDVEZMENY_ID,BOLT_ID,VASARLAS_ID) values ('3','23',null,'1','3');
Insert into VOROS.VASAROL (ID,VASARLO_ID,KEDVEZMENY_ID,BOLT_ID,VASARLAS_ID) values ('4','23',null,'1','4');
Insert into VOROS.VASAROL (ID,VASARLO_ID,KEDVEZMENY_ID,BOLT_ID,VASARLAS_ID) values ('7','23',null,'1','7');
Insert into VOROS.VASAROL (ID,VASARLO_ID,KEDVEZMENY_ID,BOLT_ID,VASARLAS_ID) values ('10','23',null,'1','10');
Insert into VOROS.VASAROL (ID,VASARLO_ID,KEDVEZMENY_ID,BOLT_ID,VASARLAS_ID) values ('11','23',null,'1','11');
Insert into VOROS.VASAROL (ID,VASARLO_ID,KEDVEZMENY_ID,BOLT_ID,VASARLAS_ID) values ('1','23',null,'1','1');
REM INSERTING into VOROS.ZENE
SET DEFINE OFF;
Insert into VOROS.ZENE (MULTIMEDIA_ID,ELOADO) values ('1','Selena Gomez');
Insert into VOROS.ZENE (MULTIMEDIA_ID,ELOADO) values ('2','Ariana Grande');
Insert into VOROS.ZENE (MULTIMEDIA_ID,ELOADO) values ('3','Taylor Swift');
Insert into VOROS.ZENE (MULTIMEDIA_ID,ELOADO) values ('4','The Weeknd');
Insert into VOROS.ZENE (MULTIMEDIA_ID,ELOADO) values ('11','Taylor Swift');
--------------------------------------------------------
--  DDL for Index VASARLO_EMAIL_UINDEX
--------------------------------------------------------

  CREATE UNIQUE INDEX "VOROS"."VASARLO_EMAIL_UINDEX" ON "VOROS"."VASARLO" ("EMAIL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ANTIKVARKONYV_KONYV_ID_UINDEX
--------------------------------------------------------

  CREATE UNIQUE INDEX "VOROS"."ANTIKVARKONYV_KONYV_ID_UINDEX" ON "VOROS"."ANTIKVARKONYV" ("KONYV_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index AJANDEK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "VOROS"."AJANDEK_PK" ON "VOROS"."AJANDEK" ("NEV") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MULTIMEDIA_ID_UINDEX
--------------------------------------------------------

  CREATE UNIQUE INDEX "VOROS"."MULTIMEDIA_ID_UINDEX" ON "VOROS"."MULTIMEDIA" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index FILM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "VOROS"."FILM_PK" ON "VOROS"."FILM" ("MULTIMEDIA_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index VASARLO_ID_UINDEX
--------------------------------------------------------

  CREATE UNIQUE INDEX "VOROS"."VASARLO_ID_UINDEX" ON "VOROS"."VASARLO" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ZENE_MULTIMEDIA_ID_UINDEX
--------------------------------------------------------

  CREATE UNIQUE INDEX "VOROS"."ZENE_MULTIMEDIA_ID_UINDEX" ON "VOROS"."ZENE" ("MULTIMEDIA_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index RAKTARON_ID_UINDEX
--------------------------------------------------------

  CREATE UNIQUE INDEX "VOROS"."RAKTARON_ID_UINDEX" ON "VOROS"."RAKTARON" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SPRING_SESSION_ATTRIBUTES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "VOROS"."SPRING_SESSION_ATTRIBUTES_PK" ON "VOROS"."SPRING_SESSION_ATTRIBUTES" ("SESSION_PRIMARY_ID", "ATTRIBUTE_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TANKONYV_KONYV_ID_UINDEX
--------------------------------------------------------

  CREATE UNIQUE INDEX "VOROS"."TANKONYV_KONYV_ID_UINDEX" ON "VOROS"."TANKONYV" ("KONYV_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index BOLT_ID_UINDEX
--------------------------------------------------------

  CREATE UNIQUE INDEX "VOROS"."BOLT_ID_UINDEX" ON "VOROS"."BOLT" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SPRING_SESSION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "VOROS"."SPRING_SESSION_PK" ON "VOROS"."SPRING_SESSION" ("PRIMARY_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SPRING_SESSION_IX3
--------------------------------------------------------

  CREATE INDEX "VOROS"."SPRING_SESSION_IX3" ON "VOROS"."SPRING_SESSION" ("PRINCIPAL_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index VASARLAS_ID_UINDEX
--------------------------------------------------------

  CREATE UNIQUE INDEX "VOROS"."VASARLAS_ID_UINDEX" ON "VOROS"."VASARLAS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MUFAJ_ID_UINDEX
--------------------------------------------------------

  CREATE UNIQUE INDEX "VOROS"."MUFAJ_ID_UINDEX" ON "VOROS"."MUFAJ" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SPRING_SESSION_IX1
--------------------------------------------------------

  CREATE UNIQUE INDEX "VOROS"."SPRING_SESSION_IX1" ON "VOROS"."SPRING_SESSION" ("SESSION_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index KONYV_ID_UINDEX
--------------------------------------------------------

  CREATE UNIQUE INDEX "VOROS"."KONYV_ID_UINDEX" ON "VOROS"."KONYV" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index VASAROL_ID_UINDEX
--------------------------------------------------------

  CREATE UNIQUE INDEX "VOROS"."VASAROL_ID_UINDEX" ON "VOROS"."VASAROL" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MUFAJA_ID_UINDEX
--------------------------------------------------------

  CREATE UNIQUE INDEX "VOROS"."MUFAJA_ID_UINDEX" ON "VOROS"."MUFAJA" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index HANGOSKONYV_KONYV_ID_UINDEX
--------------------------------------------------------

  CREATE UNIQUE INDEX "VOROS"."HANGOSKONYV_KONYV_ID_UINDEX" ON "VOROS"."HANGOSKONYV" ("KONYV_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TARTOZIK_ID_UINDEX
--------------------------------------------------------

  CREATE UNIQUE INDEX "VOROS"."TARTOZIK_ID_UINDEX" ON "VOROS"."TARTOZIK" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SPRING_SESSION_IX2
--------------------------------------------------------

  CREATE INDEX "VOROS"."SPRING_SESSION_IX2" ON "VOROS"."SPRING_SESSION" ("EXPIRY_TIME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MAGAZIN_KONYV_ID_UINDEX
--------------------------------------------------------

  CREATE UNIQUE INDEX "VOROS"."MAGAZIN_KONYV_ID_UINDEX" ON "VOROS"."MAGAZIN" ("KONYV_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger KEVES_KONYV
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "VOROS"."KEVES_KONYV" 
BEFORE UPDATE of MENNYISEG ON RAKTARON
FOR EACH ROW
DECLARE
v_vasarlo_id vasarol.id%TYPE;
v_vasararlas_id vasarol.id%TYPE;
BEGIN
  IF :NEW.MENNYISEG < 0 THEN
        raise_application_error(-20111,'Elfogytak a konyvek');
    END IF;
END;
/
ALTER TRIGGER "VOROS"."KEVES_KONYV" ENABLE;
--------------------------------------------------------
--  DDL for Trigger KONYV_VASARLAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "VOROS"."KONYV_VASARLAS" 
AFTER INSERT ON TARTOZIK
FOR EACH ROW
DECLARE
v_szam raktaron.mennyiseg%TYPE;
v_id tartozik.id%type;
v_bolt vasarol.bolt_id%type;
v_vasaroltMennyiseg tartozik.mennyiseg%TYPE;
v_vasarol_id VASAROL.ID%TYPE;
v_vasararlas_id VASARLAS.ID%TYPE;

BEGIN
    IF :NEW.konyv_ID IS NOT NULL THEN
    v_id := :NEW.konyv_ID; 
    v_vasaroltmennyiseg := :NEW.MENNYISEG;
        v_bolt := konyvmennyiseg(v_id);
        v_szam:=BOLTV(v_id,v_bolt);
        UPDATE RAKTARON SET MENNYISEG = v_szam - v_vasaroltMennyiseg WHERE RAKTARON.bolt_ID = v_bolt AND RAKTARON.KONYV_ID = v_id AND RAKTARON.MULTIMEDIA_ID is NULL AND AJANDEK_ID IS NULL;
        dbms_output.put_line(v_szam);
    END IF;
    EXCEPTION
    WHEN NO_DATA_FOUND THEN
     raise_application_error(-20111,'Elfogytak a konyvek');

END;
/
ALTER TRIGGER "VOROS"."KONYV_VASARLAS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TORZS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "VOROS"."TORZS" 
BEFORE INSERT 
ON VASAROL
FOR EACH ROW
DECLARE
konyv NUMBER;
mul NUMBER;
BEGIN
    konyv := KAR(:NEW.vasarlo_ID);
    mul := MAR(:NEW.vasarlo_ID);
    IF mul+konyv>20000 THEN
    UPDATE VASARLO SET TORZSVASARLOE=1 WHERE ID=:NEW.vasarlo_ID;
    END IF;
END;
/
ALTER TRIGGER "VOROS"."TORZS" ENABLE;
--------------------------------------------------------
--  DDL for Function BOLTV
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "VOROS"."BOLTV" (konyvid IN NUMBER,boltid IN NUMBER) RETURN NUMBER
AS 

v_szam raktaron.mennyiseg%TYPE;

BEGIN
  SELECT MENNYISEG INTO v_szam FROM RAKTARON 
        WHERE RAKTARON.KONYV_ID = konyvid AND
        RAKTARON.bolt_ID = boltid AND
        RAKTARON.MULTIMEDIA_ID is NULL AND
        AJANDEK_ID IS NULL;

        return v_szam;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
     raise_application_error(-20111,'Elfogytak a konyvek');

END BOLTV;

/
--------------------------------------------------------
--  DDL for Function KAR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "VOROS"."KAR" (vasarloid IN NUMBER) RETURN NUMBER IS 
tmp_konyvossz NUMBER;

     BEGIN

         SELECT SUM(AR*Mennyiseg) INTO tmp_konyvossz
         FROM VASARLAS,TARTOZIK,VASAROL, KONYV 
         WHERE KONYV.ID=TARTOZIK.KONYV_ID 
         AND TARTOZIK.VASARLAS_ID = VASARLAS.ID 
         AND VASAROL.VASARLAS_ID= VASARLAS.ID
         AND VASAROL.VASARLO_ID=vasarloid
         GROUP BY vasarol.vasarlo_id;

         RETURN (tmp_konyvossz);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        tmp_konyvossz :=0;
        RETURN tmp_konyvossz;


END KAR;

/
--------------------------------------------------------
--  DDL for Function KONYVMENNYISEG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "VOROS"."KONYVMENNYISEG" (konyvID IN NUMBER) RETURN INTEGER IS
boltID raktaron.bolt_id%TYPE;
BEGIN
 SELECT * into boltID FROM (SELECT raktaron.bolt_id
FROM RAKTARON, KONYV WHERE KONYV.ID = konyvID
AND raktaron.konyv_id = konyv.id AND raktaron.mennyiseg <> 0
ORDER BY RAKTARON.mennyiseg DESC) WHERE rownum = 1; 
  RETURN boltID;
END KONYVMENNYISEG;

/
--------------------------------------------------------
--  DDL for Function MAR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "VOROS"."MAR" (vasarloid IN NUMBER) RETURN NUMBER IS 

tmp_multiossz NUMBER;

     BEGIN

         SELECT SUM(AR*Mennyiseg) INTO tmp_multiossz
         FROM VASARLAS,TARTOZIK,VASAROL, MULTIMEDIA 
         WHERE MULTIMEDIA.ID=TARTOZIK.MULTIMEDIA_ID 
         AND TARTOZIK.VASARLAS_ID = VASARLAS.ID 
         AND VASAROL.VASARLAS_ID= VASARLAS.ID
         AND VASAROL.VASARLO_ID=vasarloid
         GROUP BY vasarol.vasarlo_id;

         RETURN (tmp_multiossz);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        tmp_multiossz :=0;
        RETURN tmp_multiossz;


END MAR;

/
--------------------------------------------------------
--  Constraints for Table TANKONYV
--------------------------------------------------------

  ALTER TABLE "VOROS"."TANKONYV" ADD CONSTRAINT "TANKONYV_PK" PRIMARY KEY ("KONYV_ID")
  USING INDEX (CREATE UNIQUE INDEX "VOROS"."TANKONYV_KONYV_ID_UINDEX" ON "VOROS"."TANKONYV" ("KONYV_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" )  ENABLE;
  ALTER TABLE "VOROS"."TANKONYV" MODIFY ("KONYV_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BOLT
--------------------------------------------------------

  ALTER TABLE "VOROS"."BOLT" ADD CONSTRAINT "BOLT_PK" PRIMARY KEY ("ID")
  USING INDEX (CREATE UNIQUE INDEX "VOROS"."BOLT_ID_UINDEX" ON "VOROS"."BOLT" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" )  ENABLE;
  ALTER TABLE "VOROS"."BOLT" MODIFY ("NEV" NOT NULL ENABLE);
  ALTER TABLE "VOROS"."BOLT" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SPRING_SESSION
--------------------------------------------------------

  ALTER TABLE "VOROS"."SPRING_SESSION" ADD CONSTRAINT "SPRING_SESSION_PK" PRIMARY KEY ("PRIMARY_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "VOROS"."SPRING_SESSION" MODIFY ("EXPIRY_TIME" NOT NULL ENABLE);
  ALTER TABLE "VOROS"."SPRING_SESSION" MODIFY ("MAX_INACTIVE_INTERVAL" NOT NULL ENABLE);
  ALTER TABLE "VOROS"."SPRING_SESSION" MODIFY ("LAST_ACCESS_TIME" NOT NULL ENABLE);
  ALTER TABLE "VOROS"."SPRING_SESSION" MODIFY ("CREATION_TIME" NOT NULL ENABLE);
  ALTER TABLE "VOROS"."SPRING_SESSION" MODIFY ("SESSION_ID" NOT NULL ENABLE);
  ALTER TABLE "VOROS"."SPRING_SESSION" MODIFY ("PRIMARY_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table VASARLAS
--------------------------------------------------------

  ALTER TABLE "VOROS"."VASARLAS" ADD CONSTRAINT "VASARLAS_PK" PRIMARY KEY ("ID")
  USING INDEX (CREATE UNIQUE INDEX "VOROS"."VASARLAS_ID_UINDEX" ON "VOROS"."VASARLAS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" )  ENABLE;
  ALTER TABLE "VOROS"."VASARLAS" MODIFY ("ATVETEL" NOT NULL ENABLE);
  ALTER TABLE "VOROS"."VASARLAS" MODIFY ("MIKOR" NOT NULL ENABLE);
  ALTER TABLE "VOROS"."VASARLAS" MODIFY ("SZAMLAIGENYES" NOT NULL ENABLE);
  ALTER TABLE "VOROS"."VASARLAS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MUFAJ
--------------------------------------------------------

  ALTER TABLE "VOROS"."MUFAJ" ADD CONSTRAINT "MUFAJ_PK" PRIMARY KEY ("ID")
  USING INDEX (CREATE UNIQUE INDEX "VOROS"."MUFAJ_ID_UINDEX" ON "VOROS"."MUFAJ" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" )  ENABLE;
  ALTER TABLE "VOROS"."MUFAJ" MODIFY ("NEV" NOT NULL ENABLE);
  ALTER TABLE "VOROS"."MUFAJ" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ANTIKVARKONYV
--------------------------------------------------------

  ALTER TABLE "VOROS"."ANTIKVARKONYV" ADD CONSTRAINT "ANTIKVARKONYV_PK" PRIMARY KEY ("KONYV_ID")
  USING INDEX (CREATE UNIQUE INDEX "VOROS"."ANTIKVARKONYV_KONYV_ID_UINDEX" ON "VOROS"."ANTIKVARKONYV" ("KONYV_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" )  ENABLE;
  ALTER TABLE "VOROS"."ANTIKVARKONYV" MODIFY ("KONYV_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SPRING_SESSION_ATTRIBUTES
--------------------------------------------------------

  ALTER TABLE "VOROS"."SPRING_SESSION_ATTRIBUTES" ADD CONSTRAINT "SPRING_SESSION_ATTRIBUTES_PK" PRIMARY KEY ("SESSION_PRIMARY_ID", "ATTRIBUTE_NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "VOROS"."SPRING_SESSION_ATTRIBUTES" MODIFY ("ATTRIBUTE_BYTES" NOT NULL ENABLE);
  ALTER TABLE "VOROS"."SPRING_SESSION_ATTRIBUTES" MODIFY ("ATTRIBUTE_NAME" NOT NULL ENABLE);
  ALTER TABLE "VOROS"."SPRING_SESSION_ATTRIBUTES" MODIFY ("SESSION_PRIMARY_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ZENE
--------------------------------------------------------

  ALTER TABLE "VOROS"."ZENE" ADD CONSTRAINT "ZENE_PK" PRIMARY KEY ("MULTIMEDIA_ID")
  USING INDEX (CREATE UNIQUE INDEX "VOROS"."ZENE_MULTIMEDIA_ID_UINDEX" ON "VOROS"."ZENE" ("MULTIMEDIA_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" )  ENABLE;
  ALTER TABLE "VOROS"."ZENE" MODIFY ("MULTIMEDIA_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table AJANDEK
--------------------------------------------------------

  ALTER TABLE "VOROS"."AJANDEK" ADD CONSTRAINT "AJANDEK_PK" PRIMARY KEY ("NEV")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "VOROS"."AJANDEK" MODIFY ("AR" NOT NULL ENABLE);
  ALTER TABLE "VOROS"."AJANDEK" MODIFY ("NEV" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FILM
--------------------------------------------------------

  ALTER TABLE "VOROS"."FILM" ADD CONSTRAINT "FILM_PK" PRIMARY KEY ("MULTIMEDIA_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "VOROS"."FILM" MODIFY ("MULTIMEDIA_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table VASARLO
--------------------------------------------------------

  ALTER TABLE "VOROS"."VASARLO" ADD CONSTRAINT "VASARLO_PK" PRIMARY KEY ("ID")
  USING INDEX (CREATE UNIQUE INDEX "VOROS"."VASARLO_ID_UINDEX" ON "VOROS"."VASARLO" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" )  ENABLE;
  ALTER TABLE "VOROS"."VASARLO" MODIFY ("ADMINE" NOT NULL ENABLE);
  ALTER TABLE "VOROS"."VASARLO" MODIFY ("TORZSVASARLOE" NOT NULL ENABLE);
  ALTER TABLE "VOROS"."VASARLO" MODIFY ("NEV" NOT NULL ENABLE);
  ALTER TABLE "VOROS"."VASARLO" MODIFY ("JELSZO" NOT NULL ENABLE);
  ALTER TABLE "VOROS"."VASARLO" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "VOROS"."VASARLO" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MAGAZIN
--------------------------------------------------------

  ALTER TABLE "VOROS"."MAGAZIN" ADD CONSTRAINT "MAGAZIN_PK" PRIMARY KEY ("KONYV_ID")
  USING INDEX (CREATE UNIQUE INDEX "VOROS"."MAGAZIN_KONYV_ID_UINDEX" ON "VOROS"."MAGAZIN" ("KONYV_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" )  ENABLE;
  ALTER TABLE "VOROS"."MAGAZIN" MODIFY ("KONYV_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MUFAJA
--------------------------------------------------------

  ALTER TABLE "VOROS"."MUFAJA" ADD CONSTRAINT "MUFAJA_PK" PRIMARY KEY ("ID")
  USING INDEX (CREATE UNIQUE INDEX "VOROS"."MUFAJA_ID_UINDEX" ON "VOROS"."MUFAJA" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" )  ENABLE;
  ALTER TABLE "VOROS"."MUFAJA" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RAKTARON
--------------------------------------------------------

  ALTER TABLE "VOROS"."RAKTARON" ADD CONSTRAINT "RAKTARON_PK" PRIMARY KEY ("ID")
  USING INDEX (CREATE UNIQUE INDEX "VOROS"."RAKTARON_ID_UINDEX" ON "VOROS"."RAKTARON" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" )  ENABLE;
  ALTER TABLE "VOROS"."RAKTARON" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table KONYV
--------------------------------------------------------

  ALTER TABLE "VOROS"."KONYV" ADD CONSTRAINT "KONYV_PK" PRIMARY KEY ("ID")
  USING INDEX (CREATE UNIQUE INDEX "VOROS"."KONYV_ID_UINDEX" ON "VOROS"."KONYV" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" )  ENABLE;
  ALTER TABLE "VOROS"."KONYV" MODIFY ("AR" NOT NULL ENABLE);
  ALTER TABLE "VOROS"."KONYV" MODIFY ("CIM" NOT NULL ENABLE);
  ALTER TABLE "VOROS"."KONYV" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MULTIMEDIA
--------------------------------------------------------

  ALTER TABLE "VOROS"."MULTIMEDIA" ADD CONSTRAINT "MULTIMEDIA_PK" PRIMARY KEY ("ID")
  USING INDEX (CREATE UNIQUE INDEX "VOROS"."MULTIMEDIA_ID_UINDEX" ON "VOROS"."MULTIMEDIA" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" )  ENABLE;
  ALTER TABLE "VOROS"."MULTIMEDIA" MODIFY ("AR" NOT NULL ENABLE);
  ALTER TABLE "VOROS"."MULTIMEDIA" MODIFY ("CIM" NOT NULL ENABLE);
  ALTER TABLE "VOROS"."MULTIMEDIA" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table HANGOSKONYV
--------------------------------------------------------

  ALTER TABLE "VOROS"."HANGOSKONYV" ADD CONSTRAINT "HANGOSKONYV_PK" PRIMARY KEY ("KONYV_ID")
  USING INDEX (CREATE UNIQUE INDEX "VOROS"."HANGOSKONYV_KONYV_ID_UINDEX" ON "VOROS"."HANGOSKONYV" ("KONYV_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" )  ENABLE;
  ALTER TABLE "VOROS"."HANGOSKONYV" MODIFY ("KONYV_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table VASAROL
--------------------------------------------------------

  ALTER TABLE "VOROS"."VASAROL" ADD CONSTRAINT "VASAROL_PK" PRIMARY KEY ("ID")
  USING INDEX (CREATE UNIQUE INDEX "VOROS"."VASAROL_ID_UINDEX" ON "VOROS"."VASAROL" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" )  ENABLE;
  ALTER TABLE "VOROS"."VASAROL" MODIFY ("VASARLAS_ID" NOT NULL ENABLE);
  ALTER TABLE "VOROS"."VASAROL" MODIFY ("BOLT_ID" NOT NULL ENABLE);
  ALTER TABLE "VOROS"."VASAROL" MODIFY ("VASARLO_ID" NOT NULL ENABLE);
  ALTER TABLE "VOROS"."VASAROL" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TARTOZIK
--------------------------------------------------------

  ALTER TABLE "VOROS"."TARTOZIK" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "VOROS"."TARTOZIK" ADD CONSTRAINT "TARTOZIK_PK" PRIMARY KEY ("ID")
  USING INDEX (CREATE UNIQUE INDEX "VOROS"."TARTOZIK_ID_UINDEX" ON "VOROS"."TARTOZIK" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" )  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ANTIKVARKONYV
--------------------------------------------------------

  ALTER TABLE "VOROS"."ANTIKVARKONYV" ADD CONSTRAINT "ANTIKVARKONYV_KONYV_ID_FK" FOREIGN KEY ("KONYV_ID")
	  REFERENCES "VOROS"."KONYV" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table HANGOSKONYV
--------------------------------------------------------

  ALTER TABLE "VOROS"."HANGOSKONYV" ADD CONSTRAINT "HANGOSKONYV_KONYV_ID_FK" FOREIGN KEY ("KONYV_ID")
	  REFERENCES "VOROS"."KONYV" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MAGAZIN
--------------------------------------------------------

  ALTER TABLE "VOROS"."MAGAZIN" ADD CONSTRAINT "MAGAZIN_KONYV_ID_FK" FOREIGN KEY ("KONYV_ID")
	  REFERENCES "VOROS"."KONYV" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MUFAJA
--------------------------------------------------------

  ALTER TABLE "VOROS"."MUFAJA" ADD CONSTRAINT "MUFAJA_KONYV_ID_FK" FOREIGN KEY ("KONYV_ID")
	  REFERENCES "VOROS"."KONYV" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "VOROS"."MUFAJA" ADD CONSTRAINT "MUFAJA_MUFAJ_ID_FK" FOREIGN KEY ("MUFAJ_ID")
	  REFERENCES "VOROS"."MUFAJ" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RAKTARON
--------------------------------------------------------

  ALTER TABLE "VOROS"."RAKTARON" ADD CONSTRAINT "RAKTARON_AJANDEK_NEV_FK" FOREIGN KEY ("AJANDEK_ID")
	  REFERENCES "VOROS"."AJANDEK" ("NEV") ON DELETE CASCADE ENABLE;
  ALTER TABLE "VOROS"."RAKTARON" ADD CONSTRAINT "RAKTARON_BOLT_ID_FK" FOREIGN KEY ("BOLT_ID")
	  REFERENCES "VOROS"."BOLT" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "VOROS"."RAKTARON" ADD CONSTRAINT "RAKTARON_KONYV_ID_FK" FOREIGN KEY ("KONYV_ID")
	  REFERENCES "VOROS"."KONYV" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SPRING_SESSION_ATTRIBUTES
--------------------------------------------------------

  ALTER TABLE "VOROS"."SPRING_SESSION_ATTRIBUTES" ADD CONSTRAINT "SPRING_SESSION_ATTRIBUTES_FK" FOREIGN KEY ("SESSION_PRIMARY_ID")
	  REFERENCES "VOROS"."SPRING_SESSION" ("PRIMARY_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TANKONYV
--------------------------------------------------------

  ALTER TABLE "VOROS"."TANKONYV" ADD CONSTRAINT "TANKONYV_KONYV_ID_FK" FOREIGN KEY ("KONYV_ID")
	  REFERENCES "VOROS"."KONYV" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TARTOZIK
--------------------------------------------------------

  ALTER TABLE "VOROS"."TARTOZIK" ADD CONSTRAINT "TARTOZIK_AJANDEK_NEV_FK" FOREIGN KEY ("AJANDEK_ID")
	  REFERENCES "VOROS"."AJANDEK" ("NEV") ON DELETE CASCADE ENABLE;
  ALTER TABLE "VOROS"."TARTOZIK" ADD CONSTRAINT "TARTOZIK_KONYV_ID_FK" FOREIGN KEY ("KONYV_ID")
	  REFERENCES "VOROS"."KONYV" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "VOROS"."TARTOZIK" ADD CONSTRAINT "TARTOZIK_VASARLAS_ID_FK" FOREIGN KEY ("VASARLAS_ID")
	  REFERENCES "VOROS"."VASARLAS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table VASAROL
--------------------------------------------------------

  ALTER TABLE "VOROS"."VASAROL" ADD CONSTRAINT "VASAROL_BOLT_ID_FK" FOREIGN KEY ("BOLT_ID")
	  REFERENCES "VOROS"."BOLT" ("ID") ENABLE;
  ALTER TABLE "VOROS"."VASAROL" ADD CONSTRAINT "VASAROL_VASARLAS_ID_FK" FOREIGN KEY ("VASARLAS_ID")
	  REFERENCES "VOROS"."VASARLAS" ("ID") ON DELETE CASCADE ENABLE;
