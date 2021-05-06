package com.example.konyvesbolt.controller;


import com.example.konyvesbolt.dao.KonyvDAO;
import com.example.konyvesbolt.dao.MultimediaDAO;
import com.example.konyvesbolt.dao.VasarlasDAO;
import com.example.konyvesbolt.model.Konyv;
import com.example.konyvesbolt.model.Multimedia;
import com.example.konyvesbolt.model.Vasarlas;
import com.example.konyvesbolt.model.Vasarlo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.sql.Date;
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

    public static Map<Konyv, Integer> konyvKosar = new TreeMap<>();
    public static Map<Multimedia, Integer> multiKosar = new TreeMap<>();


    @GetMapping(value = "/kosar")
    public String kosar(Model model, HttpSession httpSession) {
        Vasarlo vasarlo = (Vasarlo) httpSession.getAttribute("logged_in_user");
        model.addAttribute("konyvKosar", konyvKosar);
        model.addAttribute("multiKosar", multiKosar);
        model.addAttribute("sum", sum());
        for (Konyv konyv : konyvKosar.keySet()) {
            System.out.println(konyv.toString());
        }
        if (vasarlo != null) {
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
            Vasarlas vasarlas = new Vasarlas();
            vasarlas.setSzamlaigenyes(szamla == null);
            vasarlas.setAtvetel(szallitas);
            vasarlas.setMikor(Date.valueOf(LocalDate.now()));

            //TODO tartozikDao ba a kosár tartalmának felvitele foreacheh nem iterrel

            vasarlasDAO.beszur(vasarlas);

            return "redirect:/kosar";
        }
        return "redirect:/login";
    }


}
