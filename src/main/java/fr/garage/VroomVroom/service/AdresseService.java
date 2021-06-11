package fr.garage.VroomVroom.service;

import fr.garage.VroomVroom.dao.IAdresseDao;
import fr.garage.VroomVroom.model.Adresse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdresseService {
    @Autowired
    IAdresseDao dao;

    public List<Adresse> findAll() {
        return this.dao.findAll();
    }

    public Adresse findById(int id) {
        return this.dao.findById(id).orElseThrow();
    }

    public Adresse add(Adresse adresse) {
        return this.dao.save(adresse);
    }
}
