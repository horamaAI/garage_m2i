package fr.garage.VroomVroom.controller;

import fr.garage.VroomVroom.service.ClientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@PreAuthorize("hasRole('ADMIN')")
@RequestMapping(value = "/admin")
public class AdminController {
    @Autowired
    ClientService clientService;


    @GetMapping("/client")
    public String HomeAdmin(Model model) {
        model.addAttribute("clients", this.clientService.findAll());

        return "admin/liste-client";
    }

}
