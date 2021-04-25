package com.example.konyvesbolt.controller;

import com.example.konyvesbolt.dao.*;
import com.example.konyvesbolt.model.Konyv;
import com.example.konyvesbolt.model.Multimedia;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;


@Controller
public class MultimediaController {

    @Autowired
    MufajDAO mufajDAO;
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
        model.addAttribute("mufajok", mufajDAO.multiListaz());
        return "multimedia";
    }
    @GetMapping(value = "/zene")
    public String zenetListaz(Model model) {
        model.addAttribute("multimedia", zeneDAO.listaz());
        model.addAttribute("mufajok", mufajDAO.multiListaz());
        return "multimedia";
    }
    @GetMapping(value = "/film")
    public String filmetListaz(Model model) {
        model.addAttribute("multimedia", filmDAO.listaz());
        model.addAttribute("mufajok", mufajDAO.multiListaz());
        return "multimedia";
    }

    @GetMapping(value = "/bolt")
    public String boltotListaz(Model model) {
        model.addAttribute("boltok", boltDAO.listaz());
        model.addAttribute("mufajok", mufajDAO.multiListaz());
        return "rendelesinfo";
    }
    @GetMapping(value = "/multiszur/{id}")
    public String szures(@PathVariable("id") int mufajId, Model model) {
        List<Multimedia> multimediak = multimediaDAO.szur(mufajId);
        model.addAttribute("multimedia", multimediak);
        model.addAttribute("mufajok", mufajDAO.multiListaz());

        return "multimedia";
    }

}
