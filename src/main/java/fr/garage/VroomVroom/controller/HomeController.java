package fr.garage.VroomVroom.controller;

import fr.garage.VroomVroom.model.Produit;
import fr.garage.VroomVroom.service.ProduitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class HomeController {

    @Autowired
    ProduitService produitService;

    @GetMapping("/accueil")
    public String home(Model model) {
        List<Produit> produits = this.produitService.findAll();

        model.addAttribute("produits" , produits);

        return "accueil";
    }

    @GetMapping("/produit")
    public String produit(@RequestParam int id, Model model) {
        model.addAttribute("produit", this.produitService.findById(id));

        return "produit";
    }
}