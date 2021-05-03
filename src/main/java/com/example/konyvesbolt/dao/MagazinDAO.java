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
                        , rs.getString("cim"),rs.getInt("ar"),rs.getInt("oldalszam")
                        ,rs.getString("kiado"),rs.getString("eleresiut"),rs.getInt("kiadasiev")
                        ,rs.getString("tipus"), rs.getString("leiras"),rs.getString("gyakorisag")));
        return magazinok;
    }

    @Override
    public Magazin keres(int id) {
        List<Magazin> konyvek = jdbcTemplate.query("SELECT * FROM KONYV, MAGAZIN WHERE MAGAZIN.KONYV_ID=KONYV.ID AND id="+id, (rs, rowNum) -> new Magazin(rs.getInt("id"), rs.getString("szerzo")
                , rs.getString("cim"),rs.getInt("ar"),rs.getInt("oldalszam")
                ,rs.getString("kiado"),rs.getString("eleresiut"),rs.getInt("kiadasiev")
                ,rs.getString("tipus"), rs.getString("leiras"),rs.getString("gyakorisag")));
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
//        String sql = "INSERT INTO KONYV( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES (?, ?, ?, ?, ?, ?, ?, ?,?)";
//        jdbcTemplate.update(sql, new Object[]{
//                konyv.getSzerzo(), konyv.getCim(), konyv.getAr(), konyv.getOldalszam(), konyv.getKiado(), konyv.getEleresiUt(),konyv.getKiadasiEv(),konyv.getTipus(), konyv.getLeiras() }
//        );
    }
}
