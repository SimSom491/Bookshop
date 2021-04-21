create table VASAROL
(
    ID            NUMBER generated as identity,
    VASARLO_ID    NUMBER not null
        constraint VASAROL_VASARLO_ID_FK
            references VASARLO
                on delete cascade,
    KEDVEZMENY_ID NUMBER
        constraint VASAROL_KEDVEZMENY_ID_FK
            references KEDVEZMENY
                on delete cascade,
    BOLT_ID       NUMBER not null
        constraint VASAROL_BOLT_ID_FK
            references BOLT,
    VASARLAS_ID   NUMBER not null
        constraint VASAROL_VASARLAS_ID_FK
            references VASARLAS
                on delete cascade
)
/

create unique index VASAROL_ID_UINDEX
    on VASAROL (ID)
/

alter table VASAROL
    add constraint VASAROL_PK
        primary key (ID)
/

