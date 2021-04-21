package com.example.konyvesbolt.dao;


import com.example.konyvesbolt.model.Magazin;
import com.example.konyvesbolt.model.Tankonyv;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class TankonyvDAO implements DAO<Tankonyv> {
    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public List<Tankonyv> listaz() {
        List<Tankonyv> tankonyvek = jdbcTemplate.query("SELECT * FROM KONYV, TANKONYV WHERE TANKONYV.KONYV_ID=KONYV.ID"
                , (rs, rowNum) -> new Tankonyv(rs.getInt("id"), rs.getString("szerzo")
                        , rs.getString("cim"),rs.getInt("ar"),rs.getInt("oldalszam")
                        ,rs.getString("kiado"),rs.getString("eleresiut"),rs.getInt("kiadasiev")
                        ,rs.getString("tipus"), rs.getString("leiras"),rs.getInt("ajanlottkor"), rs.getString("fajta")));
        for (Tankonyv tankonyv : tankonyvek) {
            System.out.println(tankonyv.getAjanlottKor());
        }
        return tankonyvek;
    }

    @Override
    public Tankonyv keres(int id) {
        return null;
    }

    @Override
    public void frissit(Tankonyv tankonyv) {

    }

    @Override
    public void torol(int id) {

    }

    @Override
    public void beszur(Tankonyv tankonyv) {

    }
}
