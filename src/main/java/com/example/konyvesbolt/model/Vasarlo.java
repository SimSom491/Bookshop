package com.example.konyvesbolt.model;

import java.sql.Date;
public class Vasarlo {
    private int id;
    private String email;
    private String jelszo;
    private String nev;
    private Date szulido;
    private String cim;
    private char torzsvasarloe;

    public Vasarlo(int id, String email, String jelszo, String nev, Date szulido, String cim, char torzsvasarloe) {
        this.id = id;
        this.email = email;
        this.jelszo = jelszo;
        this.nev = nev;
        this.szulido = szulido;
        this.cim = cim;
        this.torzsvasarloe = torzsvasarloe;
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

    public String getCim() {
        return cim;
    }

    public void setCim(String cim) {
        this.cim = cim;
    }

    public char getTorzsvasarloe() {
        return torzsvasarloe;
    }

    public void setTorzsvasarloe(char torzsvasarloe) {
        this.torzsvasarloe = torzsvasarloe;
    }
}
