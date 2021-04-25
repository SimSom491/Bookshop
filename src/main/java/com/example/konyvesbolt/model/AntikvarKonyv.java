package com.example.konyvesbolt.model;

public class AntikvarKonyv extends Konyv{
    private int kor;
    private String allapot;

    public AntikvarKonyv(int id, String szerzo, String cim, int ar, int oldalszam, String kiado, String eleresiUt, int kiadasiEv, String tipus, String leiras, int kor, String allapot) {
        super(id, szerzo, cim, ar, oldalszam, kiado, eleresiUt, kiadasiEv, tipus, leiras);
        this.kor = kor;
        this.allapot = allapot;
    }

    public AntikvarKonyv() {
    }

    public int getKor() {
        return kor;
    }

    public void setKor(int kor) {
        this.kor = kor;
    }

    public String getAllapot() {
        return allapot;
    }

    public void setAllapot(String allapot) {
        this.allapot = allapot;
    }
}
