package com.example.konyvesbolt.model;

public class Ajandek {
    private String nev;
    private int ar;
    private String eleresiUt;

    public Ajandek(String nev, int ar, String eleresiUt) {
        this.nev = nev;
        this.ar = ar;
        this.eleresiUt = eleresiUt;
    }

    public Ajandek(String nev, int ar) {
        this.nev = nev;
        this.ar = ar;
    }

    public Ajandek() {
    }

    public String getNev() {
        return nev;
    }

    public void setNev(String nev) {
        this.nev = nev;
    }

    public int getAr() {
        return ar;
    }

    public void setAr(int ar) {
        this.ar = ar;
    }

    public String getEleresiUt() {
        return eleresiUt;
    }

    public void setEleresiUt(String eleresiUt) {
        this.eleresiUt = eleresiUt;
    }
}
