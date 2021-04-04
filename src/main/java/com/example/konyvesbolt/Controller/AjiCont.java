package com.example.konyvesbolt.DAO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AjiCont {

    @Autowired
    private AjandekDAO aji;

    @GetMapping(value = "/asd")
    public String asd(Model model){
        System.out.println(aji.load("feri"));
        return "asd";
    }
    @GetMapping(value = "/")
    public String som(Model model){
        return "asd";
    }
}
