package com.example.konyvesbolt.model;

import java.awt.*;
import java.io.Serializable;
import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;

public class Vasarlo implements Serializable {
    private int id;
    private String email;
    private String jelszo;
    private String nev;
    private Date szulido;
    private boolean torzsvasarloe;
    private int irszam;
    private String utca;
    private int hazszam;

    public boolean isAdmine() {
        return admine;
    }

    public void setAdmine(boolean admine) {
        this.admine = admine;
    }

    private boolean admine;

    public Vasarlo(int id, String email, String jelszo, String nev, Date szulido, boolean torzsvasarloe, boolean admine, int irszam, String utca, int hazszam) {
        this.id = id;
        this.email = email;
        this.jelszo = jelszo;
        this.nev = nev;
        this.szulido = szulido;
        this.torzsvasarloe = torzsvasarloe;
        this.admine = admine;
        this.irszam = irszam;
        this.utca = utca;
        this.hazszam = hazszam;
    }

    public Vasarlo(String email, String jelszo, String nev, Date szulido, int irszam, String utca, int hazszam) {
        this.email = email;
        this.jelszo = jelszo;
        this.nev = nev;
        this.szulido = szulido;
        this.irszam = irszam;
        this.utca = utca;
        this.hazszam = hazszam;
    }



    public boolean isTorzsvasarloe() {
        return torzsvasarloe;
    }

    public int getIrszam() {
        return irszam;
    }

    public void setIrszam(int irszam) {
        this.irszam = irszam;
    }

    public String getUtca() {
        return utca;
    }

    public void setUtca(String utca) {
        this.utca = utca;
    }

    public int getHazszam() {
        return hazszam;
    }

    public void setHazszam(int hazszam) {
        this.hazszam = hazszam;
    }

    public Vasarlo(String email, String jelszo, String nev, Date szulido, boolean torzsvasarloe, int irszam, String utca, int hazszam) {
        this.email = email;
        this.jelszo = jelszo;
        this.nev = nev;
        this.szulido = szulido;
        this.torzsvasarloe = torzsvasarloe;
        this.irszam = irszam;
        this.utca = utca;
        this.hazszam = hazszam;
    }

    public Vasarlo(String email, String jelszo, String nev, Date szulido, boolean torzsvasarloe, boolean admine, int irszam, String utca, int hazszam) {
        this.email = email;
        this.jelszo = jelszo;
        this.nev = nev;
        this.szulido = szulido;
        this.torzsvasarloe = torzsvasarloe;
        this.admine = admine;
        this.irszam = irszam;
        this.utca = utca;
        this.hazszam = hazszam;
    }

    public Vasarlo(int id, String email, String jelszo, String nev, Date szulido, boolean torzsvasarloe, int irszam, String utca, int hazszam) {
        this.id = id;
        this.email = email;
        this.jelszo = jelszo;
        this.nev = nev;
        this.szulido = szulido;
        this.torzsvasarloe = torzsvasarloe;
        this.irszam = irszam;
        this.utca = utca;
        this.hazszam = hazszam;
    }

    public Vasarlo() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getJelszo() {
        return jelszo;
    }

    public void setJelszo(String jelszo) {
        this.jelszo = jelszo;
    }

    public String getNev() {
        return nev;
    }

    public void setNev(String nev) {
        this.nev = nev;
    }

    public Date getSzulido() {
        return szulido;
    }

    public void setSzulido(Date szulido) {
        this.szulido = szulido;
    }

    public boolean getTorzsvasarloe() {
        return torzsvasarloe;
    }

    public void setTorzsvasarloe(boolean torzsvasarloe) {
        this.torzsvasarloe = torzsvasarloe;
    }
}
