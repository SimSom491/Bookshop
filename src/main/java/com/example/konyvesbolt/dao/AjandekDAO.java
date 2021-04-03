package com.example.konyvesbolt.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;
import com.example.konyvesbolt.model.Ajandek;
import javax.annotation.PostConstruct;



@Repository
public class AjandekDAO {
@Autowired
   JdbcTemplate jdbcTemplate;



}
