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

