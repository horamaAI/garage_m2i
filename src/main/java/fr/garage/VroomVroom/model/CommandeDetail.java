package fr.garage.VroomVroom.model;

import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "commande_detail")
public class CommandeDetail {
	
	@EmbeddedId
	private CommandeDetailId id;
	
	@Column(name = "CMDE_QUANTITE", nullable = false)
	private int qtite;
	
	@Column(name = "CMDE_PRIX_UNITAIRE", precision = 10, scale = 2, nullable = false)
	private BigDecimal prixUnit;


	public int getQtite() {
		return qtite;
	}

	public void setQtite(int qtite) {
		this.qtite = qtite;
	}

	public BigDecimal getPrixUnit() {
		return prixUnit;
	}

	public void setPrixUnit(BigDecimal prixUnit) {
		this.prixUnit = prixUnit;
	}
}