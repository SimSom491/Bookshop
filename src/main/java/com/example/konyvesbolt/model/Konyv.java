package com.example.konyvesbolt.model;

import java.io.Serializable;
import java.util.Comparator;

public class Konyv implements Comparable<Konyv>, Serializable {
    private int id;
    private String szerzo;
    private String cim;
    private int ar;
    private int oldalszam;
    private String kiado;
    private String eleresiUt;
    private int kiadasiEv;
    private String tipus;
    private String leiras;

    @Override
    public boolean equals(Object obj) {
        if (obj instanceof Konyv){
            return (((Konyv) obj).cim.equals(cim));
        } else {
            return false;
        }
    }

    public Konyv(int id, String szerzo, String cim, int ar, int oldalszam, String kiado, String eleresiUt, int kiadasiEv, String tipus, String leiras) {
        this.id = id;
        this.szerzo = szerzo;
        this.cim = cim;
        this.ar = ar;
        this.oldalszam = oldalszam;
        this.kiado = kiado;
        this.eleresiUt = eleresiUt;
        this.kiadasiEv = kiadasiEv;
        this.tipus = tipus;
        this.leiras = leiras;
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

    public String getLeiras() {
        return leiras;
    }

    public void setLeiras(String leiras) {
        this.leiras = leiras;
    }

    public Konyv(String szerzo, String cim, int ar, int oldalszam, String kiado, String eleresiUt, int kiadasiEv, String tipus, String leiras) {
        this.szerzo = szerzo;
        this.cim = cim;
        this.ar = ar;
        this.oldalszam = oldalszam;
        this.kiado = kiado;
        this.eleresiUt = eleresiUt;
        this.kiadasiEv = kiadasiEv;
        this.tipus = tipus;
        this.leiras = leiras;
    }


    @Override
    public int compareTo(Konyv o) {
       if (o.getCim().charAt(0) > cim.charAt(0)){
           return -1;
       } else if(o.getCim().charAt(0) < cim.charAt(0)){
           return 1;
       } else if (o.cim.equals(this.cim)){
           return 0;
       } else {
           return 1;
       }

    }
}
