package com.example.konyvesbolt.dao;

import com.example.konyvesbolt.model.Hangoskonyv;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class HangosKonyvDAO implements DAO<Hangoskonyv> {
    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public List<Hangoskonyv> listaz() {
        List<Hangoskonyv> hangoskonyvek = jdbcTemplate.query("SELECT * FROM KONYV, HANGOSKONYV WHERE HANGOSKONYV.KONYV_ID=KONYV.ID"
                , (rs, rowNum) -> new Hangoskonyv(rs.getInt("id"), rs.getString("szerzo")
                        , rs.getString("cim"),rs.getInt("ar"),rs.getInt("oldalszam")
                        ,rs.getString("kiado"),rs.getString("eleresiut"),rs.getInt("kiadasiev")
                        ,rs.getString("tipus"), rs.getString("leiras"), rs.getString("elbeszelo") ,rs.getInt("hossz") ));

        return hangoskonyvek;
    }

    @Override
    public Hangoskonyv keres(int id) {
        return null;
    }

    @Override
    public void frissit(Hangoskonyv hangosKonyv) {

    }

    @Override
    public void torol(int id) {

    }

    @Override
    public void beszur(Hangoskonyv hangosKonyv) {

    }
}
