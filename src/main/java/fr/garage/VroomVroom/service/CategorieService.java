package fr.garage.VroomVroom.service;

import fr.garage.VroomVroom.dao.ICategorieDao;
import fr.garage.VroomVroom.model.Categorie;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategorieService {
    @Autowired
    ICategorieDao dao;

    public List<Categorie> findAll() {
        return this.dao.findAll();
    }
}
