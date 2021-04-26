package com.example.konyvesbolt.model;

public class Zene extends Multimedia{
    private String eloado;

    public Zene(int id, String cim, int ar, String eleresiUt, String eloado) {
        super(id, cim, ar, eleresiUt);
        this.eloado = eloado;
    }

    public Zene(String cim, int ar, String eleresiUt, String eloado) {
        super(cim, ar, eleresiUt);
        this.eloado = eloado;
    }

    public Zene() {
    }

    public String getEloado() {
        return eloado;
    }

    public void setEloado(String eloado) {
        this.eloado = eloado;
    }
}
