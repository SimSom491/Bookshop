package com.example.konyvesbolt.model;

public class Konyv {
    private int id;
    private String szerzo;
    private String cim;
    private int ar;
    private int oldalszam;
    private String kiado;
    private String eleresiUt;
    private int kiadasiEv;
    private String tipus;

    public Konyv(int id, String szerzo, String cim, int ar, int oldalszam, String kiado, String eleresiUt, int kiadasiEv, String tipus) {
        this.id = id;
        this.szerzo = szerzo;
        this.cim = cim;
        this.ar = ar;
        this.oldalszam = oldalszam;
        this.kiado = kiado;
        this.eleresiUt = eleresiUt;
        this.kiadasiEv = kiadasiEv;
        this.tipus = tipus;
    }

    public Konyv() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSzerzo() {
        return szerzo;
    }

    public void setSzerzo(String szerzo) {
        this.szerzo = szerzo;
    }

    public String getCim() {
        return cim;
    }

    public void setCim(String cim) {
        this.cim = cim;
    }

    public int getAr() {
        return ar;
    }

    public void setAr(int ar) {
        this.ar = ar;
    }

    public int getOldalszam() {
        return oldalszam;
    }

    public void setOldalszam(int oldalszam) {
        this.oldalszam = oldalszam;
    }

    public String getKiado() {
        return kiado;
    }

    public void setKiado(String kiado) {
        this.kiado = kiado;
    }

    public String getEleresiUt() {
        return eleresiUt;
    }

    public void setEleresiUt(String eleresiUt) {
        this.eleresiUt = eleresiUt;
    }

    public int getKiadasiEv() {
        return kiadasiEv;
    }

    public void setKiadasiEv(int kiadasiEv) {
        this.kiadasiEv = kiadasiEv;
    }

    public String getTipus() {
        return tipus;
    }

    public void setTipus(String tipus) {
        this.tipus = tipus;
    }
}
