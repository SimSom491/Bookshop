package com.example.konyvesbolt.dao;

import com.example.konyvesbolt.model.Zene;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ZeneDAO implements DAO<Zene> {
    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public List<Zene> listaz() {

        List<Zene> zenek = jdbcTemplate.query(
                "SELECT * FROM MULTIMEDIA, ZENE WHERE ZENE.MULTIMEDIA_ID = MULTIMEDIA.ID",
                ((rs, rowNum) -> new Zene(
                        rs.getInt("id"),
                        rs.getString("cim"),
                        rs.getInt("ar"),
                        rs.getString("eleresiUt"),
                        rs.getString("eloado")
                )));
        return zenek;
    }

    @Override
    public Zene keres(int id) {
        return null;
    }

    @Override
    public void frissit(Zene zene) {

    }

    @Override
    public void torol(int id) {

    }

    @Override
    public void beszur(Zene zene) {

    }
}
