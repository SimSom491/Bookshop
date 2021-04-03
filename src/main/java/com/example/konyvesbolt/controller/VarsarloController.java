package com.example.konyvesbolt.controller;


import com.example.konyvesbolt.dao.AjandekDAO;
import com.example.konyvesbolt.dao.VasarloDAO;
import com.example.konyvesbolt.model.Ajandek;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class VarsarloController {
    @Autowired
    AjandekDAO ajandekDAO;

}
