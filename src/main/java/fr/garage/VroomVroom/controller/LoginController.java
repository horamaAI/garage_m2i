package fr.garage.VroomVroom.controller;

import fr.garage.VroomVroom.model.Client;
import fr.garage.VroomVroom.service.ClientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller
public class LoginController {
    @Autowired
    ClientService clientService;

    @RequestMapping(value = "/connexion", method = RequestMethod.GET)
    public String connexion() {
        return "login";
    }

    @RequestMapping(value = "/connexion", method = RequestMethod.POST)
    public String connexion(Client client, BindingResult result, HttpServletRequest request) {
        if (result.hasErrors()) {
            return "login";
        }

        System.out.println(client.getAdresseMail() + " " + client.getMotDePasse());

        for (Client c : clientService.findAll()) {
            if (c.getAdresseMail().equals(client.getAdresseMail()) && c.getMotDePasse().equals(client.getMotDePasse())) {
                request.getSession().setAttribute("user", client.getAdresseMail());
                request.getSession().setAttribute("id", client.getId());
                return "redirect:";
            }
        }

        return "login";
    }

    @RequestMapping(value = "/inscription", method = RequestMethod.GET)
    public String inscription() {
        return "inscription";
    }

    @RequestMapping(value = "/inscription", method = RequestMethod.POST)
    public String inscription(Client client, BindingResult result) {
        if (result.hasErrors()) {
            return "inscription";
        }

        clientService.add(client);

        return "redirect:connexion";
    }
}
