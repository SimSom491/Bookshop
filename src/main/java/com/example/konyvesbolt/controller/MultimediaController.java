package com.example.konyvesbolt.controller;

import com.example.konyvesbolt.dao.BoltDAO;
import com.example.konyvesbolt.dao.FilmDAO;
import com.example.konyvesbolt.dao.MultimediaDAO;
import com.example.konyvesbolt.dao.ZeneDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class MultimediaController {
    @Autowired
    MultimediaDAO multimediaDAO;
    @Autowired
    ZeneDAO zeneDAO;
    @Autowired
    FilmDAO filmDAO;
    @Autowired
    BoltDAO boltDAO;

    @GetMapping(value = "/multimedia")
    public String multimediatListaz(Model model) {
        model.addAttribute("multimedia", multimediaDAO.listaz());
        return "multimedia";
    }
    @GetMapping(value = "/zene")
    public String zenetListaz(Model model) {
        model.addAttribute("multimedia", zeneDAO.listaz());
        return "multimedia";
    }
    @GetMapping(value = "/film")
    public String filmetListaz(Model model) {
        model.addAttribute("multimedia", filmDAO.listaz());
        return "multimedia";
    }

    @GetMapping(value = "/bolt")
    public String boltotListaz(Model model) {
        model.addAttribute("boltok", boltDAO.listaz());
        return "rendelesinfo";
    }

}
