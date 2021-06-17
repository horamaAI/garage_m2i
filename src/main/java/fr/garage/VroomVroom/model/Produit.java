package fr.garage.VroomVroom.model;

import java.math.BigDecimal;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name = "produit")
public class Produit {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "PRO_ID")
    private int id;

    @Column(name = "PRO_LIBELLE", length = 50, nullable = false)
    @NotBlank
    @Size(max = 50)
    private String libelle;

    @Column(name = "PRO_PRIX", precision = 10, scale = 2, nullable = false)
    @NotNull
    private BigDecimal prix;

    @Column(name = "PRO_IMAGE", length = 255)
    @Size(max = 255)
    private String imageURL;

    @Column(name = "PRO_DESCRIPTION")
    @Lob
    private String description;

    @ManyToOne
    @JoinColumn(name = "PRO_CLIENT_ID")
    private Client client;

    @ManyToOne
    @JoinColumn(name = "PRO_CATEGORIE_ID")
    private Categorie categorie;

    @OneToMany(mappedBy = "id.produit")
    private List<CommandeDetail> details;

    @OneToMany(mappedBy = "produit")
    private List<Attribut> attributs;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLibelle() {
        return libelle;
    }

    public void setLibelle(String libelle) {
        this.libelle = libelle;
    }

    public BigDecimal getPrix() {
        return prix;
    }

    public void setPrix(BigDecimal prix) {
        this.prix = prix;
    }

    public String getImageURL() {
        return imageURL;
    }

    public void setImageURL(String imageURL) {
        this.imageURL = imageURL;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Client getClient() {
        return client;
    }

    public void setClient(Client client) {
        this.client = client;
    }

    public Categorie getCategorie() {
        return categorie;
    }

    public void setCategorie(Categorie categorie) {
        this.categorie = categorie;
    }

    public List<CommandeDetail> getDetails() {
        return details;
    }

    public void setDetails(List<CommandeDetail> details) {
        this.details = details;
    }
    
    public List<Attribut> getAttributs() {
        return attributs;
    }

    public void setAttributs(List<Attribut> attributs) {
        this.attributs = attributs;
    }
}