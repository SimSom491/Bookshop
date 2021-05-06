package com.example.konyvesbolt.model;

import java.io.Serializable;
import java.sql.Date;
import java.util.HashMap;
import java.util.Map;

public class Vasarlas implements Serializable {
    private int id;
    private boolean szamlaigenyes;
    private Date mikor;
    private String atvetel;

    public Vasarlas(int id, boolean szamlaigenyes, Date mikor, String atvetel) {
        this.id = id;
        this.szamlaigenyes = szamlaigenyes;
        this.mikor = mikor;
        this.atvetel = atvetel;
    }

    public Vasarlas() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public boolean getSzamlaigenyes() {
        return szamlaigenyes;
    }

    public void setSzamlaigenyes(boolean szamlaigenyes) {
        this.szamlaigenyes = szamlaigenyes;
    }

    public Date getMikor() {
        return mikor;
    }

    public void setMikor(Date mikor) {
        this.mikor = mikor;
    }

    public String getAtvetel() {
        return atvetel;
    }

    public void setAtvetel(String atvetel) {
        this.atvetel = atvetel;
    }
}
