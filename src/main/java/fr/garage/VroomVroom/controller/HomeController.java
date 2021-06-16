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

    @GetMapping("/")
    public String annoncesTest(Model model, @RequestParam(required = false) Integer page) {
        int	recordsPerPage = 10;
        int	numberOfPages = (int) (Math.ceil(this.produitService.getNumberOfRecordsProduit() / recordsPerPage));

        if (page == null)
            page = 1;
        Page<Produit> produits = this.produitService.findAllWithPagination(page - 1, recordsPerPage);
        model.addAttribute("produits" , produits.getContent());
        model.addAttribute("numberOfPages" , numberOfPages);
        model.addAttribute("page", page);

        for (Produit produit : produits.getContent())
            System.out.println(produit.getId() + " " + produit.getLibelle());
        System.out.println(numberOfPages);
        System.out.println(page);
        return "accueil_test";
    }

}