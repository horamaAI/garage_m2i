package fr.garage.VroomVroom.controller;

import fr.garage.VroomVroom.model.Client;
import fr.garage.VroomVroom.model.Produit;
import fr.garage.VroomVroom.security.ClientPrincipal;
import fr.garage.VroomVroom.service.CategorieService;
import fr.garage.VroomVroom.service.ClientService;
import fr.garage.VroomVroom.service.ProduitService;
import fr.garage.VroomVroom.session.ClientSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping(value = "/mes-annonces")
public class ProduitController {
    @Autowired
    ClientSession clientSession;

    @Autowired
    ProduitService produitService;

    @Autowired
    ClientService clientService;

    @Autowired
    CategorieService categorieService;

    @GetMapping("")
    public String mesAnnonces(Model model, @AuthenticationPrincipal ClientPrincipal clientPrincipal) {
        System.out.println(clientPrincipal.getUsername());
        List<Produit> produits = produitService.findAllByClientName(clientPrincipal.getUsername());

        model.addAttribute("produits" , produits);

        return "liste-annonce";
    }

    @GetMapping("/ajouter")
    public String ajouterAnnonce(Model model) {
        model.addAttribute("categories", categorieService.findAll());

        System.out.println(clientSession.getId());
        return "form-annonce";
    }

    @PostMapping("/ajouter")
    public String ajouterAnnonce(Produit produit, BindingResult result, @AuthenticationPrincipal ClientPrincipal clientPrincipal) {
        if (result.hasErrors()) {
            return "form-annonce";
        }

        Client client = new Client();
        client.setId(clientPrincipal.getId());
        produit.setClient(client);
        produitService.add(produit);

        return "redirect:../mes-annonces";
    }

    @GetMapping("/modifier")
    public String modifierAnnonce(@RequestParam int id, Model model) {
        model.addAttribute("produit", produitService.findById(id));
        model.addAttribute("categories", categorieService.findAll());
        return "form-annonce";
    }

    @PostMapping("/modifier")
    public String modifierAnnonce(Produit produit, BindingResult result, @AuthenticationPrincipal ClientPrincipal clientPrincipal) {
        if (result.hasErrors()) {
            return "form-annonce";
        }
        Client client = new Client();
        client.setId(clientPrincipal.getId());
        produit.setClient(client);
        produitService.update(produit);

        return "redirect:../mes-annonces";
    }

    @GetMapping("/supprimer")
    public String supprimerAnnonce(@RequestParam int id) {
        produitService.delete(id);

        return "redirect:../mes-annonces";
    }
}
