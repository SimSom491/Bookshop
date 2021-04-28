package com.example.konyvesbolt.controller;

import com.example.konyvesbolt.dao.BoltDAO;
import com.example.konyvesbolt.model.Bolt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class BoltController {
    @Autowired
    BoltDAO boltDAO;

    @GetMapping(value = "/bolt")
    public String boltotListaz(Model model) {
        model.addAttribute("boltok", boltDAO.listaz());
        return "rendelesinfo";
    }
    @GetMapping(value = "/addbolt")
    public String addboltget(){
        return "bolthozzaad";
    }
    @PostMapping(value = "/addbolt")
    public String addBolt(
            @RequestParam("nev") String nev,
            @RequestParam("elhelyezkedes") String elhelyezkedes,
            @RequestParam("nyitvatartas") String nyitvatartas
    ){
        Bolt bolt = new Bolt(nev,elhelyezkedes,nyitvatartas);
        boltDAO.beszur(bolt);
        return "redirect:/addbolt";
    }
}
