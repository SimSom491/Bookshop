package com.example.konyvesbolt.model;

public class Magazin extends Konyv{
    private String gyakorisag;

    public Magazin(int id, String szerzo, String cim, int ar, int oldalszam, String kiado, String eleresiUt, int kiadasiEv, String tipus, String gyakorisag) {
        super(id, szerzo, cim, ar, oldalszam, kiado, eleresiUt, kiadasiEv, tipus);
        this.gyakorisag = gyakorisag;
    }

    public Magazin() {
    }
}
