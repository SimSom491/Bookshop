package com.example.konyvesbolt.model;

public class Vasarol {
    private int id;
    private int vasarloId;
    private int kedvezmenyId;
    private int boltId;
    private int vasarlasId;

    public Vasarol(int vasarloId, int kedvezmenyId, int boltId, int vasarlasId) {
        this.vasarloId = vasarloId;
        this.kedvezmenyId = kedvezmenyId;
        this.boltId = boltId;
        this.vasarlasId = vasarlasId;
    }

    public Vasarol(int id, int vasarloId, int kedvezmenyId, int boltId, int vasarlasId) {
        this.id = id;
        this.vasarloId = vasarloId;
        this.kedvezmenyId = kedvezmenyId;
        this.boltId = boltId;
        this.vasarlasId = vasarlasId;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setVasarloId(int vasarloId) {
        this.vasarloId = vasarloId;
    }

    public void setKedvezmenyId(int kedvezmenyId) {
        this.kedvezmenyId = kedvezmenyId;
    }

    public void setBoltId(int boltId) {
        this.boltId = boltId;
    }

    public void setVasarlasId(int vasarlasId) {
        this.vasarlasId = vasarlasId;
    }

    public int getId() {
        return id;
    }

    public int getVasarloId() {
        return vasarloId;
    }

    public int getKedvezmenyId() {
        return kedvezmenyId;
    }

    public int getBoltId() {
        return boltId;
    }

    public int getVasarlasId() {
        return vasarlasId;
    }
}
