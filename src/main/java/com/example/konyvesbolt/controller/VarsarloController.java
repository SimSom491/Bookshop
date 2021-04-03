package com.example.konyvesbolt.controller;


import com.example.konyvesbolt.dao.AjandekDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class VarsarloController {
    @Autowired
    AjandekDAO ajandekDAO;
    @GetMapping(value = "/")
    public String listDog(Model model) {
        ajandekDAO.load("nev");
        return "index";
    }

}
