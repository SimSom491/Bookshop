--------------------------------------------------------
--  File created - vasárnap-május-09-2021   
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
Insert into VOROS.AJANDEK (NEV,AR,ELERESIUT) values ('Unicorn-bögre','500','https://bogremanufaktura.com/img/97634/GYF010/496x664,r/GYF010.jpg?time=1610869967');
Insert into VOROS.AJANDEK (NEV,AR,ELERESIUT) values ('Unicorn-utalvány ajándék','1000','https://ajikartyak.hu/images/kartyak/ajandekkartya-5/ajandekkartya-6-.png');
Insert into VOROS.AJANDEK (NEV,AR,ELERESIUT) values ('Unicorn-utalvány köszönet','5000','https://ajikartyak.hu/images/kartyak/koszonet/aji-ajandekkartya-koszonettel.png');
Insert into VOROS.AJANDEK (NEV,AR,ELERESIUT) values ('Unicorn-füzet','300','https://www.pirex.hu/upload_files/products_thumb/thumb_list_09543976.jpg');
Insert into VOROS.AJANDEK (NEV,AR,ELERESIUT) values ('Unicorn-ceruza','50','https://upload.wikimedia.org/wikipedia/commons/thumb/2/23/Bleistift1.jpg/375px-Bleistift1.jpg');
Insert into VOROS.AJANDEK (NEV,AR,ELERESIUT) values ('Unicorn-plüss','4000','https://s13emagst.akamaized.net/products/23300/23299883/images/res_251ff62ee8eb48483069369a8f85222d.jpg?width=450&height=450&hash=4D206C581B418A831402D8E966759CD5');
Insert into VOROS.AJANDEK (NEV,AR,ELERESIUT) values ('Unicorn-utalvány szülinap','5000','https://ajikartyak.hu/images/kartyak/boldog-szuletesnapot-ajandekkartya/aji-ajandekkartya-boldog-szuletesnapot-png.-1');
Insert into VOROS.AJANDEK (NEV,AR,ELERESIUT) values ('Unicorn-póló','3000','https://pix.bonprix.pl/imgc/0/0/1/7/0/0/7/0/6/1/_640/17007061/polo-egyszarvu-motivummal-lanyoknak-fekete.jpg');
Insert into VOROS.AJANDEK (NEV,AR,ELERESIUT) values ('Unicorn-pulcsi','4300','https://hellomall.hu/img/26309/13733womenhood_altpic_4/744x996,r/13733womenhood.webp?time=1616719031');
Insert into VOROS.AJANDEK (NEV,AR,ELERESIUT) values ('Unicorn-utalvány meglepetés','10000','https://ajikartyak.hu/images/kartyak/strucc/strucc.png');
REM INSERTING into VOROS.ANTIKVARKONYV
SET DEFINE OFF;
Insert into VOROS.ANTIKVARKONYV (KONYV_ID,KOR,ALLAPOT) values ('7','1','remek');
Insert into VOROS.ANTIKVARKONYV (KONYV_ID,KOR,ALLAPOT) values ('8','1','jó');
Insert into VOROS.ANTIKVARKONYV (KONYV_ID,KOR,ALLAPOT) values ('15','1','jó');
Insert into VOROS.ANTIKVARKONYV (KONYV_ID,KOR,ALLAPOT) values ('24','2','jó');
Insert into VOROS.ANTIKVARKONYV (KONYV_ID,KOR,ALLAPOT) values ('25','2','jó');
REM INSERTING into VOROS.BOLT
SET DEFINE OFF;
Insert into VOROS.BOLT (ID,NEV,ELHELYEZKEDES,NYITVATARTAS) values ('11','Kis Bolt','San Francisco','H-P 15-18');
Insert into VOROS.BOLT (ID,NEV,ELHELYEZKEDES,NYITVATARTAS) values ('1','Unicorn Szeged','Szeged','H-P: 8-16');
Insert into VOROS.BOLT (ID,NEV,ELHELYEZKEDES,NYITVATARTAS) values ('2','Unicorn Budapest','Budapest','H-P:8-16');
Insert into VOROS.BOLT (ID,NEV,ELHELYEZKEDES,NYITVATARTAS) values ('3','Unicorn Zalaegerszeg','Zalaegerszeg','H-P: 8-16');
Insert into VOROS.BOLT (ID,NEV,ELHELYEZKEDES,NYITVATARTAS) values ('4','Unicorn Kisalföld','Gyõr','H-P: 8-16');
Insert into VOROS.BOLT (ID,NEV,ELHELYEZKEDES,NYITVATARTAS) values ('5','Unicorn Alföld','Kecskemét','H-V: 8-18');
Insert into VOROS.BOLT (ID,NEV,ELHELYEZKEDES,NYITVATARTAS) values ('6','Unicorn Baranya','Pécs','H-P: 8-17');
Insert into VOROS.BOLT (ID,NEV,ELHELYEZKEDES,NYITVATARTAS) values ('7','Unicorn Kárpátalja','Szombathely','H-P: 8-16');
Insert into VOROS.BOLT (ID,NEV,ELHELYEZKEDES,NYITVATARTAS) values ('8','Fejér Unicorn','Székesfehérvár','H-P: 8-16');
Insert into VOROS.BOLT (ID,NEV,ELHELYEZKEDES,NYITVATARTAS) values ('9','Unicorn Erõmû','Paks','H-P: 8-16');
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
Insert into VOROS.HANGOSKONYV (KONYV_ID,ELBESZELO,HOSSZ) values ('22','Szacsvay László','123');
Insert into VOROS.HANGOSKONYV (KONYV_ID,ELBESZELO,HOSSZ) values ('21','Csõre Gábor','142');
Insert into VOROS.HANGOSKONYV (KONYV_ID,ELBESZELO,HOSSZ) values ('23','Hirtling István','89');
Insert into VOROS.HANGOSKONYV (KONYV_ID,ELBESZELO,HOSSZ) values ('3','Mácsai Pál','112');
Insert into VOROS.HANGOSKONYV (KONYV_ID,ELBESZELO,HOSSZ) values ('4','Fekete Ernõ','92');
REM INSERTING into VOROS.KONYV
SET DEFINE OFF;
Insert into VOROS.KONYV (ID,SZERZO,CIM,AR,OLDALSZAM,KIADO,ELERESIUT,KIADASIEV,TIPUS,LEIRAS) values ('1','Delilah S. Dawson','Pókember: Új kezdet','852','80','Vad Virágok Kiadó Kft.','https://s03.static.libri.hu/cover/d9/e/6930865_5.jpg','2020','Magazin','Peter Parker felvette már a versenyt veszedelmes gonosztevõkkel és legendás hõsökkel is, de lehet, hogy a gimis élet kifog rajta. Szerencsére nincs veszve a remény, sikerrel veheti az akadályokat, ha besegítenek új barátai: Miles Morales és Gwen Stacy. Az Új kezdet tökéletes alkalom arra, hogy a fiatalabb olvasók is belegabalyodjanak Pókember és hihetetlen barátai vadonatúj kalandjainak szövevényes hálójába Delilah S. Dawson író és Fico Ossio rajzoló tolmácsolásában.');
Insert into VOROS.KONYV (ID,SZERZO,CIM,AR,OLDALSZAM,KIADO,ELERESIUT,KIADASIEV,TIPUS,LEIRAS) values ('2','Robbie Thompson','Star Wars: A célpont: Vader','5025','136','SZUKITS KÖNYVKIADÓ ÉS KÖNYVKER','https://s04.static.libri.hu/cover/d7/a/6892448_5.jpg','2020','Magazin','A Sith sötét nagyura egy titokzatos bûnözõ szindikátus után nyomoz, amely a Birodalom határán túl mûködik. Arról azonban sejtelme sincs, hogy eközben õ maga is célponttá válik: a bûnszövetkezet a galaxis legveszedelmesebb fejvadászait bérelte fel, hogy egyszer s mindenkorra végezzenek vele! A bukott birodalmi tiszt, Beilert Valance által vezetett orgyilkosok csapatát semmi sem állíthatja meg abban, hogy begyûjtsék életük legnagyobb trófeáját. Valance és Dengar a tökéletes fegyvert keresik, hogy végezzenek a Sith nagyúrral, és szükségük is lesz rá, amikor Vader sarokba szorítja õket! De mi lesz, ha az üldözött és az üldözõk is felfedik a Rejtett Kéz néven ismert szindikátus sötét titkait?');
Insert into VOROS.KONYV (ID,SZERZO,CIM,AR,OLDALSZAM,KIADO,ELERESIUT,KIADASIEV,TIPUS,LEIRAS) values ('3','Karinthy Frigyes','Tanár úr kérem','3200',null,null,'https://s03.static.libri.hu/cover/99/6/7233046_5.jpg','2021','Hangoskönyv','A Tanár úr kérem Karinthy Frigyes (1887-1938) egyik legnépszerûbb mûve, amelyben humoros és szórakoztató stílusban mesél gyermekkoráról és diákéveirõl. Ezen a kiadványon Mácsai Pál, a Kossuth- és Jászai Mari-díjas színész elõadásában hallhatjuk.');
Insert into VOROS.KONYV (ID,SZERZO,CIM,AR,OLDALSZAM,KIADO,ELERESIUT,KIADASIEV,TIPUS,LEIRAS) values ('4','Sir ARTHUR CONAN DOYLE','Sherlock Holmes kalandjai I.','4525','360','TITIS TANÁCSADÓ KFT.','https://s02.static.libri.hu/cover/8f/d/6643793_5.jpg','2020','Hangoskönyv','A "Sherlock Holmes kalandjai" Doyle elsõ novelláskötete, mely a két regény, "A brixtoni rejtély" és "A négyek jele" után jelent meg, 1892-ben. Dr. Watson olyan rejtélyeket válogatott itt csokorba, melyek megoldása ékesen bizonyítja Holmes rendkívüli következtetõ képességét. Ezek a történetek tették a nagy detektívet igazán közismertté. Hol rejtette el a hölgy a Csehország királya számára oly kompromittáló fényképet? Miért szûnt meg a Rõt Liga? Hová tûnt a võlegény a templomba vonulás elõtt? Lehet-e hinni a meggyilkolt férfi fiának? Mit jelent az öt narancsmag? És hová lett a példás férj és családapa, miután kiintett feleségének egy kétes hírû kocsma emeleti ablakából? Nem csak remekül szórakozik, de ezekre a kérdésekre is választ kap, aki meghallgatja Fekete Ernõ nagyszerû elõadásában az elsõ 6 kalandot.');
Insert into VOROS.KONYV (ID,SZERZO,CIM,AR,OLDALSZAM,KIADO,ELERESIUT,KIADASIEV,TIPUS,LEIRAS) values ('5','Bartha Gábor','Matematika feladatgyüjtemény 1','1360','450','Mozaik','https://www.tankonyvkatalogus.hu/images/cover/NT-13135_NAT.jpg','2012','Tankönyv','Matematikai feladatgyüjtemény.');
Insert into VOROS.KONYV (ID,SZERZO,CIM,AR,OLDALSZAM,KIADO,ELERESIUT,KIADASIEV,TIPUS,LEIRAS) values ('6','dr. Gerõcs László','Matematika 11','1000','200','Mozaik','https://www.tankonyvkatalogus.hu/images/cover/NT-17302.jpg','2012','Tankönyv','Matematikai oktatóköny.');
Insert into VOROS.KONYV (ID,SZERZO,CIM,AR,OLDALSZAM,KIADO,ELERESIUT,KIADASIEV,TIPUS,LEIRAS) values ('7','Jay Asher','Tizenhárom okom volt...','5000','259','Könyvmolyképzõ Kiadó Kft.','https://s04.static.libri.hu/cover/sl/d1/5/d156021eb9586475611b080c3855dff2_big.jpg','2017','Antikvár','Mikor Clay Jensen hazaér az iskolából, egy különös csomagot talál a verandán, amit neki címeztek. A csomagban néhány kazettára bukkan, amiket Hannah Baker - osztálytársa és titkos szerelme - készített, aki két héttel korábban öngyilkosságot követett el. Hannah elmondja, hogy tizenhárom oka volt annak, hogy úgy döntött, véget vet az életének. Clay az egyik. Ha meghallgatja a kazettákat, megtudja, miért. Clay egész éjszaka ide-oda bolyong a városban Hannah szavait hallgatva. Tanúja lesz a lány fájdalmának, és megtudja az igazságot saját magáról - az igazságot, amivel soha nem akart szembenézni.');
Insert into VOROS.KONYV (ID,SZERZO,CIM,AR,OLDALSZAM,KIADO,ELERESIUT,KIADASIEV,TIPUS,LEIRAS) values ('8','Matthew McConaughey','Zöldlámpa','4242','297','21. Század Kiadó','https://s04.static.libri.hu/cover/b8/f/6708894_5.jpg','2020','Antikvár','Hogyan stresszeljek kevesebbet. Hogyan érezzem jól magam. Hogyan bántsam kevésbé az embereket. Hogyan bántsanak engem kevésbé. Hogyan legyek jó ember. Ha az ember tudja, hogyanés mikor boldoguljon az élet kihívásaival – hogyan viszonyuljon relatívan az elkerülhetetlenhez –, akkor élvezheti a sikernek azt az állapotát, amit úgy nevezek, „elkapni a zöldlámpát”. Belátásaim és meglátásaim, ráérzéseim és megérzéseim, lazaságaim és cikiségeim. Brutális finomságok, igazságok és szépségek. Megúszások, lebukások és elhasalások, ahogy az élet akadálypályáján próbáltam szlalomozni. Reményeim szerint ez egy jó ízû orvosság, két aszpirin a betegszoba helyett, ûrhajó a Marsra, amihez nem kell pilótaengedély, templomi élmény, amihez nem kell újjászületni, könnyes nevetés. Egy szerelmeslevél. Az élethez. Ez a könyv a zöldlámpákról szól, és arról, hogy a sárga és a piros is elõbb-utóbb zöld lesz.');
Insert into VOROS.KONYV (ID,SZERZO,CIM,AR,OLDALSZAM,KIADO,ELERESIUT,KIADASIEV,TIPUS,LEIRAS) values ('9','Doron Rabinovici','A földönkívüliek','3324','256','MAGVETÕ KFT.','https://s03.static.libri.hu/cover/bb/6/7046722_5.jpg','2021','Könyv','Lehet, hogy egy olyan társadalomban, amely képes a vágóhídra küldeni embereket, az igaz ember helye a vágóhídon van? A rádióban bemondják a szenzációs hírt: az idegenek megérkeztek a Földre. Az embereken úrrá lesz az izgatottság, az eufória és az ismeretlentõl való félelem, ami súlyos zavargásokhoz vezet.');
Insert into VOROS.KONYV (ID,SZERZO,CIM,AR,OLDALSZAM,KIADO,ELERESIUT,KIADASIEV,TIPUS,LEIRAS) values ('10','Andrzej Sapkowski','Vaják I. - The Witcher - Az utolsó kívánság','3790','352','GABO KÖNYVKIADÓ ÉS KERESK.KFT.','https://s04.static.libri.hu/cover/e2/3/7016504_5.jpg','2021','Könyv','Geralt a vajákok közé tartozik: mágikus képességeinek köszönhetõen, amelyeket hosszan tartó kiképzése és egy rejtélyes elixír csak még tovább csiszolt, zseniális és könyörtelen harcos hírében áll. Ugyanakkor nem hétköznapi gyilkos: célpontjai vérszomjas szörnyetegek és aljas fenevadak, amelyek mindenütt hatalmas pusztítást végeznek, és megtámadják az ártatlanokat.
Hiába tûnik azonban valami gonosznak vagy jónak, nem biztos, hogy valóban az - és minden mesében van egy csipetnyi igazság.');
Insert into VOROS.KONYV (ID,SZERZO,CIM,AR,OLDALSZAM,KIADO,ELERESIUT,KIADASIEV,TIPUS,LEIRAS) values ('11','Amanda Yee','Jóbarátok - A hivatalos szakácskönyv','5192','201','21. Század Kiadó','https://s03.static.libri.hu/cover/14/a/6930868_5.jpg','2021','Könyv','Trombitáld össze a jóbarátokat, és üdvözöljétek együtt ezt a több mint 100 receptet ("Na, mi a helyzet?"), amelyet hõn szeretett tévémûsorotok ihletett. Akár minden hájjal megkent chef vagy, mint Monica Geller, akár most indítasz catering céget, mint Phoebe Buffay, vagy régi vágású haspók vagy, mint Joey Tribbiani, a Jóbarátok - A hivatalos szakácskönyv egy sor különbözõ receptet kínál a különbözõ szakmai szinten levõ chefeknek. Elõételek, fõfogások, italok és desszertek - minden egyes fejezet olyan ikonikus csemegéket tartogat, mint Monica Hálabarát Lakomája, Rachel Hagyományos Angol Rakott Krémdesszertje, a Sült Krumpli - csakis Joeynak, a Chandler-féle "Tej, amit elrágsz", Phoebe nagyijának csokitallérja és az elmaradhatatlan Hidratáló Szendvics.');
Insert into VOROS.KONYV (ID,SZERZO,CIM,AR,OLDALSZAM,KIADO,ELERESIUT,KIADASIEV,TIPUS,LEIRAS) values ('12','Dagmar Von Cramm','Babakonyha - Csecsemõkortól kisgyerekkorig','4360','192','Central Médiacsoport Zrt.','https://s03.static.libri.hu/cover/cf/9/4869660_5.jpg','2021','Könyv','Ínycsiklandó receptek kicsiknek és nagyoknak. Finom kásák és kézzel ehetõ ételek a legkisebbeknek, egyszerûen elkészíthetõ baba-mama receptek, és sok más ennivaló, amit a család minden tagja szívesen fogyaszt.
Naprakész ismeretek a téma egyik legnagyobb szakértõjétõl, Dagmar von Crammtól. Szoptatási tippek, hozzátáplálás lépésrõl lépésre, jól kamatoztatható tudás a higiénia, a konyhai ismeretek, az ételintolerancia, az allergia, a cukor és a vega táplálkozás témaköreibõl.
Amit tehát ez a könyv nyújt: változatos, kiegyensúlyozott táplálkozást biztosító receptek a kisgyermek egyes életszakaszaihoz igazítva, valamint hasznos válaszok a kicsi fejlõdését érintõ kérdésekre.');
Insert into VOROS.KONYV (ID,SZERZO,CIM,AR,OLDALSZAM,KIADO,ELERESIUT,KIADASIEV,TIPUS,LEIRAS) values ('13','Dr. Esche-Belke Susanne - Dr. Kirschner-Brouns Suzann','Nõk a változókor küszöbén - A hormonális egyensúly titkai','3514','320','Partvonal Könyvkiadó Kft','https://s03.static.libri.hu/cover/ae/8/6945651_5.jpg','2021','Könyv','A változókor nem a világ vége, hanem új lehetõségek kezdete! Depresszió, ízületi fájdalom, migrén, hangulatingadozás, szapora szívverés, hõhullám, súlygyarapodás - ezek a kényelmetlen és sokszor súlyos tünetek gyakran jelentkeznek a negyven feletti nõknél. Az orvostudomány válasza egyértelmû: a változókor elõfutárának tekinthetõ jelenségek hormonális eredetûek, és már a negyvenes éveik elején pokollá tehetik a nõk hétköznapjait. Sajnos nem mindig kezelik megfelelõen a problémát: nem ismerik fel az okokat, vagy elvárják a nõktõl, hogy "éljenek együtt" a hormonváltozással.');
Insert into VOROS.KONYV (ID,SZERZO,CIM,AR,OLDALSZAM,KIADO,ELERESIUT,KIADASIEV,TIPUS,LEIRAS) values ('14','Szitnyainé Gottlieb Éva, Maros Judit','Kon-Takt 2 Arbeitsbuch','910','120','Mozaik','https://www.tankonyvkatalogus.hu/images/cover/OH-NEM10M.jpg','2012','Tankönyv','Német nyelvû munkafüzet');
Insert into VOROS.KONYV (ID,SZERZO,CIM,AR,OLDALSZAM,KIADO,ELERESIUT,KIADASIEV,TIPUS,LEIRAS) values ('15','Pierre Rabhi','Pénzt akarunk vagy életet?','1900','190','L'' HARMATTAN KFT.','https://s04.static.libri.hu/cover/d2/9/7315717_5.jpg','2014','Antikvár','Pierre Rabhi a kortárs ökológiai gondolkodás egyik legnagyszerûbb alakja, aki alapítványai révén három kontinensen van jelen, és tízezrek életébe hozott változást Afrikától Indiáig. Mint Yehudi Menuhin írja róla: Ez az egyszerû életszentségû, tisztán és világosan gondolkodó ember, akinek költõi szépségû nyelvezete izzó szenvedélyrõl tanúskodik, saját verítékével termékenyítette meg a meddõ földeket. Ez a kötet filozófiai és bölcseleti írásait gyûjti egybe.');
Insert into VOROS.KONYV (ID,SZERZO,CIM,AR,OLDALSZAM,KIADO,ELERESIUT,KIADASIEV,TIPUS,LEIRAS) values ('16','Erik Burnham','Pókember: Pókvadászat - Marvel akcióhõsök','1192','72','Vad Virágok Kiadó Kft.','https://s03.static.libri.hu/cover/8c/f/7383908_5.jpg','2021','Magazin','Peter Parker, Miles Morales és Gwen Stacy egy csapattá állt össze, és ifjonti kalandozásaiknak semmi sem szabhat határt!
Kivéve persze a házi feladatok tömkelege, a szakmai gyakorlat
a Hírharsonában, valamint egy új, veszélyes ellenfél, aki kiszemelte õket magának: Kraven, a vadász! Hõseink egymás után kerülnek a hálójába, hogy kezdetét vehesse a nagy összecsapás. Lehet, hogy ezzel véget ér Peter, Miles és Gwen pókos pályafutása?
Erik Burnham író és Christoher Jones rajzoló humorban és izgalomban bõvelkedõ történetébõl kiderül.');
Insert into VOROS.KONYV (ID,SZERZO,CIM,AR,OLDALSZAM,KIADO,ELERESIUT,KIADASIEV,TIPUS,LEIRAS) values ('17','Phil Noto - Greg Pak','Star Wars: A lázadók végzete','4232','128','SZUKITS KÖNYVKIADÓ ÉS KÖNYVKER','https://s05.static.libri.hu/cover/6c/3/7300744_5.jpg','2021','Magazin','Lázadók és zsiványok népesítik be a képregény oldalait, melyeken történetünk lassan a végéhez közeledik. A Felkelõk Szövetségének hõsei merész küldetésekre indultak, hogy zavart keltsenek birodalomszerte. De ki az a Dar Champion, és mennyire bízhat meg benne Leia hercegnõ, amikor Han Solo élete a tét? Milyen megrázó élményben lesz része Luke Skywalkernek, amikor Warba végül felfedi valódi kilétét? Képes lesz C-3PO meghozni a végsõ áldozatot, amikor lehetetlen döntés elé kerül? Csubakka vajon állni fogja a sarat a Darth Vaderrel szembeni ádáz közelharc során?');
Insert into VOROS.KONYV (ID,SZERZO,CIM,AR,OLDALSZAM,KIADO,ELERESIUT,KIADASIEV,TIPUS,LEIRAS) values ('18','Sean Murphy','Batman - A Fehér Lovag átka','6796','272','FUMAX KFT','https://s02.static.libri.hu/cover/e9/e/7248895_5.jpg','2021','Magazin','Joker szövetkezik Azraellel, hogy segítsen neki leleplezni a Wayne család hagyatékának döbbenetes titkát - és nem mellékesen tönkretenni Gothamet. Batman a város és veszélyben lévõ szerettei segítségére siet, ám miután õseinek titka napvilágra kerül, kénytelen megkérdõjelezni mindent, amit eddig önmagáról és a Gotham életében betöltött szerepérõl hitt.
');
Insert into VOROS.KONYV (ID,SZERZO,CIM,AR,OLDALSZAM,KIADO,ELERESIUT,KIADASIEV,TIPUS,LEIRAS) values ('19','Szitnyainé Gottlieb Éva, Maros Judit','Kon-Takt 2 Lehrbuch','1460','112','Mozaik','https://www.tankonyvkatalogus.hu/images/cover/OH-NEM10T.jpg','2012','Tankönyv','Német nyelvû tankönyv');
Insert into VOROS.KONYV (ID,SZERZO,CIM,AR,OLDALSZAM,KIADO,ELERESIUT,KIADASIEV,TIPUS,LEIRAS) values ('20',' Antalné dr. Szabó Ágnes, dr. Raátz Judit','Magyar nyelv és kommunikáció. Tankönyv a 11. évfolyam számára','790','68','Mozaik','https://www.tankonyvkatalogus.hu/images/cover/NT-17337.jpg','2012','Tankönyv','Magyar nyelvtankönyv');
Insert into VOROS.KONYV (ID,SZERZO,CIM,AR,OLDALSZAM,KIADO,ELERESIUT,KIADASIEV,TIPUS,LEIRAS) values ('21','David Attenborough ','Egy ifjú természettudós történetei II. - A sárkány nyomában - Hangoskönyv','3230','290','Kossuth Kiadó / Mojzer Kiadó','https://s01.static.libri.hu/cover/11/c/7298062_5.jpg','2021','Hangoskönyv','Sir David Attenborough távoli tájakról, állatokról és kultúrákról szóló lebilincselõ történetein már több generációnyi lelkes természetkedvelõ és természetvédõ nõtt fel. Hangoskönyvünk egy indonéziai expedíció kalandjait mutatja be. Most sem alakul minden a terv szerint, adódhattak olyan helyzetek, hogy a csapatnak a sziget egyetlen kamionosát kellett megtalálniuk, a környék egyetlen dzsipjét kölcsönkérniük, vagy éppen heteket várni egy-egy hajós vagy repülõs szállításra. Ezeket a helyzeteket és a belõlük adódó bosszantóan komikus szituációkat a szerzõ jó érzékkel, humorosan mutatja be, érzékeltetve velünk, hogy azért a trópusokon se kolbászból van a kerítés.');
Insert into VOROS.KONYV (ID,SZERZO,CIM,AR,OLDALSZAM,KIADO,ELERESIUT,KIADASIEV,TIPUS,LEIRAS) values ('22','Sir ARTHUR CONAN DOYLE','A sátán kutyája - Hangoskönyv','3106',null,'HUNGAROTON','https://s03.static.libri.hu/cover/6c/2/7232763_5.jpg','2021','Hangoskönyv','A detektívregény-irodalom klasszikusának, Sir Arthur Conan Doyle-nak (1859 - 1930) egyik legnépszerûbb regényét Szacsvay László elõadásában hallhatjuk.');
Insert into VOROS.KONYV (ID,SZERZO,CIM,AR,OLDALSZAM,KIADO,ELERESIUT,KIADASIEV,TIPUS,LEIRAS) values ('23','Robert Louis Stevenson','Dr. Jekyll és Mr. Hyde különös esete - Hangoskönyv','2793','212','TITIS TANÁCSADÓ KFT.','https://s06.static.libri.hu/cover/79/1/6910508_5.jpg','2020','Hangoskönyv','Stevenson kisregénye a Jekyll-Hyde párost napjainkig az emberben lakozó jó és gonosz szimbólumává tette. Az 1880-as években jelent meg, 1920 és 2000 között számos film készült belõle, majd színdarabok és musical is. Nagy hatását nem csak a kissé hátborzongató leírásnak, a tudomány és a transzcendens gondolkodás ütköztetésének, hanem annak is köszönhetõ, hogy az emberi lélek mûködését korát megelõzõ realitással elemzi. A történetben a gonosz kerekedik fölül, de végül nem gyõzedelmeskedik, maga is elbukik. Hirtling Isván elõadása érzékletesen kiemeli a fõhõs belsõ vívódása és a külsõ szemlélõk angolos távolságtartása között mindvégig feszülõ ellentétet.');
Insert into VOROS.KONYV (ID,SZERZO,CIM,AR,OLDALSZAM,KIADO,ELERESIUT,KIADASIEV,TIPUS,LEIRAS) values ('24','Ella Maise','Elsõ pillantás - 2019 - Alexander és Maya 1.','2565','244','ÁLOMGYÁR KIADÓ','https://s04.static.libri.hu/cover/d0/4/5767536_5.jpg','2019','Antikvár','Ez a történet egyedi és imádnivaló! Dayreader
A nevem Maya, és nem ugyanaz a lány vagyok, aki egy hónapja voltam.
Ürességet érzek a mellkasomban. A szívem megszakadt a fájdalomtól.
Azokon a sötét éjszakákon, azokban a fájdalmas pillanatokban, amikor visszaemlékszem, miként szorítottam sikoltva apám hideg, élettelen kezét, nehezemre esik még a lélegzetvétel is, ahogy érzem a veszteség súlyát rám nehezedni.
De minden történetben van egy hõs is, ugye? Egy hõs, akit attól a pillanattól semmibe vettem, hogy kinyitotta a száját.
A neve Alexander. Õ az elkerülhetetlen, akirõl soha nem gondoltam, hogy megtalálom. Az egyetlen, akihez az összetört szívem húz. A lénye, az érintése, minden, amit tett, hogy elviselhetõbbé tegye a fájdalmam, örökké nyomot hagy bennem.');
Insert into VOROS.KONYV (ID,SZERZO,CIM,AR,OLDALSZAM,KIADO,ELERESIUT,KIADASIEV,TIPUS,LEIRAS) values ('25','Stephen King','Kedvencek temetõje - 2019','5700','587','EURÓPA KÖNYVKIADÓ KFT.','https://s02.static.libri.hu/cover/8a/e/5133250_5.jpg','2019','Antikvár','Dr. Louis Creed, a fiatal orvos kitûnõ állást kapott: a Maine-i Egyetem rendelõjének lett a vezetõje, ezért Chicagóból az idilli New England-i tájban álló, magányos házba költözik családjával feleségével, Rachellel, ötéves lányukkal, Ellie-vel és másfél éves kisfiukkal, Gage-dzsel. Boldogan, a szép jövõ reményében veszik birtokba új otthonukat Az elsõ gondra az út túloldalán, velük átellenben élõ öregember, Jud hívja föl a figyelmüket: a tájat kettészelõ országúton éjjel-nappal olajszállító tartálykocsik dübörögnek, halálos veszélynek téve ki a háziállatokat és az apróságokat. Nem véletlenül van a közelben egy nyomasztó légkörû, ódon temetõ az elgázolt háziállatok számára Az elsõ trauma akkor éri Louist, amikor egy baleset áldozatául esett, haldokló fiú a rendelõben dadogó szavakkal óva inti az állattemetõn túli veszedelemtõl.');
Insert into VOROS.KONYV (ID,SZERZO,CIM,AR,OLDALSZAM,KIADO,ELERESIUT,KIADASIEV,TIPUS,LEIRAS) values ('38','Bauer Barbara','A fekete rózsa','2100','312','Jaffa Kiadó','https://s06.static.libri.hu/cover/94/6/6704856_5.jpg','2020','Könyv','Azt mondják, fekete rózsa nem létezik. Színe csupán fények játéka, árnyalatok keltette látszat. Sommer Anna azonban nap mint nap ott látja a szõlõben, a sorok végébe ültetve. Vajon egyszer megtudja majd, milyen is a színe valójában?');
REM INSERTING into VOROS.MAGAZIN
SET DEFINE OFF;
Insert into VOROS.MAGAZIN (KONYV_ID,GYAKORISAG) values ('1','heti');
Insert into VOROS.MAGAZIN (KONYV_ID,GYAKORISAG) values ('2','havi');
Insert into VOROS.MAGAZIN (KONYV_ID,GYAKORISAG) values ('16','heti');
Insert into VOROS.MAGAZIN (KONYV_ID,GYAKORISAG) values ('17','heti');
Insert into VOROS.MAGAZIN (KONYV_ID,GYAKORISAG) values ('18','heti');
REM INSERTING into VOROS.MUFAJ
SET DEFINE OFF;
Insert into VOROS.MUFAJ (ID,NEV) values ('26','Életrajz/életmód');
Insert into VOROS.MUFAJ (ID,NEV) values ('1','Erotika');
Insert into VOROS.MUFAJ (ID,NEV) values ('2','Dráma');
Insert into VOROS.MUFAJ (ID,NEV) values ('3','Krimi');
Insert into VOROS.MUFAJ (ID,NEV) values ('4','Vígjáték');
Insert into VOROS.MUFAJ (ID,NEV) values ('5','Jazz');
Insert into VOROS.MUFAJ (ID,NEV) values ('6','Pop');
Insert into VOROS.MUFAJ (ID,NEV) values ('7','Rap');
Insert into VOROS.MUFAJ (ID,NEV) values ('8','Misztikus');
Insert into VOROS.MUFAJ (ID,NEV) values ('9','Akció');
Insert into VOROS.MUFAJ (ID,NEV) values ('10','Családi');
Insert into VOROS.MUFAJ (ID,NEV) values ('11','Western');
Insert into VOROS.MUFAJ (ID,NEV) values ('12','Rajzfilm');
Insert into VOROS.MUFAJ (ID,NEV) values ('13','Könnyûzene');
Insert into VOROS.MUFAJ (ID,NEV) values ('14','Komolyzene');
Insert into VOROS.MUFAJ (ID,NEV) values ('15','Népzene');
Insert into VOROS.MUFAJ (ID,NEV) values ('16','Spirituális zene');
Insert into VOROS.MUFAJ (ID,NEV) values ('17','Fantasy');
Insert into VOROS.MUFAJ (ID,NEV) values ('18','Humor-kabaré');
Insert into VOROS.MUFAJ (ID,NEV) values ('19','Romantkius');
Insert into VOROS.MUFAJ (ID,NEV) values ('20','Történelmi');
Insert into VOROS.MUFAJ (ID,NEV) values ('21','Háborús');
Insert into VOROS.MUFAJ (ID,NEV) values ('22','Mûvész');
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
Insert into VOROS.MULTIMEDIA (ID,CIM,AR,ELERESIUT) values ('3','Revelación ','5000','https://upload.wikimedia.org/wikipedia/en/3/34/Selena_Gomez_-_Revelaci%C3%B3n.png');
Insert into VOROS.MULTIMEDIA (ID,CIM,AR,ELERESIUT) values ('4','The Highlights','5000','https://upload.wikimedia.org/wikipedia/hu/1/12/The_Weeknd_-_The_Highlights_%28album_cover%29.png');
Insert into VOROS.MULTIMEDIA (ID,CIM,AR,ELERESIUT) values ('5','Az AranyPinty','1500','https://media.port.hu/images/001/162/350x510/916.jpg');
Insert into VOROS.MULTIMEDIA (ID,CIM,AR,ELERESIUT) values ('6','Tenet','2800','https://media.port.hu/images/001/244/350x510/378.jpg');
Insert into VOROS.MULTIMEDIA (ID,CIM,AR,ELERESIUT) values ('7','Judy','3000','https://media.port.hu/images/001/184/350x510/480.jpg');
Insert into VOROS.MULTIMEDIA (ID,CIM,AR,ELERESIUT) values ('8','Sonic, a sündisznó','2800','https://media.port.hu/images/001/190/350x510/896.jpg');
Insert into VOROS.MULTIMEDIA (ID,CIM,AR,ELERESIUT) values ('9','Délidõ','1800','https://media.port.hu/images/000/139/415x310/454.jpg');
Insert into VOROS.MULTIMEDIA (ID,CIM,AR,ELERESIUT) values ('10','Dolittle','4700','https://media.port.hu/images/001/184/350x510/522.jpg');
Insert into VOROS.MULTIMEDIA (ID,CIM,AR,ELERESIUT) values ('22','A remény rabjai','1500',' https://media.port.hu/images/001/084/200x286/126.jpg');
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
Insert into VOROS.TANKONYV (KONYV_ID,AJANLOTTKOR,FAJTA) values ('6','17','tankönyv');
Insert into VOROS.TANKONYV (KONYV_ID,AJANLOTTKOR,FAJTA) values ('5','17','feladatgyüjtemény');
Insert into VOROS.TANKONYV (KONYV_ID,AJANLOTTKOR,FAJTA) values ('19','17','tankönyv');
Insert into VOROS.TANKONYV (KONYV_ID,AJANLOTTKOR,FAJTA) values ('14','17','feladatgyüjtemény');
Insert into VOROS.TANKONYV (KONYV_ID,AJANLOTTKOR,FAJTA) values ('20','17','tankönyv');
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
Insert into VOROS.VASARLAS (ID,SZAMLAIGENYES,MIKOR,ATVETEL) values ('5','1',to_date('21-MÁJ.  -09','RR-MON-DD'),'hazhoz');
Insert into VOROS.VASARLAS (ID,SZAMLAIGENYES,MIKOR,ATVETEL) values ('6','0',to_date('21-MÁJ.  -09','RR-MON-DD'),'uzletbe');
Insert into VOROS.VASARLAS (ID,SZAMLAIGENYES,MIKOR,ATVETEL) values ('8','1',to_date('21-MÁJ.  -09','RR-MON-DD'),'hazhoz');
Insert into VOROS.VASARLAS (ID,SZAMLAIGENYES,MIKOR,ATVETEL) values ('9','0',to_date('21-MÁJ.  -09','RR-MON-DD'),'uzletbe');
Insert into VOROS.VASARLAS (ID,SZAMLAIGENYES,MIKOR,ATVETEL) values ('12','0',to_date('21-MÁJ.  -09','RR-MON-DD'),'uzletbe');
Insert into VOROS.VASARLAS (ID,SZAMLAIGENYES,MIKOR,ATVETEL) values ('21','1',to_date('21-MÁJ.  -09','RR-MON-DD'),'hazhoz');
Insert into VOROS.VASARLAS (ID,SZAMLAIGENYES,MIKOR,ATVETEL) values ('13','0',to_date('21-MÁJ.  -09','RR-MON-DD'),'hazhoz');
Insert into VOROS.VASARLAS (ID,SZAMLAIGENYES,MIKOR,ATVETEL) values ('14','0',to_date('21-MÁJ.  -09','RR-MON-DD'),'uzletbe');
Insert into VOROS.VASARLAS (ID,SZAMLAIGENYES,MIKOR,ATVETEL) values ('2','0',to_date('21-MÁJ.  -09','RR-MON-DD'),'uzletbe');
Insert into VOROS.VASARLAS (ID,SZAMLAIGENYES,MIKOR,ATVETEL) values ('3','1',to_date('21-MÁJ.  -09','RR-MON-DD'),'hazhoz');
Insert into VOROS.VASARLAS (ID,SZAMLAIGENYES,MIKOR,ATVETEL) values ('4','0',to_date('21-MÁJ.  -09','RR-MON-DD'),'uzletbe');
Insert into VOROS.VASARLAS (ID,SZAMLAIGENYES,MIKOR,ATVETEL) values ('7','1',to_date('21-MÁJ.  -09','RR-MON-DD'),'hazhoz');
Insert into VOROS.VASARLAS (ID,SZAMLAIGENYES,MIKOR,ATVETEL) values ('10','0',to_date('21-MÁJ.  -09','RR-MON-DD'),'uzletbe');
Insert into VOROS.VASARLAS (ID,SZAMLAIGENYES,MIKOR,ATVETEL) values ('11','0',to_date('21-MÁJ.  -09','RR-MON-DD'),'uzletbe');
Insert into VOROS.VASARLAS (ID,SZAMLAIGENYES,MIKOR,ATVETEL) values ('1','1',to_date('21-MÁJ.  -09','RR-MON-DD'),'hazhoz');
REM INSERTING into VOROS.VASARLO
SET DEFINE OFF;
Insert into VOROS.VASARLO (ID,EMAIL,JELSZO,NEV,SZULIDO,TORZSVASARLOE,ADMINE,IRSZAM,UTCANEV,HAZSZAM) values ('1','hapi@kacsa.com','123456','Hápi Kacsa',to_date('21-ÁPR.  -27','RR-MON-DD'),'1','1','6700','Lovas utca','60');
Insert into VOROS.VASARLO (ID,EMAIL,JELSZO,NEV,SZULIDO,TORZSVASARLOE,ADMINE,IRSZAM,UTCANEV,HAZSZAM) values ('2','janos@gmail.com','Janos!1234','Kiss János',to_date('50-AUG.  -27','RR-MON-DD'),'1','0','6520','Kém utca','10');
Insert into VOROS.VASARLO (ID,EMAIL,JELSZO,NEV,SZULIDO,TORZSVASARLOE,ADMINE,IRSZAM,UTCANEV,HAZSZAM) values ('3','eszter@gmail.com','Eszter!1234','Nagy Eszter',to_date('98-ÁPR.  -26','RR-MON-DD'),'1','0','3201','Hajós utca','520');
Insert into VOROS.VASARLO (ID,EMAIL,JELSZO,NEV,SZULIDO,TORZSVASARLOE,ADMINE,IRSZAM,UTCANEV,HAZSZAM) values ('4','geza@gmail.com','Geza!1234','Kovács Géza',to_date('67-SZEPT.-25','RR-MON-DD'),'1','0','5204','Legendás utca','1');
Insert into VOROS.VASARLO (ID,EMAIL,JELSZO,NEV,SZULIDO,TORZSVASARLOE,ADMINE,IRSZAM,UTCANEV,HAZSZAM) values ('5','hanna@gmail.com','Hanna!1234','Lovász Hanna',to_date('02-AUG.  -31','RR-MON-DD'),'0','0','5208','Borárús utca','56');
Insert into VOROS.VASARLO (ID,EMAIL,JELSZO,NEV,SZULIDO,TORZSVASARLOE,ADMINE,IRSZAM,UTCANEV,HAZSZAM) values ('6','adam@gmail.com','Adam!1234','Fekete Ádám',to_date('75-MÁRC. -17','RR-MON-DD'),'0','0','8520','Combos utca','852');
Insert into VOROS.VASARLO (ID,EMAIL,JELSZO,NEV,SZULIDO,TORZSVASARLOE,ADMINE,IRSZAM,UTCANEV,HAZSZAM) values ('7','balazs@gmail.com','Balazs!1324','Gál Balázs',to_date('00-JAN.  -20','RR-MON-DD'),'0','0','8541','Fõ utca','622');
Insert into VOROS.VASARLO (ID,EMAIL,JELSZO,NEV,SZULIDO,TORZSVASARLOE,ADMINE,IRSZAM,UTCANEV,HAZSZAM) values ('8','kata@gmail.com','Kata!1234','Horváth Kata',to_date('85-FEBR. -05','RR-MON-DD'),'0','0','6325','Zöldike utca','85');
Insert into VOROS.VASARLO (ID,EMAIL,JELSZO,NEV,SZULIDO,TORZSVASARLOE,ADMINE,IRSZAM,UTCANEV,HAZSZAM) values ('9','maria@gmail.com','Maria!1234','Szabó Mária',to_date('75-SZEPT.-15','RR-MON-DD'),'0','0','5241','Bolti utca','8');
Insert into VOROS.VASARLO (ID,EMAIL,JELSZO,NEV,SZULIDO,TORZSVASARLOE,ADMINE,IRSZAM,UTCANEV,HAZSZAM) values ('10','erzsebet@gmail.com','Erzsebet!1234','Piros Erzsébet',to_date('85-FEBR. -11','RR-MON-DD'),'0','0','5214','Gerenda utca','41');
Insert into VOROS.VASARLO (ID,EMAIL,JELSZO,NEV,SZULIDO,TORZSVASARLOE,ADMINE,IRSZAM,UTCANEV,HAZSZAM) values ('11','adel@gmail.com','Adel!1234','Halmai Adél',to_date('88-FEBR. -07','RR-MON-DD'),'0','0','4520','Felhõ utca','10');
Insert into VOROS.VASARLO (ID,EMAIL,JELSZO,NEV,SZULIDO,TORZSVASARLOE,ADMINE,IRSZAM,UTCANEV,HAZSZAM) values ('12','almos@gmail.com','Almos!1234','Legendás Álmos',to_date('89-NOV.  -26','RR-MON-DD'),'0','0','8520','Galamb utca','20');
Insert into VOROS.VASARLO (ID,EMAIL,JELSZO,NEV,SZULIDO,TORZSVASARLOE,ADMINE,IRSZAM,UTCANEV,HAZSZAM) values ('13','eniko@gmail.com','Eniko!1234','Nagyvári Enikõ',to_date('96-DEC.  -12','RR-MON-DD'),'0','0','6520','Hõs utca','52');
Insert into VOROS.VASARLO (ID,EMAIL,JELSZO,NEV,SZULIDO,TORZSVASARLOE,ADMINE,IRSZAM,UTCANEV,HAZSZAM) values ('23','wivien@gmail.com','123456','Vivi',to_date('16-ÁPR.  -21','RR-MON-DD'),'0','0','5410','Lovas utca','10');
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
