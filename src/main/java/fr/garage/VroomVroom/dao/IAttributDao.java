package fr.garage.VroomVroom.dao;

import fr.garage.VroomVroom.model.Attribut;
import org.springframework.data.jpa.repository.JpaRepository;

public interface IAttributDao extends JpaRepository<Attribut, Integer> {
}
