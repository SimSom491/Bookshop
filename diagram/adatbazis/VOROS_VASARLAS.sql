create table VASARLAS
(
    ID            NUMBER generated as identity,
    SZAMLAIGENYES CHAR          not null,
    MIKOR         DATE          not null,
    ATVETEL       VARCHAR2(100) not null
)
/

create unique index VASARLAS_ID_UINDEX
    on VASARLAS (ID)
/

alter table VASARLAS
    add constraint VASARLAS_PK
        primary key (ID)
/

