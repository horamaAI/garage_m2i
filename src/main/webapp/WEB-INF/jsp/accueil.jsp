<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="t"%>


<t:layout>
	<jsp:attribute name="title">Accueil</jsp:attribute>

	<jsp:body>		
		<div class="row">
				<c:forEach var="produit" items="${ produits }">
					<div class="card col-3">
					  <img class="card-img-top"
						src="${ produit.imageURL }" alt="Card image cap">
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
					    <a class="card-link">Acheter</a>
					  </div>
					</div>			
				</c:forEach>
		</div>
		
	</jsp:body>
</t:layout>