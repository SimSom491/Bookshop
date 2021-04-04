package com.example.konyvesbolt.model;

public class Bolt {
    private int id;
    private String nev;
    private String elhelyezkedes;
    private String nyitvatartas;

    public Bolt(int id, String nev, String elhelyezkedes, String nyitvatartas) {
        this.id = id;
        this.nev = nev;
        this.elhelyezkedes = elhelyezkedes;
        this.nyitvatartas = nyitvatartas;
    }

    public Bolt() {

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNev() {
        return nev;
    }

    public void setNev(String nev) {
        this.nev = nev;
    }

    public String getElhelyezkedes() {
        return elhelyezkedes;
    }

    public void setElhelyezkedes(String elhelyezkedes) {
        this.elhelyezkedes = elhelyezkedes;
    }

    public String getNyitvatartas() {
        return nyitvatartas;
    }

    public void setNyitvatartas(String nyitvatartas) {
        this.nyitvatartas = nyitvatartas;
    }
}
