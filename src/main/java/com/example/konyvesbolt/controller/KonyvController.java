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
        model.addAttribute("konyvek", konyvDAO.legujabbListaz());
        model.addAttribute("toplista", konyvDAO.toplista());
        List<Mufaj> mufajok= mufajDAO.listaz();

        model.addAttribute("mufajok", mufajDAO.mufajszam(mufajok));
        return "index";
    }

    @GetMapping(value = "/add")
    public String Addpage(Model model) {


        return "termek-hozzaad";
    }

    @GetMapping(value = "/konyvek/deleteKonyv/{id}")
    public String delete(@PathVariable("id") int konyvid, Model model) {
        konyvDAO.torol(konyvid);

        return "redirect:/konyvek";
    }


    @GetMapping(value = "/konyvek")
    public String konyvList(Model model, HttpSession httpSession) {
        Vasarlo vasarlo = (Vasarlo) httpSession.getAttribute("logged_in_user");

        if (vasarlo!=null) {
            model.addAttribute("admine", vasarlo.isAdmine());
        }else{
            model.addAttribute("admine", false);
        }
        model.addAttribute("konyvek", konyvDAO.listaz());
        List<Mufaj> mufajok= mufajDAO.listaz();

        model.addAttribute("mufajok", mufajDAO.mufajszam(mufajok));
        return "konyvek";
    }

    @GetMapping(value = "/konyvek/szur/{id}")
    public String szures(@PathVariable("id") int mufajId, Model model, HttpSession httpSession) {
        Vasarlo vasarlo = (Vasarlo) httpSession.getAttribute("logged_in_user");

        if (vasarlo!=null) {
            model.addAttribute("admine", vasarlo.isAdmine());
        }else{
            model.addAttribute("admine", false);
        }
        List<Konyv> konyvek = konyvDAO.szur(mufajId);
        model.addAttribute("konyvek", konyvek);
        List<Mufaj> mufajok= mufajDAO.listazKonyvek(konyvek.get(0).getTipus());


        model.addAttribute("mufajok", mufajDAO.mufajszam(mufajok));

        return "konyvek";
    }

    @PostMapping(value = "/konyvek/keres")
    public String konyvKeres(@RequestParam("cim") String cim, @RequestParam("szerzo") String szerzo, Model model,HttpSession httpSession ){
        Vasarlo vasarlo = (Vasarlo) httpSession.getAttribute("logged_in_user");
        model.addAttribute("konyvek", konyvDAO.keresNev(cim, szerzo));
        if (vasarlo!=null) {
            model.addAttribute("admine", vasarlo.isAdmine());
        }else{
            model.addAttribute("admine", false);
        }
        List<Mufaj> mufajok= mufajDAO.listaz();

        model.addAttribute("mufajok", mufajDAO.mufajszam(mufajok));
        return "konyvek";
    }
    @GetMapping(value = "/konyvek/reszletek/{id}")
    public String reszletezes(@PathVariable("id") int konyvid, Model model, HttpSession httpSession) {
        Konyv konyv = konyvDAO.keres(konyvid);
        if (httpSession.getAttribute("logged_in_user") != null){
            Vasarlo vasarlo = (Vasarlo) httpSession.getAttribute("logged_in_user");
            List<Konyv> vettKonyvek = konyvDAO.getBooksWhoBoughtThisBookAsWell(konyvid,vasarlo.getId());
            model.addAttribute("vettKonyvek", vettKonyvek);
        }

        switch (konyv.getTipus()) {
            case "Könyv":
                model.addAttribute("konyv", konyv);
                break;
            case "Magazin":
                model.addAttribute("konyv", magazinDAO.keres(konyvid));
                break;
            case "Hangoskönyv":
                model.addAttribute("konyv", hangosKonyvDAO.keres(konyvid));
                break;
            case "Antikvár":
                model.addAttribute("konyv", antikvarDao.keres(konyvid));
                break;
            default:
                model.addAttribute("konyv", tankonyvDAO.keres(konyvid));
                break;
        }


        return "konyv";
    }


    @GetMapping(value = "/magazinok")
    public String magazinList(Model model, HttpSession httpSession) {
        Vasarlo vasarlo = (Vasarlo) httpSession.getAttribute("logged_in_user");

        if (vasarlo!=null) {
            model.addAttribute("admine", vasarlo.isAdmine());
        }else{
            model.addAttribute("admine", false);
        }
        model.addAttribute("konyvek", magazinDAO.listaz());
        model.addAttribute("mufajok", mufajDAO.konyvszam(mufajDAO.listazKonyvek("Magazin"),"Magazin"));
        return "konyvek";
    }
    @GetMapping(value = "/tankonyvek")
    public String tankonyvList(Model model, HttpSession httpSession) {
        Vasarlo vasarlo = (Vasarlo) httpSession.getAttribute("logged_in_user");

        if (vasarlo!=null) {
            model.addAttribute("admine", vasarlo.isAdmine());
        }else{
            model.addAttribute("admine", false);
        }
        model.addAttribute("konyvek", tankonyvDAO.listaz());
        model.addAttribute("mufajok", mufajDAO.konyvszam(mufajDAO.listazKonyvek("Tankönyv"),"Tankönyv"));
        return "konyvek";
    }

    @GetMapping(value = "/hangoskonyvek")
    public String hangosList(Model model, HttpSession httpSession) {
        Vasarlo vasarlo = (Vasarlo) httpSession.getAttribute("logged_in_user");

        if (vasarlo!=null) {
            model.addAttribute("admine", vasarlo.isAdmine());
        }else{
            model.addAttribute("admine", false);
        }
        model.addAttribute("konyvek", hangosKonyvDAO.listaz());
        model.addAttribute("mufajok", mufajDAO.konyvszam(mufajDAO.listazKonyvek("Hangoskönyv"),"Hangoskönyv"));
        return "konyvek";
    }
    @GetMapping(value = "/antikvarkonyvek")
    public String antikvarlistaz(Model model, HttpSession httpSession) {
        Vasarlo vasarlo = (Vasarlo) httpSession.getAttribute("logged_in_user");

        if (vasarlo!=null) {
            model.addAttribute("admine", vasarlo.isAdmine());
        }else{
            model.addAttribute("admine", false);
        }
        model.addAttribute("konyvek", antikvarDao.listaz());
        model.addAttribute("mufajok", mufajDAO.konyvszam(mufajDAO.listazKonyvek("Antikvár"),"Antikvár"));
        return "konyvek";
    }

    @GetMapping(value = "/addkonyv")
    public String addkonyvGet(){
        return "termek-hozzaad";
    }
    @GetMapping(value = "/addmagazin")
    public String addmagazinGet(){
        return "termek-hozzaad";
    }
    @GetMapping(value = "/addtankonyv")
    public String addtankonyvGet(){
        return "termek-hozzaad";
    }
    @GetMapping(value = "/addantikvar")
    public String addantikvarGet(){
        return "termek-hozzaad";
    }
    @GetMapping(value = "/addhangoskonyv")
    public String addhangoskonyvGet(){
        return "termek-hozzaad";
    }

    @PostMapping(value = "/addkonyv")
    public String addkonyv(
            @RequestParam("szerzo") String szerzo,
            @RequestParam("cim") String cim,
            @RequestParam("ar") int ar,
            @RequestParam("oldalszam") int oldalszam,
            @RequestParam("kiado") String kiado,
            @RequestParam("eleresiUt") String eleresiUt,
            @RequestParam("kiadasiEv") int kiadasiEv,
            @RequestParam("tipus") String tipus,
            @RequestParam("leiras") String leiras)

    {
        Konyv konyv = new Konyv(szerzo, cim, ar, oldalszam,
               kiado, eleresiUt, kiadasiEv, tipus, leiras);
        konyvDAO.beszur(konyv);

        return "redirect:/addkonyv";
    }
    @PostMapping(value = "/addmagazin")
    public String addmagazin(
            @RequestParam("szerzo") String szerzo,
            @RequestParam("cim") String cim,
            @RequestParam("ar") int ar,
            @RequestParam("oldalszam") int oldalszam,
            @RequestParam("kiado") String kiado,
            @RequestParam("eleresiUt") String eleresiUt,
            @RequestParam("kiadasiEv") int kiadasiEv,
            @RequestParam("tipus") String tipus,
            @RequestParam("leiras") String leiras,
            @RequestParam("gyakorisag") String gyakorisag
            )

    {
        Magazin magazin = new Magazin(szerzo, cim, ar, oldalszam,
                kiado, eleresiUt, kiadasiEv, tipus, leiras, gyakorisag);
        magazinDAO.beszur(magazin);
        return "redirect:/addmagazin";
    }
    @PostMapping(value = "/addtankonyv")
    public String addtankonyv(
            @RequestParam("szerzo") String szerzo,
            @RequestParam("cim") String cim,
            @RequestParam("ar") int ar,
            @RequestParam("oldalszam") int oldalszam,
            @RequestParam("kiado") String kiado,
            @RequestParam("eleresiUt") String eleresiUt,
            @RequestParam("kiadasiEv") int kiadasiEv,
            @RequestParam("tipus") String tipus,
            @RequestParam("leiras") String leiras,
            @RequestParam("ajanlottKor") int ajanlottKor,
            @RequestParam("fajta") String fajta
    )

    {
        Tankonyv tankonyv = new Tankonyv(szerzo, cim, ar, oldalszam,
                kiado, eleresiUt, kiadasiEv, tipus, leiras, ajanlottKor, fajta);
        tankonyvDAO.beszur(tankonyv);
        return "redirect:/addtankonyv";
    }
    @PostMapping(value = "/addantikvar")
    public String addantikvar(
            @RequestParam("szerzo") String szerzo,
            @RequestParam("cim") String cim,
            @RequestParam("ar") int ar,
            @RequestParam("oldalszam") int oldalszam,
            @RequestParam("kiado") String kiado,
            @RequestParam("eleresiUt") String eleresiUt,
            @RequestParam("kiadasiEv") int kiadasiEv,
            @RequestParam("tipus") String tipus,
            @RequestParam("leiras") String leiras,
            @RequestParam("kor") int kor,
            @RequestParam("allapot") String allapot
    )

    {
        AntikvarKonyv antikvarKonyv = new AntikvarKonyv(szerzo, cim, ar, oldalszam,
                kiado, eleresiUt, kiadasiEv, tipus, leiras, kor, allapot);
        antikvarDao.beszur(antikvarKonyv);
        return "redirect:/addantikvar";
    }
    @PostMapping(value = "/addhangoskonyv")
    public String addhangoskonyv(
            @RequestParam("szerzo") String szerzo,
            @RequestParam("cim") String cim,
            @RequestParam("ar") int ar,
            @RequestParam("oldalszam") int oldalszam,
            @RequestParam("kiado") String kiado,
            @RequestParam("eleresiUt") String eleresiUt,
            @RequestParam("kiadasiEv") int kiadasiEv,
            @RequestParam("tipus") String tipus,
            @RequestParam("leiras") String leiras,
            @RequestParam("elbeszelo") String elbeszelo,
            @RequestParam("hossz") int hossz

    )

    {
        Hangoskonyv hangoskonyv = new Hangoskonyv(szerzo, cim, ar, oldalszam,
                kiado, eleresiUt, kiadasiEv, tipus, leiras, elbeszelo, hossz);
     hangosKonyvDAO.beszur(hangoskonyv);
        return "redirect:/addhangoskonyv";
    }


}
