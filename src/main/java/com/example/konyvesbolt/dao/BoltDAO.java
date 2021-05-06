package com.example.konyvesbolt.dao;

import com.example.konyvesbolt.model.Bolt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BoltDAO implements DAO<Bolt> {

    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public List<Bolt> listaz() {

        List<Bolt> boltok = jdbcTemplate.query(
                "SELECT * FROM BOLT",
                (rs, rowNum) -> new Bolt(
                       rs.getInt("id"),
                        rs.getString("nev"),
                        rs.getString("elhelyezkedes"),
                        rs.getString("nyitvatartas")
                ));
        return boltok;
    }

    @Override
    public Bolt keres(int id) {
        return null;
    }

    @Override
    public void frissit(Bolt bolt) {

    }

    @Override
    public void torol(int id) {
        String sql = "DELETE FROM BOLT WHERE id = ?";
        jdbcTemplate.update(sql,id);
    }

    @Override
    public void beszur(Bolt bolt) {
        String sql = "INSERT INTO BOLT(NEV, ELHELYEZKEDES, NYITVATARTAS) VALUES(?,?,?)";
        jdbcTemplate.update(sql,
               bolt.getNev(),
                bolt.getElhelyezkedes(),
                bolt.getNyitvatartas()
                );

    }
}
