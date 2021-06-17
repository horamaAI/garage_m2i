package fr.garage.VroomVroom.service;

import fr.garage.VroomVroom.dao.IAttributDao;
import fr.garage.VroomVroom.model.Attribut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AttributService {
    @Autowired
    IAttributDao dao;

    public List<Attribut> findAll() {
        return this.dao.findAll(Sort.by("produit").ascending());
    }

    public Attribut findById(int id) {
        return this.dao.findById(id).orElseThrow();
    }

    public Attribut add(Attribut attribut) {
        return this.dao.save(attribut);
    }
}
