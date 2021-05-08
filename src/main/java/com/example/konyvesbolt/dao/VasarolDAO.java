package com.example.konyvesbolt.dao;

import com.example.konyvesbolt.model.Vasarol;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.UncategorizedSQLException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.sql.SQLDataException;
import java.sql.SQLException;
import java.util.List;

@Repository
public class VasarolDAO implements DAO<Vasarol>{
    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public List<Vasarol> listaz() {
        return null;
    }

    @Override
    public Vasarol keres(int id) {
        return null;
    }

    @Override
    public void frissit(Vasarol vasarol) {

    }

    @Override
    public void torol(int id) {

    }

    @Override
    public void beszur(Vasarol vasarol) {
        String sql = "INSERT INTO VASAROL( VASARLO_ID, KEDVEZMENY_ID, BOLT_ID, VASARLAS_ID) VALUES ( ?, ?, ?,?)";


            jdbcTemplate.update(sql,
                    vasarol.getVasarloId(),
                    vasarol.getKedvezmenyId()==0?null:vasarol.getKedvezmenyId(),
                    vasarol.getBoltId(),
                    vasarol.getVasarlasId());




    }
}
