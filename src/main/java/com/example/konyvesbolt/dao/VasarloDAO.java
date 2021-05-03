package com.example.konyvesbolt.dao;

import com.example.konyvesbolt.model.Konyv;
import com.example.konyvesbolt.model.Vasarlas;
import com.example.konyvesbolt.model.Vasarlo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import java.text.SimpleDateFormat;
import java.util.List;

@Repository
public class VasarloDAO implements DAO<Vasarlo> {
    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public List<Vasarlo> listaz() {
        List<Vasarlo> vasarlok = jdbcTemplate.query("SELECT * FROM VASARLO", (rs, rowNum) -> new Vasarlo(rs.getInt("id"),
                rs.getString("email"),
                rs.getString("jelszo"),
                rs.getString("nev"),
                rs.getDate("szulido"),
                (rs.getInt("torzsvasarloe") == 1),
                (rs.getInt("admine") == 1),
                rs.getInt("irszam"),rs.getString("utcanev"),
                rs.getInt("hazszam")));
        return vasarlok;
    }

    @Override
    public Vasarlo keres(int id) {
        List<Vasarlo> vasarlok = jdbcTemplate.query("SELECT * FROM VASARLO WHERE id="+id, (rs, rowNum) -> new Vasarlo(rs.getInt("id"), rs.getString("email"), rs.getString("jelszo"),rs.getString("nev"),rs.getDate("szulido"),rs.getBoolean("torsvasarloe"),rs.getInt("irszam"),rs.getString("utcanev"),rs.getInt("hazszam")));
        return vasarlok.get(0);

    }

    public Vasarlo keres(String email) {
        List<Vasarlo> vasarlok = jdbcTemplate.query("SELECT * FROM VASARLO WHERE EMAIL='"+ email + "'", (rs, rowNum) -> new Vasarlo(rs.getInt("id"),
                rs.getString("email"),
                rs.getString("jelszo"),
                rs.getString("nev"),
                rs.getDate("szulido"),
                rs.getInt("torzsvasarloe") == 1 ,(rs.getInt("admine") == 1),rs.getInt("irszam"),rs.getString("utcanev"),rs.getInt("hazszam")));
        return vasarlok.get(0);

    }

    @Override
    public void frissit(Vasarlo vasarlo) {
        String sql = "UPDATE VASARLO SET EMAIL='" + vasarlo.getEmail() + "', JELSZO='" + vasarlo.getJelszo() + "', NEV='" + vasarlo.getNev() + "', SZULIDO='" + vasarlo.getSzulido()  + "', TORZSVASARLOE='" + vasarlo.getTorzsvasarloe()+"', IRSZAM=" + vasarlo.getIrszam()+", UTCANEV='" + vasarlo.getUtca() + "', HAZSZAM=" + vasarlo.getHazszam() + "  WHERE id=" + vasarlo.getId();
        jdbcTemplate.update(sql);
    }

    @Override
    public void torol(int id) {
        String sql = "DELETE FROM VASARLAS WHERE id=" + id;
        jdbcTemplate.update(sql);
    }

    @Override
    public void beszur(Vasarlo vasarlo) {
        String strDate = new SimpleDateFormat("dd-MMM-yy").format(vasarlo.getSzulido());
        String sql = "INSERT INTO VASARLO(EMAIL, JELSZO, NEV, SZULIDO, TORZSVASARLOE, ADMINE, IRSZAM, UTCANEV, HAZSZAM) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        jdbcTemplate.update(sql, new Object[]{
                vasarlo.getEmail(), vasarlo.getJelszo(), vasarlo.getNev(), strDate, vasarlo.getTorzsvasarloe() ? 1 : 0, vasarlo.isAdmine() ? 1 : 0, vasarlo.getIrszam(), vasarlo.getUtca(), vasarlo.getHazszam() }
        );
    }
}
