package com.example.konyvesbolt.dao;

import com.example.konyvesbolt.model.Konyv;
import com.example.konyvesbolt.model.Magazin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MagazinDAO implements DAO<Magazin> {
    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public List<Magazin> listaz() {

        List<Magazin> magazinok = jdbcTemplate.query("SELECT * FROM KONYV, MAGAZIN WHERE MAGAZIN.KONYV_ID=KONYV.ID"
                , (rs, rowNum) -> new Magazin(rs.getInt("id"), rs.getString("szerzo")
                        , rs.getString("cim"), rs.getInt("ar"), rs.getInt("oldalszam")
                        , rs.getString("kiado"), rs.getString("eleresiut"), rs.getInt("kiadasiev")
                        , rs.getString("tipus"), rs.getString("leiras"), rs.getString("gyakorisag")));
        return magazinok;
    }

    @Override
    public Magazin keres(int id) {
        List<Magazin> konyvek = jdbcTemplate.query("SELECT * FROM KONYV, MAGAZIN WHERE MAGAZIN.KONYV_ID=KONYV.ID AND id=" + id, (rs, rowNum) -> new Magazin(rs.getInt("id"), rs.getString("szerzo")
                , rs.getString("cim"), rs.getInt("ar"), rs.getInt("oldalszam")
                , rs.getString("kiado"), rs.getString("eleresiut"), rs.getInt("kiadasiev")
                , rs.getString("tipus"), rs.getString("leiras"), rs.getString("gyakorisag")));
        return konyvek.get(0);
    }

    @Override
    public void frissit(Magazin magazin) {
        //ha gond van, itt van gond a leiras miatt
//        String sql = "UPDATE KONYV SET SZERZO='" + konyv.getSzerzo() + "', CIM='" + konyv.getCim() + "', AR=" + konyv.getAr() + ", OLDALSZAM=" + konyv.getOldalszam() +
//                ", KIADO='" + konyv.getKiado() + "', ELERESIUT='" + konyv.getEleresiUt() + "', KIADASIEV=" + konyv.getKiadasiEv() +
//                ", TIPUS='" + konyv.getTipus()  + "', LEIRAS=" + konyv.getLeiras() +  "WHERE id=" + konyv.getId();
//        jdbcTemplate.update(sql);

    }

    @Override
    public void torol(int id) {
        String sql = "DELETE FROM KONYV WHERE  MAGAZIN.KONYV_ID=KONYV.ID AND id=" + id;
        jdbcTemplate.update(sql);
    }

    @Override
    public void beszur(Magazin magazin) {

        String konyvsql = "INSERT INTO KONYV( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES (?, ?, ?, ?, ?, ?, ?, ?,?)";
        jdbcTemplate.update(konyvsql,
                magazin.getSzerzo(),
                magazin.getCim(),
                magazin.getAr(),
                magazin.getOldalszam(),
                magazin.getKiado(),
                magazin.getEleresiUt(),
                magazin.getKiadasiEv(),
                magazin.getTipus(),
                magazin.getEleresiUt()
        );
        idkeres();
        magazin.setId(idkeres());
        String sql = "INSERT INTO MAGAZIN(KONYV_ID, GYAKORISAG) VALUES(?,?)";
        jdbcTemplate.update(sql,
                magazin.getId(),
                magazin.getGyakorisag()
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
