package com.example.konyvesbolt.model;

public class Multimedia {
    private int id;
    private String cim;
    private int ar;
    private String eleresiUt;

    public Multimedia(int id, String cim, int ar, String eleresiUt) {
        this.id = id;
        this.cim = cim;
        this.ar = ar;
        this.eleresiUt = eleresiUt;
    }

    public Multimedia() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public String getEleresiUt() {
        return eleresiUt;
    }

    public void setEleresiUt(String eleresiUt) {
        this.eleresiUt = eleresiUt;
    }
}
