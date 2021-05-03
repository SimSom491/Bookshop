package com.example.konyvesbolt.model;

public class Tankonyv extends Konyv{
    private int ajanlottKor;
    private String fajta;

    public Tankonyv(int id, String szerzo, String cim, int ar, int oldalszam, String kiado, String eleresiUt, int kiadasiEv, String tipus, String leiras,int ajanlottKor,  String fajta) {
        super(id, szerzo, cim, ar, oldalszam, kiado, eleresiUt, kiadasiEv, tipus, leiras);
        this.ajanlottKor = ajanlottKor;
        this.fajta = fajta;
    }

    public Tankonyv(String szerzo, String cim, int ar, int oldalszam, String kiado, String eleresiUt, int kiadasiEv, String tipus, String leiras, int ajanlottKor, String fajta) {
        super(szerzo, cim, ar, oldalszam, kiado, eleresiUt, kiadasiEv, tipus, leiras);
        this.ajanlottKor = ajanlottKor;
        this.fajta = fajta;
    }

    public Tankonyv() {
    }

    public void setAjanlottKor(int ajanlottKor) {
        this.ajanlottKor = ajanlottKor;
    }

    public void setFajta(String fajta) {
        this.fajta = fajta;
    }

    public int getAjanlottKor() {
        return ajanlottKor;
    }

    public String getFajta() {
        return fajta;
    }
}
