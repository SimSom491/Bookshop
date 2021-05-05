package com.example.konyvesbolt.controller;


import com.example.konyvesbolt.dao.VasarloDAO;
import com.example.konyvesbolt.model.Vasarlo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Controller
public class VarsarloController {


    @Autowired
    VasarloDAO vasarloDAO;

    public static Map<String, String> logMessages = new HashMap<>();
    public static Map<String, String> regMessages = new HashMap<>();
    public static Map<String, String> profilMessages = new HashMap<>();


    @GetMapping(value = "/login")
    public String login(Model model) {
        model.addAttribute("error_message",  logMessages.get("error_message"));
        model.addAttribute("success_message",  logMessages.get("succes_message"));
        logMessages.clear();
        return "login";
    }


    @PostMapping(value = "/login")
    public String login(@RequestParam("email") String email, @RequestParam("pw") String pw, HttpSession session) {

        Vasarlo vasarlo = registered(email,pw);


        if( vasarlo != null) {
            session.setAttribute("logged_in_user", vasarlo);
                return "redirect:/";
            } else {
                return "redirect:/login";
            }


        }

    @GetMapping(value = "/profil")
    public String profil(Model model, HttpSession httpSession) {
        Vasarlo vasarlo = (Vasarlo) httpSession.getAttribute("logged_in_user");
        if (vasarlo != null) {
            System.out.println(vasarlo);
            model.addAttribute("currentVasarlo",vasarloDAO.keres(vasarlo.getEmail()));
            return "profil";
        } else {
            profilMessages.put("error_message", "A profil megtekintéshez be kell jelentkezni!");
            return "redirect:/login";
        }
    }
    @GetMapping(value = "/logout")
    public String logout(Model model, HttpSession httpSession) {
        Vasarlo vasarlo = (Vasarlo) httpSession.getAttribute("logged_in_user");
        if (vasarlo != null) {
            httpSession.setAttribute("logged_in_user", null);
            return "redirect:/";
        } else {
            profilMessages.put("error_message", "A kijelentkezéshez be kell jelentkezni!");
            return "redirect:/";
        }
    }



    private Vasarlo registered(String email, String pw){
        List<Vasarlo> vasarlok = vasarloDAO.listaz();
        for (Vasarlo vasarlo : vasarlok) {
            if (vasarlo.getEmail().equals(email) && vasarlo.getJelszo().equals(pw)){
                logMessages.put("success_message", "Sikeres bejelentkezés!");
                return vasarlo;
            }
        }
        logMessages.put("error_message", "A felhasználónév vagy jelszó hibás");
        return null;
    }


    @GetMapping(value = "/register")
    public String register(Model model) {
        for (Map.Entry<String, String> entry : regMessages.entrySet()) {
            System.out.println(entry.getKey());
            System.out.println(entry.getValue());
        }
        model.addAttribute("error_messages",  regMessages);
        model.addAttribute("success_message",  regMessages.get("succes_message"));

        return "reg";
    }

    @PostMapping(value = "/register")
    public String register(@RequestParam( value = "email",   required = false) String email,
                           @RequestParam(value = "pw",       required = false) String pw,
                           @RequestParam(value = "pw-again",required = false) String pwAgain,
                           @RequestParam(value = "name", required = false ) String name,
                           @RequestParam(value = "date", required = false ) String date,
                           @RequestParam(value = "tel", required = false) String tel,
                           @RequestParam(value = "post-code" ,required = false) int postCode,
                           @RequestParam(value = "street"    ,required = false) String street,
                           @RequestParam(value = "street-number", required = false) int streetNumber
                           ) {
        regMessages.clear();
        if(email  == null  || email.trim().equals("") ){
            regMessages.put("user_empty", "Meg kell adni az emailt!");
        } else if( pw == null || pw.trim().equals("")){
            regMessages.put("pw_empty", "Meg kell adni a jelszot!");
        } else if (tel == null || tel.trim().equals("")){
            regMessages.put("tel_empty", "Meg kell adni a telefonszámot!");
        } else if (name == null || name.trim().equals("")){
            regMessages.put("tel_empty", "Meg kell adni a telefonszámot!");
        } else if (postCode == 0){
            regMessages.put("post_empty", "Meg kell adni a irányítószámot!");
        } else if(street == null || street.equals("")){
            regMessages.put("street_empty", "Meg kell adni az utcát!");
        } else if(streetNumber == 0){
            regMessages.put("street_empty", "Meg kell adni a házszámot!");
        } else if(date == null || date.equals("")){
            regMessages.put("date", "Meg kell adni a születésidátumot!");
        }
        if(regMessages.size() > 0){
            return "redirect:/register";
        }
        Pattern VALID_EMAIL_ADDRESS_REGEX = Pattern.compile("^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$", Pattern.CASE_INSENSITIVE);
        assert email != null;
        Matcher matcher = VALID_EMAIL_ADDRESS_REGEX.matcher(email);
        if (!matcher.find()){
            System.out.println("asd");
            regMessages.put("emailFormat", "Rossz email formátum");
        }
        assert pw != null;
        if(!pw.equals(pwAgain)){

            regMessages.put("verificationPW", "Nem egyezik meg a jelszó az ellenörző jelszóval");
        }
        List<Vasarlo> vasarlok = vasarloDAO.listaz();
        for (Vasarlo vasarlo : vasarlok) {
            if (vasarlo.getEmail().equals(email)){
                regMessages.put("userName", "Felhasználónév foglalt");
            }
        }

        Date dateObj = Date.valueOf(date);
        if (regMessages.size() == 0){
            regMessages.put("succes", "Sikeres regisztráció");


            vasarloDAO.beszur(new Vasarlo(email,pw,name,dateObj,  false,false, postCode,street,streetNumber));

            return "redirect:/";
        } else {
            return "redirect:/register";
        }
    }







}



