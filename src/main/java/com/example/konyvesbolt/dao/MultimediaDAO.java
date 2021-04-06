package com.example.konyvesbolt.dao;

import com.example.konyvesbolt.model.Kedvezmeny;
import com.example.konyvesbolt.model.Multimedia;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MultimediaDAO implements DAO<Multimedia> {
    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public List<Multimedia> listaz() {
        List<Multimedia> mediak = jdbcTemplate.query("SELECT * FROM MULTIMEDIA", (rs, rowNum) -> new Multimedia(rs.getInt("id"), rs.getString("cim"), rs.getInt("ar"), rs.getString("eleresiut")));

        return mediak;
    }

    @Override
    public Multimedia keres(int id) {
        List<Multimedia> multik = jdbcTemplate.query("SELECT * FROM MULTIMEDIA WHERE id="+id, (rs, rowNum) -> new Multimedia(rs.getInt("id"), rs.getString("cim"), rs.getInt("ar"),rs.getString("eleresiut")));
        return multik.get(0);
    }

    @Override
    public void frissit(Multimedia multimedia) {
        String sql = "UPDATE MULTIMEDIA SET CIM='" + multimedia.getCim() + "', AR=" + multimedia.getAr() + ", ELERESIUT='" + multimedia.getEleresiUt() + "'  WHERE id=" + multimedia.getId();
        jdbcTemplate.update(sql);
    }

    @Override
    public void torol(int id) {
        String sql = "DELETE FROM MULTIMEDIA WHERE id=" + id;
        jdbcTemplate.update(sql);
    }

    @Override
    public void beszur(Multimedia multimedia) {
        String sql = "INSERT INTO MULTIMEDIA(CIM, AR, ELERESIUT) VALUES (?, ?, ?)";
        jdbcTemplate.update(sql, new Object[]{
                multimedia.getCim(), multimedia.getAr(), multimedia.getEleresiUt() }
        );
    }
}
