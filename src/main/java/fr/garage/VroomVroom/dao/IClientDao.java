package fr.garage.VroomVroom.dao;

import fr.garage.VroomVroom.model.Client;
import org.springframework.data.jpa.repository.JpaRepository;

public interface IClientDao extends JpaRepository<Client, Integer> {
}
