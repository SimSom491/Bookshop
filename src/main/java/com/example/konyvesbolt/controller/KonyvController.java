package com.example.konyvesbolt.controller;
import com.example.konyvesbolt.dao.HangosKonyvDAO;
import com.example.konyvesbolt.dao.KonyvDAO;
import com.example.konyvesbolt.dao.MagazinDAO;

import com.example.konyvesbolt.dao.TankonyvDAO;
import com.example.konyvesbolt.model.Konyv;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

@Controller
public class KonyvController {

    @Autowired
    MagazinDAO magazinDAO;

    @Autowired
    TankonyvDAO tankonyvDAO;

    @Autowired
    HangosKonyvDAO hangosKonyvDAO;

    @Autowired
    KonyvDAO konyvDAO;


    @GetMapping(value = "/konyvek")
    public String konyvList(Model model) {
        model.addAttribute("konyvek", konyvDAO.listaz());
        return "konyvek";
    }

    @GetMapping(value = "/magazinok")
    public String magazinList(Model model){
        model.addAttribute("konyvek", magazinDAO.listaz());
        return "konyvek";
    }
    @GetMapping(value = "/tankonyvek")
    public String tankonyvList(Model model){
        model.addAttribute("konyvek", tankonyvDAO.listaz());
        return "konyvek";
    }

    @GetMapping(value = "/hangoskonyvek")
    public String hangosList(Model model){
        model.addAttribute("konyvek", hangosKonyvDAO.listaz());
        return "konyvek";
    }


}
