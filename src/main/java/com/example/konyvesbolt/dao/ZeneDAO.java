package com.example.konyvesbolt.dao;

import com.example.konyvesbolt.model.Magazin;
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
        List<Zene> zenek = jdbcTemplate.query("SELECT * FROM Zene, MULTIMEDIA WHERE ZENE.MULTIMEDIA_ID=MULTIMEDIA.ID AND id=" + id, (rs, rowNum) -> new Zene(rs.getInt("id"), rs.getString("cim"),
               rs.getInt("ar"), rs.getString("eleresiut"), rs.getString("eloado")));
        return zenek.get(0);
    }

    @Override
    public void frissit(Zene zene) {

    }

    @Override
    public void torol(int id) {
        String sql = "DELETE FROM MULTIMEDIA WHERE id=" + id;
        jdbcTemplate.update(sql);
    }

    @Override
    public void beszur(Zene zene) {
        String multisql = "INSERT INTO MULTIMEDIA(CIM, AR, ELERESIUT) VALUES(?,?,?)";
        jdbcTemplate.update(multisql,
                zene.getCim(),
                zene.getAr(),
                zene.getEleresiUt());

        idkeres();
        zene.setId(idkeres());
        System.out.println(idkeres());
        String sql = "INSERT INTO VOROS.ZENE( MULTIMEDIA_ID, VOROS.ZENE.ELOADO) VALUES(?,?)";
        jdbcTemplate.update(sql,
                zene.getId(),
                zene.getEloado());

    }

    private int idkeres() {
        String idkeressql = "SELECT * FROM(SELECT ID FROM MULTIMEDIA ORDER BY ID DESC ) WHERE ROWNUM = 1 ";
        List<Integer> id = jdbcTemplate.query(idkeressql,
                (rs, rowNum) ->
                        rs.getInt("id")
        );
        return id.get(0);
    }
}
