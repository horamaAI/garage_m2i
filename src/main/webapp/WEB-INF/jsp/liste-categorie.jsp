<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="t" %>

<t:layout>
	<jsp:attribute name="title">Liste des cat�gories</jsp:attribute>
	
	<jsp:body>
		<c:if test="${ param.categorieAjout == true }">
			<div class="alert alert-success" role="alert">
				La cat�gorie a bien �t� ajout�e !
			</div>
		</c:if>
		
		<c:if test="${ param.categorieModifie == true }">
			<div class="alert alert-success" role="alert">
				La cat�gorie a bien �t� modifi�e !
			</div>
		</c:if>
		
		<c:if test="${ param.categorieSupprime== true }">
			<div class="alert alert-success" role="alert">
				La cat�gorie a bien �t� supprim�e !
			</div>
		</c:if>
		
		<a href="ajouter-categories" class="btn btn-success">Ajouter une cat�gorie</a>
		
		<table class="table table-striped">
			<thead>
				<tr>
					<th>ID</th>
					<th>Nom</th>
					<th>Description</th>
					<th>Parent</th>
					<th></th>
				</tr>
			</thead>
			
			<tbody>
				<c:forEach var="categorie" items="${ categories }">
					<tr>
						<td>${ categorie.id }</td>
						<td>${ categorie.libelle }</td>
						<td>${ categorie.description }</td>
						<td>${ categorie.parent.libelle }</td>
						<td>
							<a href="modifier-categories?id=${ categorie.id }" class="btn btn-warning">Modifier</a>
							<a href="supprimer-categories?id=${ categorie.id }" class="btn btn-danger">Supprimer</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</jsp:body>
</t:layout>