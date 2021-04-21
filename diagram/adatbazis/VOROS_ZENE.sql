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

INSERT INTO VOROS.ZENE (MULTIMEDIA_ID, ELOADO) VALUES (5, 'Selena Gomez');
INSERT INTO VOROS.ZENE (MULTIMEDIA_ID, ELOADO) VALUES (4, 'Ariana Grande');
INSERT INTO VOROS.ZENE (MULTIMEDIA_ID, ELOADO) VALUES (3, 'Taylor Swift');
INSERT INTO VOROS.ZENE (MULTIMEDIA_ID, ELOADO) VALUES (6, 'The Weeknd');