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

        return jdbcTemplate.query("SELECT * FROM KONYV, TANKONYV WHERE TANKONYV.KONYV_ID=KONYV.ID"
                , (rs, rowNum) -> new Tankonyv(rs.getInt("id"), rs.getString("szerzo")
                        , rs.getString("cim"),rs.getInt("ar"),rs.getInt("oldalszam")
                        ,rs.getString("kiado"),rs.getString("eleresiut"),rs.getInt("kiadasiev")
                        ,rs.getString("tipus"), rs.getString("leiras"),rs.getInt("ajanlottkor"), rs.getString("fajta")));
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

        String konyvsql = "INSERT INTO KONYV( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES (?, ?, ?, ?, ?, ?, ?, ?,?)";
        jdbcTemplate.update(konyvsql,
                tankonyv.getSzerzo(),
                tankonyv.getCim(),
                tankonyv.getAr(),
                tankonyv.getOldalszam(),
                tankonyv.getKiado(),
                tankonyv.getEleresiUt(),
                tankonyv.getKiadasiEv(),
                tankonyv.getTipus(),
                tankonyv.getEleresiUt()
        );
        idkeres();
        tankonyv.setId(idkeres());
        String sql = "INSERT INTO TANKONYV(KONYV_ID, AJANLOTTKOR, FAJTA) VALUES(?,?,?)";
        jdbcTemplate.update(sql,
                tankonyv.getId(),
                tankonyv.getAjanlottKor(),
                tankonyv.getFajta()
        );
    }
    private int idkeres() {
        String idkeressql = "SELECT * FROM(SELECT ID FROM KONYV ORDER BY ID DESC ) WHERE ROWNUM = 1 ";
        List<Integer> id = jdbcTemplate.query(idkeressql,
                (rs, rowNum) ->
                        rs.getInt("id")
        );
        return id.get(0);
    }
}
