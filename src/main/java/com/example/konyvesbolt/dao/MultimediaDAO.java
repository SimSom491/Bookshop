package com.example.konyvesbolt.dao;

import com.example.konyvesbolt.model.Kedvezmeny;
import com.example.konyvesbolt.model.Konyv;
import com.example.konyvesbolt.model.Multimedia;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class MultimediaDAO implements DAO<Multimedia> {
    @Autowired
    JdbcTemplate jdbcTemplate;

    @Autowired
    NamedParameterJdbcTemplate namedParameterJdbcTemplate;

    @Override
    public List<Multimedia> listaz() {
        List<Multimedia> mediak = jdbcTemplate.query("SELECT * FROM MULTIMEDIA", (rs, rowNum) -> new Multimedia(rs.getInt("id"), rs.getString("cim"), rs.getInt("ar"), rs.getString("eleresiut")));

        return mediak;
    }

    @Override
    public Multimedia keres(int id) {
        List<Multimedia> multik = jdbcTemplate.query("SELECT * FROM MULTIMEDIA WHERE id="+id, (rs, rowNum) -> new Multimedia(rs.getInt("id"), rs.getString("cim"), rs.getInt("ar"),rs.getString("eleresiut")));
        if (multik.size() == 0){
            throw new ArrayIndexOutOfBoundsException("Nem találtuk a keresett id-t");
        }
        return multik.get(0);
    }

    @Override
    public void frissit(Multimedia multimedia) {
        String sql = "UPDATE MULTIMEDIA SET CIM='" + multimedia.getCim() + "', AR=" + multimedia.getAr() + ", ELERESIUT='" + multimedia.getEleresiUt() + "'  WHERE id=" + multimedia.getId();
        jdbcTemplate.update(sql);
    }

    @Override
    public void torol(int id) {
        String sql = "DELETE FROM MULTIMEDIA WHERE id=" + id;
        jdbcTemplate.update(sql);
    }

    @Override
    public void beszur(Multimedia multimedia) {
        String sql = "INSERT INTO MULTIMEDIA(CIM, AR, ELERESIUT) VALUES (?, ?, ?)";
        jdbcTemplate.update(sql,
                multimedia.getCim(),
                multimedia.getAr(),
                multimedia.getEleresiUt());
    }
    public List<Multimedia> toplista() {
        List<Multimedia> multimediak = new ArrayList<>();
        List<Integer> id = jdbcTemplate.query("SELECT MULTIMEDIA.ID FROM MULTIMEDIA,RAKTARON WHERE AR  < 2000 AND" +
                        " (SELECT SUM(MENNYISEG) FROM MULTIMEDIA, RAKTARON WHERE MULTIMEDIA.ID=RAKTARON.MULTIMEDIA_ID)>30 AND " +
                        "MULTIMEDIA.ID = RAKTARON.MULTIMEDIA_ID GROUP BY MULTIMEDIA.ID",
                (rs, rowNum) -> (rs.getInt("id")));

        for (Integer i : id) {
            multimediak.add(keres(i));
        }

        return multimediak;
    }
    public List<Multimedia> legujabbListaz() {
        List<Multimedia> multimediak = new ArrayList<>();
        List<Integer> id = jdbcTemplate.query("SELECT MULTIMEDIA.ID FROM MULTIMEDIA,RAKTARON WHERE CIM LIKE 'A%' OR CIM LIKE 'D%' AND " +
                        "(SELECT SUM(MENNYISEG) FROM MULTIMEDIA, RAKTARON WHERE MULTIMEDIA.ID=RAKTARON.MULTIMEDIA_ID)>3 AND" +
                        " MULTIMEDIA.ID = RAKTARON.MULTIMEDIA_ID GROUP BY MULTIMEDIA.ID",
                (rs, rowNum) -> (rs.getInt("id")));

        for (Integer i : id) {
            multimediak.add(keres(i));
        }
        return multimediak;
    }

    public List<Multimedia> getMultisWhoBoughtThisMultiAsWell(int multiID, int buyerID){
        MapSqlParameterSource parameters = new MapSqlParameterSource();
        parameters.addValue("multiId", multiID );
        parameters.addValue("buyerId", buyerID);
        String sql = "SELECT MULTIMEDIA.ID, COUNT(*) as num FROM MULTIMEDIA, VASARLO, VASAROL, VASARLAS, TARTOZIK\n" +
                "WHERE VASARLO.ID IN (SELECT VASARLO.ID FROM MULTIMEDIA, VASARLO, VASAROL, VASARLAS, TARTOZIK\n" +
                "                     WHERE MULTIMEDIA.ID = TARTOZIK.ID AND MULTIMEDIA_ID = (:multiId) AND VASARLAS.ID = VASAROL.VASARLAS_ID\n" +
                "                       AND TARTOZIK.VASARLAS_ID = VASARLAS.ID AND VASAROL.VASARLO_ID = VASARLO.ID\n" +
                "                       AND VASARLO.ID != (:buyerId) GROUP BY VASARLO.ID)\n" +
                "  AND MULTIMEDIA.ID = TARTOZIK.MULTIMEDIA_ID AND TARTOZIK.VASARLAS_ID = VASARLAS.ID AND VASARLAS.ID = VASAROL.VASARLAS_ID\n" +
                "  AND VASARLO.ID =VASAROL.VASARLO_ID AND MULTIMEDIA.ID != (:multiId) GROUP BY MULTIMEDIA.ID ORDER BY num DESC";
        List<Integer> multiIds = namedParameterJdbcTemplate.query(sql,parameters,(rs, rowNum) ->
                rs.getInt("id")
        );
        List<Integer> bookNumbers = namedParameterJdbcTemplate.query(sql,parameters,(rs, rowNum) ->
                rs.getInt("num")
        );
        List<Multimedia> multik = new ArrayList<>();
        for (Integer id : multiIds) {
            multik.add(keres(id));
        }
        return multik;
    }

    public List<Multimedia> szur(int mufajId) {

        return jdbcTemplate.query("SELECT MULTIMEDIA.ID,MULTIMEDIA.AR,MULTIMEDIA.CIM,MULTIMEDIA.ELERESIUT FROM MULTIMEDIA,MUFAJA WHERE MULTIMEDIA.id=MUFAJA.multimedia_id AND MUFAJA.MUFAJ_ID="+mufajId, (rs, rowNum) -> new Multimedia(rs.getInt("id"), rs.getString("cim"),rs.getInt("ar"),rs.getString("eleresiut")));

    }

    public boolean isZene(int multiId) {

            List<Multimedia> multik = jdbcTemplate.query("SELECT * FROM ZENE,MULTIMEDIA WHERE id="+multiId +" AND id=multimedia_id", (rs, rowNum) -> new Multimedia(rs.getInt("id"), rs.getString("cim"), rs.getInt("ar"),rs.getString("eleresiut")));
        return multik.size() != 0;

    }
    public void aratFrissit(int id, int ar){
        MapSqlParameterSource parameters = new MapSqlParameterSource();
        parameters.addValue("id", id);
        parameters.addValue("ar", ar);

        String sql = "UPDATE MULTIMEDIA SET AR = (:ar) WHERE ID IN (:id)";

        namedParameterJdbcTemplate.update(sql, parameters);


    }
}
