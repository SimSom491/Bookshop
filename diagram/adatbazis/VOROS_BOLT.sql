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

INSERT INTO VOROS.BOLT (ID, NEV, ELHELYEZKEDES, NYITVATARTAS) VALUES (1, 'Unicorn Szeged', 'Szeged', 'H-P: 8-16');
INSERT INTO VOROS.BOLT (ID, NEV, ELHELYEZKEDES, NYITVATARTAS) VALUES (2, 'Unicorn Budapest', 'Budapest', 'H-P:8-16');
INSERT INTO VOROS.BOLT (ID, NEV, ELHELYEZKEDES, NYITVATARTAS) VALUES (3, 'Unicorn Zalaegerszeg', 'Zalaegerszeg', 'H-P: 8-16');
INSERT INTO VOROS.BOLT (ID, NEV, ELHELYEZKEDES, NYITVATARTAS) VALUES (4, 'Unicorn Kisalföld', 'Győr', 'H-P: 8-16');
INSERT INTO VOROS.BOLT (ID, NEV, ELHELYEZKEDES, NYITVATARTAS) VALUES (5, 'Unicorn Alföld', 'Kecskemét', 'H-V: 8-18');
INSERT INTO VOROS.BOLT (ID, NEV, ELHELYEZKEDES, NYITVATARTAS) VALUES (6, 'Unicorn Baranya', 'Pécs', 'H-P: 8-17');
INSERT INTO VOROS.BOLT (ID, NEV, ELHELYEZKEDES, NYITVATARTAS) VALUES (7, 'Unicorn Kárpátalja', 'Szombathely', 'H-P: 8-16');
INSERT INTO VOROS.BOLT (ID, NEV, ELHELYEZKEDES, NYITVATARTAS) VALUES (8, 'Fejér Unicorn', 'Székesfehérvár', 'H-P: 8-16');
INSERT INTO VOROS.BOLT (ID, NEV, ELHELYEZKEDES, NYITVATARTAS) VALUES (9, 'Unicorn Erőmű', 'Paks', 'H-P: 8-16');
INSERT INTO VOROS.BOLT (ID, NEV, ELHELYEZKEDES, NYITVATARTAS) VALUES (10, 'Heves Unicorn', 'Eger', null);