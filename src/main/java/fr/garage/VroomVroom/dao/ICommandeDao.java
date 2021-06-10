package fr.garage.VroomVroom.dao;

import fr.garage.VroomVroom.model.Commande;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ICommandeDao extends JpaRepository<Commande, Integer> {
}
