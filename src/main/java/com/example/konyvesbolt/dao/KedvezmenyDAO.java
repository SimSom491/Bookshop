package com.example.konyvesbolt.dao;

import com.example.konyvesbolt.model.Ajandek;
import com.example.konyvesbolt.model.Kedvezmeny;
import com.example.konyvesbolt.model.Konyv;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class KedvezmenyDAO implements DAO<Kedvezmeny>{
    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public List<Kedvezmeny> listaz() {
        List<Kedvezmeny> kedvezmenyek = jdbcTemplate.query("SELECT * FROM KEDVEZMENY", (rs, rowNum) -> new Kedvezmeny(rs.getInt("id"), rs.getString("megnevezes"), rs.getInt("mekkora"), rs.getDate("mettol"), rs.getDate("meddig")));

        return kedvezmenyek;
    }

    @Override
    public Kedvezmeny keres(int id) {
        List<Kedvezmeny> kedvezmenyek = jdbcTemplate.query("SELECT * FROM KEDVEZMENY WHERE id="+id, (rs, rowNum) -> new Kedvezmeny(rs.getInt("id"), rs.getString("megnevezes"), rs.getInt("mekkora"),rs.getDate("mettol"),rs.getDate("meddig")));
        return kedvezmenyek.get(0);
    }

    @Override
    public void frissit(Kedvezmeny kedvezmeny) {
        String sql = "UPDATE KEDVEZMENY SET MEGNEVEZES='" + kedvezmeny.getMegnevezes() + "', MEKKORA=" + kedvezmeny.getMekkora() + ", METTOL='" + kedvezmeny.getMettol() + "', MEDDIG='" + kedvezmeny.getMeddig() + "'  WHERE id=" + kedvezmeny.getId();
        jdbcTemplate.update(sql);
    }

    @Override
    public void torol(int id) {
        String sql = "DELETE FROM KEDVEZMENY WHERE id=" + id;
        jdbcTemplate.update(sql);
    }

    @Override
    public void beszur(Kedvezmeny kedvezmeny) {
        String sql = "INSERT INTO KEDVEZMENY(MEGNEVEZES, MEKKORA, METTOL, MEDDIG) VALUES (?, ?, ?, ?)";
        jdbcTemplate.update(sql, new Object[]{
                kedvezmeny.getMegnevezes(), kedvezmeny.getMekkora(), kedvezmeny.getMettol(), kedvezmeny.getMeddig() }
        );
    }
}
