package com.example.konyvesbolt.dao;

import com.example.konyvesbolt.model.Ajandek;
import com.example.konyvesbolt.model.Konyv;
import com.example.konyvesbolt.model.Multimedia;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Repository
public class KonyvDAO implements DAO<Konyv> {
    @Autowired
    JdbcTemplate jdbcTemplate;
    @Autowired
    NamedParameterJdbcTemplate namedParameterJdbcTemplate;

    @Override
    public List<Konyv> listaz() {
        List<Konyv> konyvek = jdbcTemplate.query("SELECT * FROM KONYV", (rs, rowNum) -> new Konyv(rs.getInt("id"), rs.getString("szerzo"), rs.getString("cim"), rs.getInt("ar"), rs.getInt("oldalszam"), rs.getString("kiado"), rs.getString("eleresiut"), rs.getInt("kiadasiev"), rs.getString("tipus"), rs.getString("leiras")));
        return konyvek;
    }

    @Override
    public Konyv keres(int id) {
        List<Konyv> konyvek = jdbcTemplate.query("SELECT * FROM KONYV WHERE id=" + id, (rs, rowNum) -> new Konyv(rs.getInt("id"), rs.getString("szerzo"), rs.getString("cim"), rs.getInt("ar"), rs.getInt("oldalszam"), rs.getString("kiado"), rs.getString("eleresiut"), rs.getInt("kiadasiev"), rs.getString("tipus"), rs.getString("leiras")));

        if (konyvek.size() == 0) {
            throw new ArrayIndexOutOfBoundsException("Nem találtuk a keresett id-t");
        }
        return konyvek.get(0);
    }

    public List<Konyv> keresNev(String cim, String szerzo) {
        MapSqlParameterSource parameters = new MapSqlParameterSource();
        parameters.addValue("cim", cim + "%");
        parameters.addValue("szerzo", szerzo + "%");
        String sql = "SELECT * FROM KONYV WHERE CIM LIKE (:cim) AND SZERZO LIKE (:szerzo)";

        List<Konyv> konyvek = namedParameterJdbcTemplate.query(sql, parameters, (rs, rowNum) -> new Konyv(
                rs.getInt("id"),
                rs.getString("szerzo"),
                rs.getString("cim"),
                rs.getInt("ar"),
                rs.getInt("oldalszam"),
                rs.getString("kiado"),
                rs.getString("eleresiut"),
                rs.getInt("kiadasiev"),
                rs.getString("tipus"),
                rs.getString("leiras")));


        return konyvek;
    }
    //könyvek listája, akik még ezt a könyvet vették meg
    //thoseBooksWhoBoughtThisBookAsWell
    public List<Konyv> getBooksWhoBoughtThisBookAsWell(int bookID, int buyerID){
        MapSqlParameterSource parameters = new MapSqlParameterSource();
        parameters.addValue("bookId", bookID );
        parameters.addValue("buyerId", buyerID);
        String sql = "SELECT KONYV.ID, COUNT(*) as num FROM KONYV, VASARLO, VASAROL, VASARLAS, TARTOZIK\n" +
                "WHERE VASARLO.ID IN (SELECT VASARLO.ID FROM KONYV, VASARLO, VASAROL, VASARLAS, TARTOZIK\n" +
                "                     WHERE KONYV.ID = TARTOZIK.ID AND KONYV_ID = (:bookId) AND VASARLAS.ID = VASAROL.VASARLAS_ID\n" +
                "                       AND TARTOZIK.VASARLAS_ID = VASARLAS.ID AND VASAROL.VASARLO_ID = VASARLO.ID\n" +
                "                       AND VASARLO.ID != (:buyerId) GROUP BY VASARLO.ID)\n" +
                "  AND KONYV.ID = TARTOZIK.KONYV_ID AND TARTOZIK.VASARLAS_ID = VASARLAS.ID AND VASARLAS.ID = VASAROL.VASARLAS_ID\n" +
                "  AND VASARLO.ID =VASAROL.VASARLO_ID AND KONYV.ID != (:bookId) GROUP BY KONYV.ID ORDER BY num DESC";
        List<Integer> bookIds = namedParameterJdbcTemplate.query(sql,parameters,(rs, rowNum) ->
                rs.getInt("id")
               );
        List<Integer> bookNumbers = namedParameterJdbcTemplate.query(sql,parameters,(rs, rowNum) ->
                rs.getInt("num")
        );
        List<Konyv> konyvek = new ArrayList<>();
        for (Integer bookId : bookIds) {
            konyvek.add(keres(bookId));
        }
        return konyvek;
    }


    @Override
    public void frissit(Konyv konyv) {
        //ha gond van, itt van gond a leiras miatt
        String sql = "UPDATE KONYV SET SZERZO='" + konyv.getSzerzo() + "', CIM='" + konyv.getCim() + "', AR=" + konyv.getAr() + ", OLDALSZAM=" + konyv.getOldalszam() +
                ", KIADO='" + konyv.getKiado() + "', ELERESIUT='" + konyv.getEleresiUt() + "', KIADASIEV=" + konyv.getKiadasiEv() +
                ", TIPUS='" + konyv.getTipus() + "', LEIRAS=" + konyv.getLeiras() + "WHERE id=" + konyv.getId();
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
        jdbcTemplate.update(sql,
                konyv.getSzerzo(),
                konyv.getCim(),
                konyv.getAr(),
                konyv.getOldalszam(),
                konyv.getKiado(),
                konyv.getEleresiUt(),
                konyv.getKiadasiEv(),
                konyv.getTipus(),
                konyv.getLeiras());
    }

    public List<Konyv> szur(int mufajId) {
        List<Konyv> konyvek = jdbcTemplate.query("SELECT KONYV.id,KONYV.szerzo,KONYV.cim,KONYV.ar,KONYV.oldalszam,KONYV.kiado,KONYV.eleresiut,KONYV.kiadasiev,KONYV.tipus,KONYV.leiras FROM KONYV,MUFAJA WHERE KONYV.id=MUFAJA.konyv_id AND MUFAJA.MUFAJ_ID=" + mufajId, (rs, rowNum) -> new Konyv(rs.getInt("id"), rs.getString("szerzo"), rs.getString("cim"), rs.getInt("ar"), rs.getInt("oldalszam"), rs.getString("kiado"), rs.getString("eleresiut"), rs.getInt("kiadasiev"), rs.getString("tipus"), rs.getString("leiras")));


        return konyvek;

    }

    public List<Konyv> legujabbListaz() {
        List<Konyv> konyvek = new ArrayList<>();
        List<Integer> id = jdbcTemplate.query("SELECT KONYV.ID FROM KONYV,RAKTARON WHERE KIADASIEV  > 2019 AND " +
                        "(SELECT SUM(MENNYISEG) FROM KONYV, RAKTARON WHERE KONYV.ID=RAKTARON.KONYV_ID)>10 AND" +
                        " KONYV.ID = RAKTARON.KONYV_ID GROUP BY KONYV.ID",
                         (rs, rowNum) -> (rs.getInt("id")));

        for (Integer i : id) {
            konyvek.add(keres(i));
        }
        return konyvek;
    }

    public List<Konyv> toplista() {
        List<Konyv> konyvek = new ArrayList<>();
        List<Integer> id = jdbcTemplate.query("SELECT KONYV.ID FROM KONYV,RAKTARON WHERE AR  < 2000 AND" +
                        " (SELECT SUM(MENNYISEG) FROM KONYV, RAKTARON WHERE KONYV.ID=RAKTARON.KONYV_ID)>30 AND " +
                        "KONYV.ID = RAKTARON.KONYV_ID GROUP BY KONYV.ID",
                        (rs, rowNum) -> (rs.getInt("id")));

        for (Integer i : id) {
            konyvek.add(keres(i));
        }

        return konyvek;
    }
    public void aratFrissit(int id, int ar){
         MapSqlParameterSource parameters = new MapSqlParameterSource();
        parameters.addValue("id", id);
        parameters.addValue("ar", ar);

        String sql = "UPDATE KONYV SET AR = (:ar) WHERE ID IN (:id)";

       namedParameterJdbcTemplate.update(sql, parameters);


    }


}
