package com.example.konyvesbolt.Dao;

import com.example.konyvesbolt.Model.Ajandek;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;
import java.util.List;

@Repository
public class AjandekDAO {
    @Autowired
    private DataSource dataSource;
    private JdbcTemplate jdbcTemplate;

    @PostConstruct
    private void postConstruct() {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }



    public Ajandek load(String nev) {

        String sql = "SELECT * FROM AJANDEK WHERE NEV = ?";

        return new Ajandek("feri");
    }


}
