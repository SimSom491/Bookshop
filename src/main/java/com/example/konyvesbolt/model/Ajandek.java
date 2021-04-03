package com.example.konyvesbolt.model;

public class Ajandek {
    private int ar;
    private String nev;
    private String eleresiUt;

    public Ajandek(int ar, String nev, String eleresiUt) {
        this.ar = ar;
        this.nev = nev;
        this.eleresiUt = eleresiUt;
    }

    public Ajandek() {
    }

    public Ajandek(String nev) {
        this.nev = nev;
    }

    public int getAr() {
        return ar;
    }

    public void setAr(int ar) {
        this.ar = ar;
    }

    public String getNev() {
        return nev;
    }

    public void setNev(String nev) {
        this.nev = nev;
    }

    public String getEleresiUt() {
        return eleresiUt;
    }

    public void setEleresiUt(String eleresiUt) {
        this.eleresiUt = eleresiUt;
    }
}
