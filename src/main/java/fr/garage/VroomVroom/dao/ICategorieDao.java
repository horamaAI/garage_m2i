package fr.garage.VroomVroom.dao;

import fr.garage.VroomVroom.model.Categorie;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ICategorieDao extends JpaRepository<Categorie, Integer> {
}
