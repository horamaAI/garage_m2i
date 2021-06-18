package fr.garage.VroomVroom.controller;

import fr.garage.VroomVroom.model.Produit;
import fr.garage.VroomVroom.service.ProduitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class HomeController {

    @Autowired
    ProduitService produitService;

    @GetMapping("/ancien_accueil")
    public String home(Model model) {
        Page<Produit>   pageProduits = this.produitService.findAll();
        List<Produit>   produits = pageProduits.getContent();

        model.addAttribute("produits" , produits);
        model.addAttribute("numberOfPages" , 1);
        model.addAttribute("page", 1);

        return "accueil";
    }

    @GetMapping("/produit")
    public String produit(@RequestParam int id, Model model) {
        model.addAttribute("produit", this.produitService.findById(id));

        return "produit";
    }

    @GetMapping("/accueil")
    public String annoncesTest(Model model, @RequestParam(required = false) Integer page) {
        int	recordsPerPage = 16;
        int numberOfRecordsProduits = this.produitService.getNumberOfRecordsProduit();
        int	numberOfPages = (int) (Math.ceil(1.0 * numberOfRecordsProduits / recordsPerPage));

        if (page == null)
            page = 1;

        Page<Produit>   pageProduits = this.produitService.findAllWithPagination(page - 1, recordsPerPage);
        List<Produit>   produits = pageProduits.getContent();

//        System.out.println("Page " + page);
//        System.out.println("numberOfRecordsProduits " + numberOfRecordsProduits);
//        System.out.println("recordsPerPage " + recordsPerPage);
//        System.out.println("numberOfPages " + numberOfPages);

        model.addAttribute("produits" , produits);
        model.addAttribute("numberOfPages" , numberOfPages);
        model.addAttribute("page", page);

        return "accueil_test";
    }

}