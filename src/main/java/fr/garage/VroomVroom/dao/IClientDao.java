package fr.garage.VroomVroom.dao;

import fr.garage.VroomVroom.model.Client;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.Optional;

public interface IClientDao extends JpaRepository<Client, Integer> {
    public Optional<Client> findByAdresseMail(String email);
}
