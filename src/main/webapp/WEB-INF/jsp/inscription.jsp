<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="t" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<t:layout>
    <jsp:attribute name="title">Inscription</jsp:attribute>

    <jsp:body>
        <form:form method="POST" class="m-4" modelAttribute="client">
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
                <input type="text" class="form-control" id="inputMail"
                       aria-describedby="emailHelp" placeholder="Entrer mail"
                       name="adresseMail" required="required">
            </div>
            <div class="form-group">
                <label for="inputPassword">Mot de passe *</label>
                <input type="password" class="form-control" id="inputPassword"
                       name="motDePasse" required="required">
            </div>
            <div class="form-row">
                <div class="form-group col-mb-6">
                    <label>Date de naissance</label>
                    <input type="date" class="form-control"
                           name="dateNaissance">
                </div>
                <div class="form-group col-mb-6">
                    <label for="inputTel">Téléphone</label>
                    <input type="text" class="form-control" id="inputTel"
                           name="tel">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-8">
                    <label for="inputAddresse">Adresse *</label>
                    <input type="text" class="form-control" id="inputAddresse"
                           name="adresse.rue" required="required">
                </div>
                <div class="form-group col-md-4">
                    <label for="inputNumRue">Numéro Rue *</label>
                    <input type="text" class="form-control" id="inputNumRue"
                           name="adresse.numRue" required="required">
                </div>
            </div>
            <div class="form-group">
                <label for="inputAddress2">Ligne 2</label>
                <input type="text" class="form-control" id="inputAddress2"
                       name="adresse.ligne2">
            </div>
            <div class="form-group">
                <label for="inputAddress3">Ligne 3</label>
                <input type="text" class="form-control" id="inputAddress3"
                       name="adresse.ligne3">
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputCity">Ville *</label>
                    <input type="text" required="required" class="form-control" id="inputCity"
                           name="adresse.ville">
                </div>
                <div class="form-group col-md-4">
                    <label for="inputState">Pays *</label>
                    <input type="text" required="required" class="form-control" id="inputState"
                           name="adresse.pays">
                </div>
                <div class="form-group col-md-2">
                    <label for="inputCPostal">Code postal *</label>
                    <input type="number" size="5" required="required" class="form-control"
                           id="inputCPostal" name="adresse.codePostal">
                </div>
            </div>
            <button type="submit" class="btn btn-primary">S'inscrire</button>
        </form:form>
    </jsp:body>
</t:layout>