package fr.garage.VroomVroom.dao;

import fr.garage.VroomVroom.model.CommandeDetail;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ICommandeDetail extends JpaRepository<CommandeDetail, Integer> {
}
