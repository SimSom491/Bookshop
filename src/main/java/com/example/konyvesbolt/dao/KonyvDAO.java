package com.example.konyvesbolt.dao;

import com.example.konyvesbolt.model.Ajandek;
import com.example.konyvesbolt.model.Konyv;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class KonyvDAO implements DAO<Konyv> {
    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public List<Konyv> listaz() {
        List<Konyv> konyvek = jdbcTemplate.query("SELECT * FROM KONYV", (rs, rowNum) -> new Konyv(rs.getInt("id"), rs.getString("szerzo"), rs.getString("cim"),rs.getInt("ar"),rs.getInt("oldalszam"),rs.getString("kiado"),rs.getString("eleresiut"),rs.getInt("kiadasiev"),rs.getString("tipus"), rs.getString("leiras")));
        return konyvek;
    }

    @Override
    public Konyv keres(int id) {
        List<Konyv> konyvek = jdbcTemplate.query("SELECT * FROM KONYV WHERE id="+id, (rs, rowNum) -> new Konyv(rs.getInt("id"), rs.getString("szerzo"), rs.getString("cim"),rs.getInt("ar"),rs.getInt("oldalszam"),rs.getString("kiado"),rs.getString("eleresiut"),rs.getInt("kiadasiev"),rs.getString("tipus"), rs.getString("leiras")));
        return konyvek.get(0);
    }

    @Override
    public void frissit(Konyv konyv) {
        //ha gond van, itt van gond a leiras miatt
        String sql = "UPDATE KONYV SET SZERZO='" + konyv.getSzerzo() + "', CIM='" + konyv.getCim() + "', AR=" + konyv.getAr() + ", OLDALSZAM=" + konyv.getOldalszam() +
                ", KIADO='" + konyv.getKiado() + "', ELERESIUT='" + konyv.getEleresiUt() + "', KIADASIEV=" + konyv.getKiadasiEv() +
                ", TIPUS='" + konyv.getTipus()  + "', LEIRAS=" + konyv.getLeiras() +  "WHERE id=" + konyv.getId();
        jdbcTemplate.update(sql);
    }

    @Override
    public void torol(int id) {
        String sql = "DELETE FROM KONYV WHERE id=" + id;
        jdbcTemplate.update(sql);
    }

    @Override
    public void beszur(Konyv konyv) {
        String sql = "INSERT INTO KONYV( SZERZO, CIM, AR, OLDALSZAM, KIADO, ELERESIUT, KIADASIEV, TIPUS, LEIRAS) VALUES (?, ?, ?, ?, ?, ?, ?, ?,?)";
        jdbcTemplate.update(sql, new Object[]{
                konyv.getSzerzo(), konyv.getCim(), konyv.getAr(), konyv.getOldalszam(), konyv.getKiado(), konyv.getEleresiUt(),konyv.getKiadasiEv(),konyv.getTipus(), konyv.getLeiras() }
        );
    }

    public List<Konyv> szur(int mufajId) {
        List<Konyv> konyvek = jdbcTemplate.query("SELECT KONYV.id,KONYV.szerzo,KONYV.cim,KONYV.ar,KONYV.oldalszam,KONYV.kiado,KONYV.eleresiut,KONYV.kiadasiev,KONYV.tipus,KONYV.leiras FROM KONYV,MUFAJA WHERE KONYV.id=MUFAJA.konyv_id AND MUFAJA.MUFAJ_ID="+mufajId, (rs, rowNum) -> new Konyv(rs.getInt("id"), rs.getString("szerzo"), rs.getString("cim"),rs.getInt("ar"),rs.getInt("oldalszam"),rs.getString("kiado"),rs.getString("eleresiut"),rs.getInt("kiadasiev"),rs.getString("tipus"), rs.getString("leiras")));

        for (Konyv konyv : konyvek) {
            System.out.println(konyv.getCim());
        }

        return konyvek;

    }
}
