package com.example.konyvesbolt.model;

import java.sql.Date;

public class Kedvezmeny {
    private int id;
    private String megnevezes;
    private double mekkora;
    private Date mettol;
    private Date meddig;

    public Kedvezmeny(int id, String megnevezes, double mekkora, Date mettol, Date meddig) {
        this.id = id;
        this.megnevezes = megnevezes;
        this.mekkora = mekkora;
        this.mettol = mettol;
        this.meddig = meddig;
    }

    public Kedvezmeny() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMegnevezes() {
        return megnevezes;
    }

    public void setMegnevezes(String megnevezes) {
        this.megnevezes = megnevezes;
    }

    public double getMekkora() {
        return mekkora;
    }

    public void setMekkora(double mekkora) {
        this.mekkora = mekkora;
    }

    public Date getMettol() {
        return mettol;
    }

    public void setMettol(Date mettol) {
        this.mettol = mettol;
    }

    public Date getMeddig() {
        return meddig;
    }

    public void setMeddig(Date meddig) {
        this.meddig = meddig;
    }
}
