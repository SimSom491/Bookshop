package com.example.konyvesbolt.dao;

import com.example.konyvesbolt.model.Multimedia;
import com.example.konyvesbolt.model.Vasarlas;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class VasarlasDAO implements DAO<Vasarlas> {
    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public List<Vasarlas> listaz() {
        //TODO soma nem hiszi el hogy a char(1)==boolean tipus
        List<Vasarlas> vasarlasok = jdbcTemplate.query("SELECT * FROM VASARLAS", (rs, rowNum) -> new Vasarlas(rs.getInt("id"), rs.getBoolean("szamlaigenyes"), rs.getDate("mikor"), rs.getString("atvetel")));

        return vasarlasok;

    }

    @Override
    public Vasarlas keres(int id) {
        List<Vasarlas> vasarlasok = jdbcTemplate.query("SELECT * FROM VASARLAS WHERE id="+id, (rs, rowNum) -> new Vasarlas(rs.getInt("id"), rs.getBoolean("szamlaigenyes"), rs.getDate("mikor"), rs.getString("atvetel")));
        return vasarlasok.get(0);
    }

    @Override
    public void frissit(Vasarlas vasarlas) {
        String sql = "UPDATE VASARLAS SET SZAMLAIGENYES='" + vasarlas.getSzamlaigenyes() + "', MIKOR=" + vasarlas.getMikor() + ", ATVETEL='" + vasarlas.getAtvetel() + "'  WHERE id=" + vasarlas.getId();
        jdbcTemplate.update(sql);
    }

    @Override
    public void torol(int id) {
        String sql = "DELETE FROM VASARLAS WHERE id=" + id;
        jdbcTemplate.update(sql);
    }

    @Override
    public void beszur(Vasarlas vasarlas) {
        String sql = "INSERT INTO VASARLAS(SZAMLAIGENYES, MIKOR, ATVETEL) VALUES (?, ?, ?)";
        jdbcTemplate.update(sql, new Object[]{
                vasarlas.getSzamlaigenyes(), vasarlas.getMikor(), vasarlas.getAtvetel() }
        );
    }
}
