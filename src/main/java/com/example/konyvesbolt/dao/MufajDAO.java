package com.example.konyvesbolt.dao;

import com.example.konyvesbolt.model.Mufaj;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;
import java.util.TreeMap;

@Repository
public class MufajDAO implements DAO<Mufaj> {
    @Autowired
    JdbcTemplate jdbcTemplate;


    @Override
    public List<Mufaj> listaz() {

        return jdbcTemplate.query("SELECT DISTINCT MUFAJ_ID AS id,MUFAJ.NEV AS nev FROM MUFAJ,MUFAJA WHERE MUFAJA.MUFAJ_ID=MUFAJ.ID AND NOT MUFAJA.KONYV_ID IS NULL ", (rs, rowNum) -> new Mufaj(rs.getInt("id"), rs.getString("nev")));
    }

    public List<Mufaj> listazKonyvek(String param) {
        return jdbcTemplate.query("SELECT DISTINCT MUFAJ_ID AS id,MUFAJ.NEV AS nev FROM MUFAJ,MUFAJA, KONYV WHERE KONYV.ID = MUFAJA.KONYV_ID AND MUFAJA.MUFAJ_ID=MUFAJ.ID AND NOT MUFAJA.KONYV_ID IS NULL AND KONYV.TIPUS='" + param + "'", (rs, rowNum) -> new Mufaj(rs.getInt("id"), rs.getString("nev")));
    }

    @Override
    public Mufaj keres(int id) {
        return null;
    }

    @Override
    public void frissit(Mufaj mufaj) {

    }

    @Override
    public void torol(int id) {
        String sql = "DELETE FROM MUFAJ WHERE id=" + id;
        jdbcTemplate.update(sql);
    }

    @Override
    public void beszur(Mufaj mufaj) {

    }

    public List<Mufaj> multiListaz() {
        return jdbcTemplate.query("SELECT DISTINCT MUFAJ_ID AS id,MUFAJ.NEV AS nev FROM MUFAJ,MUFAJA WHERE MUFAJA.MUFAJ_ID=MUFAJ.ID AND MUFAJA.KONYV_ID IS NULL ", (rs, rowNum) -> new Mufaj(rs.getInt("id"), rs.getString("nev")));

    }

    public List<Mufaj> zeneListaz() {
        return jdbcTemplate.query("SELECT DISTINCT MUFAJ_ID AS id,MUFAJ.NEV AS nev FROM MUFAJ,MUFAJA, ZENE WHERE ZENE.MULTIMEDIA_ID = MUFAJA.MULTIMEDIA_ID AND MUFAJA.MUFAJ_ID=MUFAJ.ID AND MUFAJA.KONYV_ID IS NULL ", (rs, rowNum) -> new Mufaj(rs.getInt("id"), rs.getString("nev")));
    }
    public List<Mufaj> filmListaz() {
        return jdbcTemplate.query("SELECT DISTINCT MUFAJ_ID AS id,MUFAJ.NEV AS nev FROM MUFAJ,MUFAJA, FILM WHERE FILM.MULTIMEDIA_ID = MUFAJA.MULTIMEDIA_ID AND MUFAJA.MUFAJ_ID=MUFAJ.ID AND MUFAJA.KONYV_ID IS NULL ", (rs, rowNum) -> new Mufaj(rs.getInt("id"), rs.getString("nev")));
    }


    public Map<Mufaj,Integer> mufajszam(List<Mufaj> mufajok) {
        Map<Mufaj,Integer> res = new TreeMap<>();
        for (Mufaj mufaj : mufajok) {
            jdbcTemplate.query("SELECT  Count(*) AS ossz, MUFAJ.NEV AS ossz FROM MUFAJ,MUFAJA WHERE MUFAJA.MUFAJ_ID=MUFAJ.ID AND NOT MUFAJA.KONYV_ID IS NULL AND MUFAJA.MUFAJ_ID="+mufaj.getId()+" GROUP BY MUFAJ.NEV",(rs, rowNum) -> res.put(mufaj,rs.getInt("ossz")));
        }
        return res;
    }
    public Map<Mufaj,Integer> konyvszam(List<Mufaj> mufajok, String tipus) {
        Map<Mufaj,Integer> res = new TreeMap<>();
        for (Mufaj mufaj : mufajok) {
            jdbcTemplate.query("SELECT  Count(*) AS ossz, MUFAJ.NEV AS nev FROM Konyv,MUFAJ,MUFAJA WHERE KONyv.ID=MUFAJA.KONYV_ID AND KONYV.TIPUS='"+tipus+"' AND MUFAJA.MUFAJ_ID=MUFAJ.ID AND NOT MUFAJA.KONYV_ID IS NULL AND MUFAJA.MUFAJ_ID="+mufaj.getId()+" GROUP BY MUFAJ.NEV",(rs, rowNum) -> res.put(mufaj,rs.getInt("ossz")));
        }
        return res;
    }
}
