package fr.garage.VroomVroom.service;

import fr.garage.VroomVroom.dao.IProduitDao;
import fr.garage.VroomVroom.model.Produit;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProduitService {
    @Autowired
    IProduitDao dao;

    public List<Produit> findAll() {
        return this.dao.findAll();
    }

    public List<Produit> findAllByClientId(int id) {
        return this.dao.findAllByClientId(id);
    }

    public Produit findById(int id) {
        return this.dao.findById(id).orElseThrow();
    }

    public Produit add(Produit produit) {
        return this.dao.save(produit);
    }

    public void delete(int id) {
        this.dao.deleteById(id);
    }
}
