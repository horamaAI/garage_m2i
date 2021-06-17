package fr.garage.VroomVroom.dao;

import fr.garage.VroomVroom.model.Client;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;

public interface IClientDao extends JpaRepository<Client, Integer> {
    public Optional<Client> findByAdresseMail(String email);

    @Query("select c from Client c where c.id = :id")
    public List<Client> findAllById(@Param("id") int id);

    @Query("select c from Client c where c.adresseMail = :adresseMail")
    public List<Client> findAllByMail(@Param("adresseMail") String adresseMail);

    @Query("select count(c.id) from Client c")
    public int getNumberOfRecordsClient();
}
