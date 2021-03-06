package com.example.konyvesbolt.controller;


import com.example.konyvesbolt.dao.*;
import com.example.konyvesbolt.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.UncategorizedSQLException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.sql.Date;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.*;

@Controller
public class VasarlasController {
    @Autowired
    KonyvDAO konyvDAO;
    @Autowired
    MultimediaDAO multimediaDAO;
    @Autowired
    VasarlasDAO vasarlasDAO;
    @Autowired
    TartozikDAO tartozikDAO;
    @Autowired
    VasarolDAO vasarolDAO;

    public static Map<Konyv, Integer> konyvKosar = new TreeMap<>();
    public static Map<Multimedia, Integer> multiKosar = new TreeMap<>();
    public static Map<String, String> messages = new TreeMap<>();



    @GetMapping(value = "/kosar")
    public String kosar(Model model, HttpSession httpSession) {
        Vasarlo vasarlo = (Vasarlo) httpSession.getAttribute("logged_in_user");
        if (vasarlo != null) {
            model.addAttribute("konyvKosar", konyvKosar);
            model.addAttribute("multiKosar", multiKosar);
            model.addAttribute("sum", sum());
            model.addAttribute("uzenetek", messages);

            return "kosar";
        } else {
            return "redirect:/login";
        }
    }

    private int sum() {
        int sum = 0;
        for (Map.Entry<Konyv, Integer> entry : konyvKosar.entrySet()) {
            sum += entry.getKey().getAr() * entry.getValue();
        }
        for (Map.Entry<Multimedia, Integer> entry : multiKosar.entrySet()) {
            sum += entry.getKey().getAr() * entry.getValue();
        }
        return sum;
    }

    @GetMapping(value = "/konyvek/kosarhozad/{id}")
    public String kosarhozKonyvetAd(@PathVariable("id") int id, HttpSession httpSession) {
        Vasarlo vasarlo = (Vasarlo) httpSession.getAttribute("logged_in_user");
        if (vasarlo != null) {
            Konyv konyv = konyvDAO.keres(id);
            incraseItemNumber(konyv, konyvKosar);

            httpSession.setAttribute("cartSize", (httpSession.getAttribute("cartSize") == null ? 0 : (Integer) httpSession.getAttribute("cartSize")) + 1);
            System.out.println(httpSession.getAttribute("cartSize"));
            return "redirect:/konyvek";
        }
        return "redirect:/login";

    }

    @GetMapping(value = "/multimedia/kosarhozad/{id}")
    public String kosarhozMultitAd(@PathVariable("id") int id, HttpSession httpSession) {
        Vasarlo vasarlo = (Vasarlo) httpSession.getAttribute("logged_in_user");
        if (vasarlo != null) {
            Multimedia multimedia = multimediaDAO.keres(id);
            incraseItemNumber(multimedia, multiKosar);
            httpSession.setAttribute("cartSize", (httpSession.getAttribute("cartSize") == null ? 0 : (Integer) httpSession.getAttribute("cartSize")) + 1);
            System.out.println(httpSession.getAttribute("cartSize"));
            return "redirect:/multimedia";
        }
        return "redirect:/login";
    }

    @PostMapping(value = "/kosar/kosarbolTorolMulti/{id}")
    public String kosarbolTorolMulti(@PathVariable("id") int id, HttpSession httpSession) {
        Vasarlo vasarlo = (Vasarlo) httpSession.getAttribute("logged_in_user");
        if (vasarlo != null) {
            Multimedia multimedia = multimediaDAO.keres(id);
            decreseItemNumber(multimedia, multiKosar);
            httpSession.setAttribute("cartSize", (httpSession.getAttribute("cartSize") == null ? 0 : (Integer) httpSession.getAttribute("cartSize")) - 1);

            return "redirect:/kosar";
        }
        return "redirect:/login";
    }

    @PostMapping(value = "/kosar/kosarbolTorolKonyv/{id}")
    public String kosarbolTorolKonyv(@PathVariable("id") int id, HttpSession httpSession) {
        Vasarlo vasarlo = (Vasarlo) httpSession.getAttribute("logged_in_user");
        if (vasarlo != null) {
            Konyv konyv = konyvDAO.keres(id);
            decreseItemNumber(konyv, konyvKosar);
            httpSession.setAttribute("cartSize", (httpSession.getAttribute("cartSize") == null ? 0 : (Integer) httpSession.getAttribute("cartSize")) - 1);
            return "redirect:/kosar";
        }
        return "redirect:/login";
    }

    private <T> void decreseItemNumber(T item, Map<T, Integer> cart) {
        if (cart.get(item) > 1) {
            cart.put(item, cart.get(item) - 1);
        } else {
            cart.remove(item);
        }
    }

    private <T> void incraseItemNumber(T item, Map<T, Integer> cart) {
        if (cart.containsKey(item)) {
            cart.put(item, cart.get(item) + 1);
        } else {
            cart.put(item, 1);
        }
    }

    @PostMapping(value = "/kosar/vasarlas")
    public String vasarol(@RequestParam( value = "szamla",   required = false) String szamla,
                          @RequestParam(value = "szalliatas",       required = false) String szallitas,
                          @RequestParam(value = "discount",       required = false) String kedvezmeny,
                          HttpSession httpSession) {
        Vasarlo vasarlo = (Vasarlo) httpSession.getAttribute("logged_in_user");
        if (vasarlo != null) {
            messages.clear();
            Vasarlas vasarlas = new Vasarlas();
            vasarlas.setSzamlaigenyes(szamla != null);
            vasarlas.setAtvetel(szallitas);
            vasarlas.setMikor(Date.valueOf(LocalDate.now()));

            vasarlasDAO.beszur(vasarlas);

            int id=vasarlasDAO.idkeres();

            vasarolDAO.beszur(new Vasarol(vasarlo.getId(),0,1,id));


                for (Map.Entry<Konyv, Integer> konyvIntegerEntry : konyvKosar.entrySet()) {

                    try {
                        tartozikDAO.beszur(new Tartozik(id,konyvIntegerEntry.getKey().getId(),0,0,konyvIntegerEntry.getValue()));
                        messages.put(konyvIntegerEntry.getKey().getCim(), "sikeres v??s??rl??s");
                    }

                    catch (UncategorizedSQLException exp){
                        vasarlasDAO.torol(id);
                        messages.put(konyvIntegerEntry.getKey().getCim(),"Nincs el??g k??nyv ebb??l");
                    }
                }
                for (Map.Entry<Multimedia, Integer> konyvIntegerEntry : multiKosar.entrySet()) {
                    tartozikDAO.beszur(new Tartozik(id,0,konyvIntegerEntry.getKey().getId(),0,konyvIntegerEntry.getValue()));
                    messages.put(konyvIntegerEntry.getKey().getCim(), "sikeres v??s??rl??s");
                }


            //for (Map.Entry<Multimedia, Integer> konyvIntegerEntry : .entrySet()) {
            //    tartozikDAO.beszur(new Tartozik(id,0,konyvIntegerEntry.getKey().getId(),0,konyvIntegerEntry.getValue()));
            //}




            konyvKosar.clear();
            multiKosar.clear();
            httpSession.setAttribute("cartSize",null);

            return "redirect:/kosar";
        }
        return "redirect:/login";
    }


}
