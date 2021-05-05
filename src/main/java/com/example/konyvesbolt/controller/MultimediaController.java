package com.example.konyvesbolt.controller;

import com.example.konyvesbolt.dao.*;
import com.example.konyvesbolt.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
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


    @GetMapping(value = "/multimedia/deleteMult/{id}")
    public String delete(@PathVariable("id") int multiId, Model model) {
        multimediaDAO.torol(multiId);

        return "redirect:/multimedia";
    }

    @GetMapping(value = "/multimedia")
    public String multimediatListaz(Model model, HttpSession httpSession) {
        Vasarlo vasarlo = (Vasarlo) httpSession.getAttribute("logged_in_user");

        if (vasarlo!=null) {
            model.addAttribute("admine", vasarlo.isAdmine());
        }else{
            model.addAttribute("admine", false);
        }
        model.addAttribute("multimedia", multimediaDAO.listaz());
        model.addAttribute("mufajok", mufajDAO.multiListaz());
        return "multimedia";
    }
    @GetMapping(value = "/addm")
    public String Addpage(Model model) {


        return "multimedia-hozzaad";
    }

    @GetMapping(value = "/zene")
    public String zenetListaz(Model model, HttpSession httpSession) {
        Vasarlo vasarlo = (Vasarlo) httpSession.getAttribute("logged_in_user");

        if (vasarlo!=null) {
            model.addAttribute("admine", vasarlo.isAdmine());
        }else{
            model.addAttribute("admine", false);
        }
        model.addAttribute("multimedia", zeneDAO.listaz());
        model.addAttribute("mufajok", mufajDAO.zeneListaz());
        return "multimedia";
    }
    @GetMapping(value = "/film")
    public String filmetListaz(Model model, HttpSession httpSession) {
        Vasarlo vasarlo = (Vasarlo) httpSession.getAttribute("logged_in_user");

        if (vasarlo!=null) {
            model.addAttribute("admine", vasarlo.isAdmine());
        }else{
            model.addAttribute("admine", false);
        }
        model.addAttribute("multimedia", filmDAO.listaz());
        model.addAttribute("mufajok", mufajDAO.filmListaz());
        return "multimedia";
    }


    @GetMapping(value = "/multiszur/{id}")
    public String szures(@PathVariable("id") int mufajId, Model model) {
        List<Multimedia> multimediak = multimediaDAO.szur(mufajId);
        model.addAttribute("multimedia", multimediak);
        model.addAttribute("mufajok", mufajDAO.multiListaz());
        return "multimedia";
    }
    @GetMapping(value = "/addfilm")
    public String addfilmget(){
        return "multimedia-hozzaad";
    }
    @GetMapping(value = "/addzene")
    public String addzeneget(){
        return "multimedia-hozzaad";
    }


    @PostMapping(value = "/addfilm")
    public String addfilm(
                          @RequestParam("cim") String cim,
                          @RequestParam("ar") int ar,
                          @RequestParam("ev") int ev,
                          @RequestParam("eleresiUt") String eleresiUt,
                          @RequestParam("hossz") int hossz) {
        Film film = new Film( cim, ar, eleresiUt, ev, hossz);

        filmDAO.beszur(film);

        return "redirect:/addfilm";
    }

    @PostMapping(value = "/addzene")
    public String addzene(
            @RequestParam("cim") String cim,
            @RequestParam("ar") int ar,
            @RequestParam("eleresiUt") String eleresiUt,
            @RequestParam("eloado") String eloado
    ){
        Zene zene = new Zene(cim,ar,eleresiUt,eloado);
        zeneDAO.beszur(zene);

        return "redirect:/addzene";
    }


}
