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
        String konyvsql = "INSERT INTO KONYV( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES (?, ?, ?, ?, ?, ?, ?, ?,?)";
        jdbcTemplate.update(konyvsql,
                hangosKonyv.getSzerzo(),
                hangosKonyv.getCim(),
                hangosKonyv.getAr(),
                hangosKonyv.getOldalszam(),
                hangosKonyv.getKiado(),
                hangosKonyv.getEleresiUt(),
                hangosKonyv.getKiadasiEv(),
                hangosKonyv.getTipus(),
                hangosKonyv.getEleresiUt()
        );
        idkeres();
        hangosKonyv.setId(idkeres());
        String sql = "INSERT INTO VOROS.HANGOSKONYV(KONYV_ID, ELBESZELO, HOSSZ) VALUES(?,?,?)";
        jdbcTemplate.update(sql,
                hangosKonyv.getId(),
                hangosKonyv.getElbeszelo(),
                hangosKonyv.getHossz()
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
