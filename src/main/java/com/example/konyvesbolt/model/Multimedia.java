package com.example.konyvesbolt.model;

import java.awt.*;
import java.io.Serializable;

public class Multimedia implements Comparable<Multimedia>, Serializable {
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

    public Multimedia(String cim, int ar, String eleresiUt) {
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

    @Override
    public int compareTo(Multimedia multimedia) {
        return Character.compare(this.cim.charAt(0), multimedia.cim.charAt(0));
    }
}
