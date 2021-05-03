package com.example.konyvesbolt.model;

public class Hangoskonyv extends Konyv{
    private String elbeszelo;
    private int hossz;

    public Hangoskonyv(int id, String szerzo, String cim, int ar, int oldalszam, String kiado, String eleresiUt, int kiadasiEv, String tipus,String leiras, String elbeszelo, int hossz) {
        super(id, szerzo, cim, ar, oldalszam, kiado, eleresiUt, kiadasiEv, tipus, leiras);
        this.elbeszelo = elbeszelo;
        this.hossz = hossz;
    }

    public Hangoskonyv(String szerzo, String cim, int ar, int oldalszam, String kiado, String eleresiUt, int kiadasiEv, String tipus, String leiras, String elbeszelo, int hossz) {
        super(szerzo, cim, ar, oldalszam, kiado, eleresiUt, kiadasiEv, tipus, leiras);
        this.elbeszelo = elbeszelo;
        this.hossz = hossz;
    }

    public Hangoskonyv() {
    }

    public String getElbeszelo() {
        return elbeszelo;
    }

    public void setElbeszelo(String elbeszelo) {
        this.elbeszelo = elbeszelo;
    }

    public int getHossz() {
        return hossz;
    }

    public void setHossz(int hossz) {
        this.hossz = hossz;
    }
}
