package fr.garage.VroomVroom.dao;

import fr.garage.VroomVroom.model.Produit;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface IProduitDao extends JpaRepository<Produit, Integer> {

    @Query("select p from Produit p where p.client.id = :id")
    public List<Produit> findAllByClientId(@Param("id") int id);
}
