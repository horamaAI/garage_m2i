package fr.garage.VroomVroom.controller;

import fr.garage.VroomVroom.model.Adresse;
import fr.garage.VroomVroom.model.Client;
import fr.garage.VroomVroom.service.AdresseService;
import fr.garage.VroomVroom.service.ClientService;
import fr.garage.VroomVroom.session.ClientSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.time.LocalDate;

@Controller
public class LoginController {
    @Autowired
    ClientService clientService;

    @Autowired
    AdresseService adresseService;

    @Autowired
    ClientSession clientSession;

    @Autowired
    PasswordEncoder passwordEncoder;

    @GetMapping("/connexion")
    public String connexion() {
        return "login";
    }

    @GetMapping("/inscription")
    public String inscription() {
        return "inscription";
    }

    @PostMapping("/inscription")
    public String inscription(Client client, BindingResult result) {


        client.setMotDePasse(this.passwordEncoder.encode(client.getMotDePasse()));

        System.out.println(client.getDateNaissance());
        /*LocalDate localDate = new LocalDate();
        localDate.parse(client.getDateNaissance());
        client.setDateNaissance(localDate);*/

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

    @GetMapping("/deconnexion")
    public String deconnexion(HttpSession session) {
        session.removeAttribute("userMail");
        session.removeAttribute("userId");
        clientSession.setConnected(false);

        return "redirect:/";
    }
}
