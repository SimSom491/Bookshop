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