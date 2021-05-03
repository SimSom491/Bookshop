package com.example.konyvesbolt.controller;


import com.example.konyvesbolt.dao.AjandekDAO;
import com.example.konyvesbolt.dao.KonyvDAO;
import com.example.konyvesbolt.dao.VasarloDAO;
import com.example.konyvesbolt.model.Ajandek;
import com.example.konyvesbolt.model.Vasarlo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Controller
public class VarsarloController {


    @Autowired
    VasarloDAO vasarloDAO;

    public static Map<String, String> messages = new HashMap<>();


    @GetMapping(value = "/login")
    public String login(Model model) {
        model.addAttribute("error_message",  messages.get("error_message"));
        model.addAttribute("success_message",  messages.get("succes_message"));
        return "login";
    }

    @PostMapping(value = "/login")
    public String login(@RequestParam("email") String email, @RequestParam("pw") String pw) {
            if(registered(email,pw)){
                return "redirect:/";
            } else {
                return "redirect:/login";
            }


        }

    private boolean registered(String email, String pw){
        List<Vasarlo> vasarlok = vasarloDAO.listaz();
        for (Vasarlo vasarlo : vasarlok) {
            if (vasarlo.getEmail().equals(email) && vasarlo.getJelszo().equals(pw)){
                messages.put("success_message", "Sikeres bejelentkezés!");
                return true;
            }
        }
        messages.put("error_message", "A felhasználónév vagy jelszó hibás");
        return false;
    }

    @GetMapping(value = "/register")
    public String register(Model model) {
        model.addAttribute("error_message",  messages.get("error_message"));
        model.addAttribute("success_message",  messages.get("succes_message"));
        return "login";
    }

    @PostMapping(value = "/register")
    public String register(@RequestParam("email") String email,
                           @RequestParam("pw") String pw,
                           @RequestParam("pw-again") String pwAgain,
                           @RequestParam("name") String name,
                           @RequestParam("tel") String tel,
                           @RequestParam("post-code") int postCode,
                           @RequestParam("street") String street,
                           @RequestParam("street-number") String streetNumber
                           ) {
        Pattern VALID_EMAIL_ADDRESS_REGEX = Pattern.compile("^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$", Pattern.CASE_INSENSITIVE);
        Matcher matcher = VALID_EMAIL_ADDRESS_REGEX.matcher(email);
        if(name.trim().equals("")){

        } else if(tel.trim().equals("")){

        }

        if (!matcher.find()){
            messages.put("emailFormat", "Rossz email formátum");
        }

        if(!pw.equals(pwAgain)){
            messages.put("verificationPW", "Nem egyezik meg a jelszó az ellenörző jelszóval");
        }



    return "";

    }
}
