package fr.garage.VroomVroom.controller;

import fr.garage.VroomVroom.model.Produit;
import fr.garage.VroomVroom.service.ClientService;
import fr.garage.VroomVroom.service.ProduitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping(value = "/mes-annonces")
public class ProduitController {
    @Autowired
    ProduitService produitService;

    @Autowired
    ClientService clientService;

    @GetMapping("/")
    public String mesAnnonces(Model model, HttpServletRequest request) {
        int id = (Integer) request.getSession().getAttribute("id");
        List<Produit> produits = produitService.findAllByClientId(id);

        model.addAttribute("produits" , produits);
        return "liste-annonce";
    }

}
