package com.example.konyvesbolt.model;

public class Tartozik {
    private int id;
    private int vasarlasId;
    private int konyvId;
    private int multimediaId;
    private int ajandekId;
    private int mennyiseg;

    public Tartozik() {
    }

    public Tartozik(int id, int vasarlasId, int konyvId, int multimediaId, int ajandekId, int mennyiseg) {
        this.id = id;
        this.vasarlasId = vasarlasId;
        this.konyvId = konyvId;
        this.multimediaId = multimediaId;
        this.ajandekId = ajandekId;
        this.mennyiseg = mennyiseg;
    }

    public Tartozik(int vasarlasId, int konyvId, int multimediaId, int ajandekId, int mennyiseg) {
        this.vasarlasId = vasarlasId;
        this.konyvId = konyvId;
        this.multimediaId = multimediaId;
        this.ajandekId = ajandekId;
        this.mennyiseg = mennyiseg;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getVasarlasId() {
        return vasarlasId;
    }

    public void setVasarlasId(int vasarlasId) {
        this.vasarlasId = vasarlasId;
    }

    public int getKonyvId() {
        return konyvId;
    }

    public void setKonyvId(int konyvId) {
        this.konyvId = konyvId;
    }

    public int getMultimediaId() {
        return multimediaId;
    }

    public void setMultimediaId(int multimediaId) {
        this.multimediaId = multimediaId;
    }

    public int getAjandekId() {
        return ajandekId;
    }

    public void setAjandekId(int ajandekId) {
        this.ajandekId = ajandekId;
    }

    public int getMennyiseg() {
        return mennyiseg;
    }

    public void setMennyiseg(int mennyiseg) {
        this.mennyiseg = mennyiseg;
    }
}
