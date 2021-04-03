package com.example.konyvesbolt.model;

public class Tankonyv extends Konyv{
    private int ajanlottKor;
    private String gyakorisag;

    public Tankonyv(int id, String szerzo, String cim, int ar, int oldalszam, String kiado, String eleresiUt, int kiadasiEv, String tipus, int ajanlottKor, String gyakorisag) {
        super(id, szerzo, cim, ar, oldalszam, kiado, eleresiUt, kiadasiEv, tipus);
        this.ajanlottKor = ajanlottKor;
        this.gyakorisag = gyakorisag;
    }

    public Tankonyv() {
    }
}
