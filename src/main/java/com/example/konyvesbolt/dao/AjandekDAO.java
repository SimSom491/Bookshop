package com.example.konyvesbolt.dao;


import com.example.konyvesbolt.model.Ajandek;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

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

    public List<Ajandek> ajitListaz() {
        List<Ajandek> ajandeks = jdbcTemplate.query("SELECT * FROM AJANDEK", (rs, rowNum) -> new Ajandek(rs.getString("nev"), rs.getInt("ar"), rs.getString("eleresiUt")));

        return ajandeks;
    }


    public void ajitHozzaad(Ajandek aji) {
        String sql = "INSERT INTO AJANDEK(NEV, AR, ELERESIUT) VALUES (?, ?, ?)";
        jdbcTemplate.update(sql, new Object[]{
                aji.getNev(), aji.getAr(), aji.getEleresiUt() }
    );
    }

    public void ajitTorol(String nev) {
        String sql = "DELETE FROM AJANDEK WHERE nev='" + nev +"'";
        jdbcTemplate.update(sql);
    }
}
