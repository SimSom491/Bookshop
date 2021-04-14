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

