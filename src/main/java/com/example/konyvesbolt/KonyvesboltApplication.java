package com.example.konyvesbolt;

import com.example.konyvesbolt.model.Ajandek;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;

@SpringBootApplication
public class KonyvesboltApplication {
   
    public static void main(String[] args) {
        SpringApplication.run(KonyvesboltApplication.class, args);
    }


}
