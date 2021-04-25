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

    }
}
