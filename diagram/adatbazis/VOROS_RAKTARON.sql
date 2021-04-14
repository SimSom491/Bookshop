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

