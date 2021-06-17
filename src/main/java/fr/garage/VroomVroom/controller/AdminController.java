package fr.garage.VroomVroom.controller;

import fr.garage.VroomVroom.model.Attribut;
import fr.garage.VroomVroom.service.*;
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

    @Autowired
    AdresseService adresseService;

    @Autowired
    AttributService attributService;

    @Autowired
    CategorieService categorieService;

    @Autowired
    ProduitService produitService;


    @GetMapping("/client")
    public String ListClientAdmin(Model model) {
        model.addAttribute("clients", this.clientService.findAll());

        return "admin/liste-client";
    }

    @GetMapping("/adresse")
    public String ListAdresseAdmin(Model model) {
        model.addAttribute("adresses", this.adresseService.findAll());

        return "admin/liste-adresse";
    }

    @GetMapping("/attribut")
    public String ListAttributAdmin(Model model) {
        model.addAttribute("attributs", this.attributService.findAll());

        return "admin/liste-attribut";
    }

    @GetMapping("/categorie")
    public String ListCategorieAdmin(Model model) {
        model.addAttribute("categories", this.categorieService.findAll());

        return "admin/liste-categorie";
    }

    @GetMapping("/produit")
    public String ListProduitAdmin(Model model) {
        model.addAttribute("produits", this.produitService.findAll());

        return "admin/liste-produit";
    }
}
