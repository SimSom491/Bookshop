create table VASARLO
(
    ID            NUMBER generated as identity,
    EMAIL         VARCHAR2(50)  not null,
    JELSZO        VARCHAR2(100) not null,
    NEV           VARCHAR2(100) not null,
    SZULIDO       DATE,
    TORZSVASARLOE CHAR          not null,
    IRSZAM        NUMBER,
    UTCANEV       VARCHAR2(100),
    HAZSZAM       NUMBER
)
/

create unique index VASARLO_EMAIL_UINDEX
    on VASARLO (EMAIL)
/

create unique index VASARLO_ID_UINDEX
    on VASARLO (ID)
/

alter table VASARLO
    add constraint VASARLO_PK
        primary key (ID)
/

