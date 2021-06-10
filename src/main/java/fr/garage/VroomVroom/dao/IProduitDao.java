package fr.garage.VroomVroom.dao;

import fr.garage.VroomVroom.model.Produit;
import org.springframework.data.jpa.repository.JpaRepository;

public interface IProduitDao extends JpaRepository<Produit, Integer> {
}
