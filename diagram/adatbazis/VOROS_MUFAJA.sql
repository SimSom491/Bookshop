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

