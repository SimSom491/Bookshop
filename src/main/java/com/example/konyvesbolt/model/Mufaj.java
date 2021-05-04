package com.example.konyvesbolt.model;

public class Mufaj implements Comparable<Mufaj>{
    private int id;
    private String nev;

    public Mufaj(int id, String nev) {
        this.id = id;
        this.nev = nev;
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

    public Mufaj() {
    }


    @Override
    public int compareTo(Mufaj o) {
        if (this.nev.charAt(0)<o.nev.charAt(0)){
            return -1;
        }else{
            return 1;
        }
    }
}
