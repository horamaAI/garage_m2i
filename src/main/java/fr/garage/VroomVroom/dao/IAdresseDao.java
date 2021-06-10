package fr.garage.VroomVroom.dao;

import fr.garage.VroomVroom.model.Adresse;
import org.springframework.data.jpa.repository.JpaRepository;

public interface IAdresseDao extends JpaRepository<Adresse, Integer> {
}
