<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="t"%>

<t:layout>
	<jsp:attribute name="title">Inscription</jsp:attribute>

	<jsp:body>
		<form method="POST" class="m-4">
		<div class="form-row">
		    <div class="form-group col-md-6">
		      <label for="inputNom">Nom *</label>
		      <input type="text" class="form-control" id="inputNom" name="nom" required="required">
		    </div>
		    <div class="form-group col-md-6">
		      <label for="inputPrenom">Prénom *</label>
		  	  <input type="text" class="form-control" id="inputPrenom"
						name="prenom" required="required">
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="inputMail">Adresse mail *</label>
		    <input type="email" class="form-control" id="inputMail"
					aria-describedby="emailHelp" placeholder="Entrer mail"
					name="mail" required="required">
		  </div>
		  <div class="form-group">
		    <label for="inputPassword">Mot de passe *</label>
		    <input type="password" class="form-control" id="inputPassword"
					name="mdp" required="required">
		  </div>
		  <div class="form-row">
		  <div class="form-group col-mb-6">
		    <label for="inputPassword">Date de naissance</label>
		    <input type="date" class="form-control" id="inputPassword"
					name="naissance">
		  </div>
		  <div class="form-group col-mb-6">
		    <label for="inputTel">Téléphone</label>
		    <input type="tel" class="form-control" id="inputTel"
					name="tel">
		  </div>
		  </div>
		  <div class="form-row">		  
      	   <div class="form-group col-md-8">
		    <label for="inputAddresse">Adresse *</label>
		    <input type="text" class="form-control" id="inputAddress"
						name="rue" required="required">
		  </div>
		   <div class="form-group col-md-4">
		    <label for="inputNumRue">Numéro Rue *</label>
		    <input type="text" class="form-control" id="inputNumRue"
						name="numRue" required="required">
		  </div>
		  </div>
		   <div class="form-group">
		    <label for="inputAddress2">Ligne 2</label>
		    <input type="text" class="form-control" id="inputAddress2"
					name="ligne2">
		  </div>
		  <div class="form-group">
		    <label for="inputAddress3">Ligne 3</label>
		    <input type="text" class="form-control" id="inputAddress3"
					name="ligne3">
		  </div> 	  
		  <div class="form-row">
		    <div class="form-group col-md-6">
		      <label for="inputCity">Ville *</label>
		      <input type="text" required="required" class="form-control" id="inputCity"
						name="ville">
		    </div>
		    <div class="form-group col-md-4">
		      <label for="inputState">Pays *</label>
		  	  <input type="text" required="required" class="form-control" id="inputCity"
						name="pays">
		    </div>
		    <div class="form-group col-md-2">
		      <label for="inputCPostal">Code postal *</label>
		      <input type="number" size="5" required="required" class="form-control"
						id="inputCPostal" name="codePostal">
		    </div>
		  </div>
		  <button type="submit" class="btn btn-primary">S'inscrire</button>
		</form>
	</jsp:body>
</t:layout>