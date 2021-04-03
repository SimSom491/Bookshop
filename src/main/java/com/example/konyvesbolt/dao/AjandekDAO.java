package com.example.konyvesbolt.dao;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import com.example.konyvesbolt.model.Ajandek;
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
      List<Ajandek> ajandeks = jdbcTemplate.query("SELECT nev FROM AJANDEK", (rs, rowNum) -> new Ajandek(rs.getString("nev")));
      for (int i = 0; i < ajandeks.size(); i++)
      {
         System.out.println(ajandeks.get(i).getNev());
      }
      return ajandeks.get(0);
   }

}
