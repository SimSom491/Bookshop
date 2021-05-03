package com.example.konyvesbolt.dao;


import com.example.konyvesbolt.model.AntikvarKonyv;
import com.example.konyvesbolt.model.Magazin;
import com.example.konyvesbolt.model.Tankonyv;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class AntikvarDao implements DAO<AntikvarKonyv> {
    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public List<AntikvarKonyv> listaz() {

        return jdbcTemplate.query("SELECT * FROM KONYV, ANTIKVARKONYV WHERE ANTIKVARKONYV.KONYV_ID=KONYV.ID"
                , (rs, rowNum) -> new AntikvarKonyv(rs.getInt("id"), rs.getString("szerzo")
                        , rs.getString("cim"),rs.getInt("ar"),rs.getInt("oldalszam")
                        ,rs.getString("kiado"),rs.getString("eleresiut"),rs.getInt("kiadasiev")
                        ,rs.getString("tipus"), rs.getString("leiras"),rs.getInt("kor"), rs.getString("allapot")));
    }

    @Override
    public AntikvarKonyv keres(int id) {
        return null;
    }

    @Override
    public void frissit(AntikvarKonyv antikvarKonyv) {

    }

    @Override
    public void torol(int id) {

    }

    @Override
    public void beszur(AntikvarKonyv antikvarKonyv) {
        String konyvsql = "INSERT INTO KONYV( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES (?, ?, ?, ?, ?, ?, ?, ?,?)";
        jdbcTemplate.update(konyvsql,
                antikvarKonyv.getSzerzo(),
                antikvarKonyv.getCim(),
                antikvarKonyv.getAr(),
                antikvarKonyv.getOldalszam(),
                antikvarKonyv.getKiado(),
                antikvarKonyv.getEleresiUt(),
                antikvarKonyv.getKiadasiEv(),
                antikvarKonyv.getTipus(),
                antikvarKonyv.getEleresiUt()
        );
        idkeres();
        antikvarKonyv.setId(idkeres());
        String sql = "INSERT INTO VOROS.ANTIKVARKONYV(KONYV_ID, KOR, ALLAPOT) VALUES(?,?,?)";
        jdbcTemplate.update(sql,
                antikvarKonyv.getId(),
                antikvarKonyv.getKor(),
                antikvarKonyv.getAllapot()
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
