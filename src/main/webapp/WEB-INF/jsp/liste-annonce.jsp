<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="t"%>

<t:layout>
	<jsp:body>	
		<a href="mesannonces/creer" class="btn btn-primary mb-3">Creer une annonce</a>
		<div class="row">
		<c:forEach var="produit" items="${ produits }">
			<div class="card col-mb-3 mr-2" style="width: 18rem;">
			  <img class="card-img-top" src="${ produit.imageURL }" alt="Card image cap">
			  <div class="card-body">
			    <h5 class="card-title">${ produit.libelle }</h5>
			    <p class="card-text">${ produit.description }</p>
			  </div>
			  <ul class="list-group list-group-flush">
			    <li class="list-group-item">${ produit.categorie.libelle }</li>
			    <li class="list-group-item">${ produit.client.nom }</li>
			    <li class="list-group-item">${ produit.prix } euros</li>
			  </ul>
			  <div class="card-body">
			    <a href="mesannonces/modifier?id=${produit.id}" class="card-link">Modifier</a>
			    <a href="mesannonces/supprimer?id=${produit.id}" class="card-link">Supprimer</a>
			  </div>
			</div>
		</c:forEach>
	</jsp:body>
</t:layout>