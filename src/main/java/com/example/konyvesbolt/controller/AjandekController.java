package com.example.konyvesbolt.controller;

import com.example.konyvesbolt.dao.AjandekDAO;
import com.example.konyvesbolt.dao.KonyvDAO;
import com.example.konyvesbolt.model.Ajandek;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AjandekController {


    @Autowired
    AjandekDAO ajandekDAO;


    @GetMapping(value = "/ajandek")
    public String ajandekList(Model model) {
        model.addAttribute("ajandekok", ajandekDAO.ajitListaz());
        return "ajandek";
    }
    @PostMapping(value = "/addAji")
    public String addAji(@RequestParam("nev") String nev, @RequestParam("ar") int ar, @RequestParam("path") String ut) {
        Ajandek aji = new Ajandek(nev, ar, ut);
        ajandekDAO.ajitHozzaad(aji);
/*todo*/
        return "redirect:/ajandek";
    }

    @GetMapping(value = "/deleteAji/{nev}")
    public String deleteAji(@PathVariable("nev") String nev) {
        ajandekDAO.ajitTorol(nev);
/*todo*/
        return "redirect:/ajandek";
    }
}
