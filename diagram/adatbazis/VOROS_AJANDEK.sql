create table AJANDEK
(
    NEV       VARCHAR2(100) not null
        constraint AJANDEK_PK
            primary key,
    AR        NUMBER        not null,
    ELERESIUT VARCHAR2(200)
)
/

INSERT INTO VOROS.AJANDEK (NEV, AR, ELERESIUT) VALUES ('Unicorn-bögre', 500, null);
INSERT INTO VOROS.AJANDEK (NEV, AR, ELERESIUT) VALUES ('Unicorn-hátizsák', 1000, null);
INSERT INTO VOROS.AJANDEK (NEV, AR, ELERESIUT) VALUES ('Unicorn-ajándék Utalvány', 5000, null);
INSERT INTO VOROS.AJANDEK (NEV, AR, ELERESIUT) VALUES ('Unicorn-füzet', 300, null);
INSERT INTO VOROS.AJANDEK (NEV, AR, ELERESIUT) VALUES ('Unicorn-ceruza', 50, null);
INSERT INTO VOROS.AJANDEK (NEV, AR, ELERESIUT) VALUES ('Unicorn-plüssfigura', 4000, null);
INSERT INTO VOROS.AJANDEK (NEV, AR, ELERESIUT) VALUES ('Unicorn-táska', 5000, null);
INSERT INTO VOROS.AJANDEK (NEV, AR, ELERESIUT) VALUES ('Unicorn-poló', 3000, null);
INSERT INTO VOROS.AJANDEK (NEV, AR, ELERESIUT) VALUES ('Unicorn-pulcsi', 4300, null);
INSERT INTO VOROS.AJANDEK (NEV, AR, ELERESIUT) VALUES ('Unicorn-szarv', 10000, null);