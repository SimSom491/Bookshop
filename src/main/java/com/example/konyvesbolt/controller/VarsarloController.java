package com.example.konyvesbolt.controller;


import com.example.konyvesbolt.dao.AjandekDAO;
import com.example.konyvesbolt.model.Ajandek;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class VarsarloController {
    @Autowired
    AjandekDAO ajandekDAO;
    @GetMapping(value = "/")
    public String ajandekList(Model model) {
        //addAji("FERI",9999 ,"https//valid veboladcim"); beszuras teszt
        model.addAttribute("ajandekok", ajandekDAO.ajitListaz()); //kiiratas
        //ajandekDAO.ajitTorol("FERI"); torlesteszt

        return "asd";
    }
    @PostMapping(value = "/addAji")
    public String addAji(@RequestParam("nev") String nev, @RequestParam("ar") int ar, @RequestParam("path") String ut) {
        Ajandek aji = new Ajandek(nev, ar, ut);
        ajandekDAO.ajitHozzaad(aji);

        return "redirect:/asd";
    }

    @GetMapping(value = "/deleteAji/{nev}")
    public String deleteAji(@PathVariable("nev") String nev) {
        ajandekDAO.ajitTorol(nev);

        return "redirect:/asd";
    }

}
