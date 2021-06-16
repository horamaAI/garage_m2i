package fr.garage.VroomVroom.model;

import java.time.LocalDate;
import java.util.Date;
import java.util.List;

import javax.persistence.*;
import javax.validation.constraints.Email;

@Entity
@Table(name="client")
public class Client {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "CLI_ID")
	private int id;
	
	@Column(name = "CLI_NOM", length = 50, nullable = false)
	private String nom;
	
	@Column(name = "CLI_PRENOM" , length = 50, nullable = false)
	private String prenom;
	
	@Column(name = "CLI_ADRESSE_MAIL" , length = 150, nullable = false)
	@Email
	private String adresseMail;
	
	@Column(name = "CLI_TELEPHONE" , length = 20)
	private String tel;
	
	@Column(name = "CLI_MOT_PASSE" , length = 300, nullable = false)
	private String motDePasse;
	
	@Column(name = "CLI_DATE_NAISSANCE")
	private LocalDate dateNaissance;
	
	@OneToOne
	@JoinColumn(name= "CLI_ADRESSE_ID")
	private Adresse adresse;

	@OneToMany(mappedBy = "client")
	private List<Produit> produits;

	@ManyToOne
	@JoinColumn(name = "CLI_ROLE_ID")
	private Role role;

	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getAdresseMail() {
		return adresseMail;
	}

	public void setAdresseMail(String adresseMail) {
		this.adresseMail = adresseMail;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getMotDePasse() {
		return motDePasse;
	}

	public void setMotDePasse(String motPasse) {
		this.motDePasse = motPasse;
	}

	public LocalDate getDateNaissance() {
		return dateNaissance;
	}

	public void setDateNaissance(LocalDate dateNaissance) {
		this.dateNaissance = dateNaissance;
	}

	public Adresse getAdresse() {
		return adresse;
	}

	public void setAdresse(Adresse adresse) {
		this.adresse = adresse;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public List<Produit> getProduits() {
		return produits;
	}

	public void setProduits(List<Produit> produits) {
		this.produits = produits;
	}

}
