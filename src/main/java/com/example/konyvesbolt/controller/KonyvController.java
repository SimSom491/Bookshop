package com.example.konyvesbolt.controller;
import com.example.konyvesbolt.dao.*;

import com.example.konyvesbolt.model.Konyv;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

@Controller
public class KonyvController {

    @Autowired
    MagazinDAO magazinDAO;

    @Autowired
    MufajDAO mufajDAO;

    @Autowired
    TankonyvDAO tankonyvDAO;

    @Autowired
    AntikvarDao antikvarDao;

    @Autowired
    HangosKonyvDAO hangosKonyvDAO;

    @Autowired
    KonyvDAO konyvDAO;

    @GetMapping(value = "/")
    public String Starter(Model model) {
        model.addAttribute("konyvek", konyvDAO.listaz());
        model.addAttribute("mufajok", mufajDAO.listaz());
        return "index";
    }

    @GetMapping(value = "/konyvek")
    public String konyvList(Model model) {
        model.addAttribute("konyvek", konyvDAO.listaz());
        model.addAttribute("mufajok", mufajDAO.listaz());
        return "konyvek";
    }

    @GetMapping(value = "/konyvek/szur/{id}")
    public String szures(@PathVariable("id") int mufajId, Model model) {
        List<Konyv> konyvek = konyvDAO.szur(mufajId);
        model.addAttribute("konyvek", konyvek);
        model.addAttribute("mufajok", mufajDAO.listaz());

        return "konyvek";
    }

    @GetMapping(value = "/magazinok")
    public String magazinList(Model model){
        model.addAttribute("konyvek", magazinDAO.listaz());
        model.addAttribute("mufajok", mufajDAO.listaz());
        return "konyvek";
    }
    @GetMapping(value = "/tankonyvek")
    public String tankonyvList(Model model){
        model.addAttribute("konyvek", tankonyvDAO.listaz());
        model.addAttribute("mufajok", mufajDAO.listaz());
        return "konyvek";
    }

    @GetMapping(value = "/hangoskonyvek")
    public String hangosList(Model model){
        model.addAttribute("konyvek", hangosKonyvDAO.listaz());
        model.addAttribute("mufajok", mufajDAO.listaz());
        return "konyvek";
    }
    @GetMapping(value = "/antikvarkonyvek")
    public String antikvarlistaz(Model model){
        model.addAttribute("konyvek", antikvarDao.listaz());
        model.addAttribute("mufajok", mufajDAO.listaz());
        return "konyvek";
    }


}
