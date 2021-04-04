package com.example.konyvesbolt.model;

public class Film extends Multimedia{
    private int ev;
    private int hossz;

    public Film(int id, String cim, int ar, String eleresiUt, int ev, int hossz) {
        super(id, cim, ar, eleresiUt);
        this.ev = ev;
        this.hossz = hossz;
    }

    public Film() {
    }

    public int getEv() {
        return ev;
    }

    public void setEv(int ev) {
        this.ev = ev;
    }

    public int getHossz() {
        return hossz;
    }

    public void setHossz(int hossz) {
        this.hossz = hossz;
    }
}
