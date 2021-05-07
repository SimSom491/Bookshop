package com.example.konyvesbolt.dao;

import com.example.konyvesbolt.model.Tartozik;
import com.example.konyvesbolt.model.Vasarlas;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class TartozikDAO implements DAO<Tartozik>{
    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public List<Tartozik> listaz() {
        return jdbcTemplate.query("SELECT * FROM TARTOZIK", (rs, rowNum) -> new Tartozik(rs.getInt("id"), rs.getInt("vasarlas_id"), rs.getInt("konyv_id"), rs.getInt("multimedia_id"),rs.getInt("ajandek_id"),rs.getInt("mennyiseg")));

    }

    @Override
    public Tartozik keres(int id) {
        return null;
    }

    @Override
    public void frissit(Tartozik tartozik) {

    }

    @Override
    public void torol(int id) {

    }

    @Override
    public void beszur(Tartozik tartozik) {
        String sql = "INSERT INTO TARTOZIK( VASARLAS_ID, KONYV_ID, MULTIMEDIA_ID, AJANDEK_ID, MENNYISEG) VALUES ( ?, ?, ?, ?,?)";
        jdbcTemplate.update(sql,
                tartozik.getVasarlasId(),
                (tartozik.getKonyvId()==0)?null:tartozik.getKonyvId(),
                tartozik.getMultimediaId()==0?null:tartozik.getMultimediaId(),
                tartozik.getAjandekId()==0?null:tartozik.getAjandekId(),
                tartozik.getMennyiseg());
    }


}
