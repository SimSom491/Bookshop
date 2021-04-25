package com.example.konyvesbolt.dao;

import com.example.konyvesbolt.model.Mufaj;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MufajDAO implements DAO<Mufaj> {
    @Autowired
    JdbcTemplate jdbcTemplate;


    @Override
    public List<Mufaj> listaz() {

        return jdbcTemplate.query("SELECT DISTINCT MUFAJ_ID AS id,MUFAJ.NEV AS nev FROM MUFAJ,MUFAJA WHERE MUFAJA.MUFAJ_ID=MUFAJ.ID AND NOT MUFAJA.KONYV_ID IS NULL ", (rs, rowNum) -> new Mufaj(rs.getInt("id"), rs.getString("nev")));
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

    }

    @Override
    public void beszur(Mufaj mufaj) {

    }

    public List<Mufaj> multiListaz() {
        return jdbcTemplate.query("SELECT DISTINCT MUFAJ_ID AS id,MUFAJ.NEV AS nev FROM MUFAJ,MUFAJA WHERE MUFAJA.MUFAJ_ID=MUFAJ.ID AND MUFAJA.KONYV_ID IS NULL ", (rs, rowNum) -> new Mufaj(rs.getInt("id"), rs.getString("nev")));

    }
}
