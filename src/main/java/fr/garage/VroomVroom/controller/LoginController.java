package fr.garage.VroomVroom.controller;

import fr.garage.VroomVroom.model.Adresse;
import fr.garage.VroomVroom.model.Client;
import fr.garage.VroomVroom.service.AdresseService;
import fr.garage.VroomVroom.service.ClientService;
import fr.garage.VroomVroom.session.ClientSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class LoginController {
    @Autowired
    ClientService clientService;

    @Autowired
    AdresseService adresseService;

    @Autowired
    ClientSession clientSession;

    @RequestMapping(value = "/connexion", method = RequestMethod.GET)
    public String connexion() {
        return "login";
    }

    @RequestMapping(value = "/connexion", method = RequestMethod.POST)
    public String connexion(Client client, BindingResult result, HttpSession session) {
        if (result.hasErrors()) {
            return "login";
        }

        System.out.println(client.getAdresseMail() + " " + client.getMotDePasse());

        for (Client c : clientService.findAll()) {
            if (c.getAdresseMail().equals(client.getAdresseMail()) && c.getMotDePasse().equals(client.getMotDePasse())) {
                session.setAttribute("userMail", client.getAdresseMail());
                session.setAttribute("userId", c.getId());
                this.clientSession.setConnected(true);
                this.clientSession.setId(c.getId());
                this.clientSession.setMail(client.getAdresseMail());
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
        System.out.println(client.getNom());
        System.out.println(client.getPrenom());
        System.out.println(client.getAdresseMail());
        System.out.println(client.getMotDePasse());
        System.out.println(client.getDateNaissance());
        System.out.println(client.getAdresse().getRue());

        if (result.hasErrors()) {
            return "inscription";
        }

        Adresse adresse = new Adresse();
        adresse.setNumRue(client.getAdresse().getNumRue());
        adresse.setRue(client.getAdresse().getRue());
        adresse.setLigne2(client.getAdresse().getLigne2());
        adresse.setLigne3(client.getAdresse().getLigne3());
        adresse.setCodePostal(client.getAdresse().getCodePostal());
        adresse.setVille(client.getAdresse().getVille());
        adresse.setPays(client.getAdresse().getPays());

        client.setAdresse(adresseService.add(adresse));
        clientService.add(client);

        return "redirect:connexion";
    }

    @RequestMapping(value = "/deconnexion", method = RequestMethod.GET)
    public String deconnexion(HttpSession session) {
        session.removeAttribute("userMail");
        session.removeAttribute("userId");
        clientSession.setConnected(false);

        return "redirect:/";
    }
}
