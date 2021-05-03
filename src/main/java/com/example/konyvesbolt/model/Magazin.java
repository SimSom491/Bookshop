package com.example.konyvesbolt.model;

public class Magazin extends Konyv{
    private String gyakorisag;

    public Magazin(int id, String szerzo, String cim, int ar, int oldalszam, String kiado, String eleresiUt, int kiadasiEv, String tipus, String leiras, String gyakorisag) {
        super(id, szerzo, cim, ar, oldalszam, kiado, eleresiUt, kiadasiEv, tipus, leiras);
        this.gyakorisag = gyakorisag;
    }

    public Magazin(String szerzo, String cim, int ar, int oldalszam, String kiado, String eleresiUt, int kiadasiEv, String tipus, String leiras, String gyakorisag) {
        super(szerzo, cim, ar, oldalszam, kiado, eleresiUt, kiadasiEv, tipus, leiras);
        this.gyakorisag = gyakorisag;
    }

    public Magazin() {
    }

    public String getGyakorisag() {
        return gyakorisag;
    }
}
