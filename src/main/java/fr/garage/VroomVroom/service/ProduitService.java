package fr.garage.VroomVroom.service;

import fr.garage.VroomVroom.dao.IProduitDao;
import fr.garage.VroomVroom.model.Produit;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProduitService {
    @Autowired
    IProduitDao dao;

//    public List<Produit> findAll() {
//        return this.dao.findAll();
//    }
    public int getNumberOfRecordsProduit() {
        return (this.dao.getNumberOfRecordsProduit());
    }

    public Page<Produit> findAll() {
        return this.dao.findAll(PageRequest.of(0, this.dao.getNumberOfRecordsProduit()));
    }

    public Page<Produit> findAllWithPagination(int start, int size) {
        return this.dao.findAll(PageRequest.of(start, size));
    }

    public List<Produit> findAllByClientName(String username) {
        return this.dao.findAllByClientName(username);
    }

    public Produit findById(int id) {
        return this.dao.findById(id).orElseThrow();
    }

    public Produit add(Produit produit) {
        return this.dao.save(produit);
    }

    public Produit update(Produit produit) { return this.dao.save(produit);}

    public void delete(int id) {
        this.dao.deleteById(id);
    }
}
