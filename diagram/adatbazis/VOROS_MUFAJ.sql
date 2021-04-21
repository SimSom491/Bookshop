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

INSERT INTO VOROS.MUFAJ (ID, NEV) VALUES (23, 'Erotika');
INSERT INTO VOROS.MUFAJ (ID, NEV) VALUES (1, 'Dráma');
INSERT INTO VOROS.MUFAJ (ID, NEV) VALUES (2, 'Krimi');
INSERT INTO VOROS.MUFAJ (ID, NEV) VALUES (3, 'Vígjáték');
INSERT INTO VOROS.MUFAJ (ID, NEV) VALUES (4, 'Jazz');
INSERT INTO VOROS.MUFAJ (ID, NEV) VALUES (5, 'Pop');
INSERT INTO VOROS.MUFAJ (ID, NEV) VALUES (6, 'Rap');
INSERT INTO VOROS.MUFAJ (ID, NEV) VALUES (7, 'Misztikus');
INSERT INTO VOROS.MUFAJ (ID, NEV) VALUES (8, 'Akció');
INSERT INTO VOROS.MUFAJ (ID, NEV) VALUES (9, 'Családi');
INSERT INTO VOROS.MUFAJ (ID, NEV) VALUES (10, 'Western');
INSERT INTO VOROS.MUFAJ (ID, NEV) VALUES (11, 'Rajzfilm');
INSERT INTO VOROS.MUFAJ (ID, NEV) VALUES (12, 'Könnyűzene');
INSERT INTO VOROS.MUFAJ (ID, NEV) VALUES (13, 'Komolyzene');
INSERT INTO VOROS.MUFAJ (ID, NEV) VALUES (14, 'Népzene');
INSERT INTO VOROS.MUFAJ (ID, NEV) VALUES (15, 'Spirituális zene');
INSERT INTO VOROS.MUFAJ (ID, NEV) VALUES (16, 'Fantasy');
INSERT INTO VOROS.MUFAJ (ID, NEV) VALUES (17, 'Humor-kabaré');
INSERT INTO VOROS.MUFAJ (ID, NEV) VALUES (18, 'Romantkius');
INSERT INTO VOROS.MUFAJ (ID, NEV) VALUES (19, 'Történelmi');
INSERT INTO VOROS.MUFAJ (ID, NEV) VALUES (20, 'Háborús');
INSERT INTO VOROS.MUFAJ (ID, NEV) VALUES (21, 'Művész');
INSERT INTO VOROS.MUFAJ (ID, NEV) VALUES (22, 'Horror');