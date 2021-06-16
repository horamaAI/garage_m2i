<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="t"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>

<t:layout>
	<jsp:attribute name="title">
		<c:if test="${ produit == null }">Créer une annonce</c:if>
		<c:if test="${ produit != null }">Modifier une annonce</c:if>
	</jsp:attribute>

	<jsp:body>
		<form:form method="POST" modelAttribute="produit">
			<div class="form-row">
				<div class="form-group col-8">
			    	<label for="libelle">Libellé</label>
			    	<input type="text" class="form-control" id="libelle"
						name="libelle" value="${ produit.libelle }">
			  	</div>
			  	<div class="form-group col-4">
			    	<label for="prix">Prix</label>
			    	
			    	<div class="input-group">
				    	<input type="number" class="form-control" min="0" id="prix"
							name="prix" value="${ produit.prix }">
				    	<div class="input-group-append">
					    	<span class="input-group-text">€</span>
					  	</div>
					</div>
			  	</div>
			</div>
			
		  	<div class="form-group">
		    	<label>URL Image</label>
		    	<input type="text" class="form-control" name="imageURL"
					value="${ produit.imageURL }">
		  	</div>
		  	<div class="form-group">
		    	<label>Description</label>
			  <textarea class="form-control" name="description" rows="5">${ produit.description }</textarea>
			</div>
		  	<div class="form-group">
		    	<label>Catégorie</label>
				<select class="custom-select" name="categorie.id">
					<c:forEach var="categorie" items="${ categories }">
						<c:if test="${ produit.categorie.id == categorie.id }">
							<option selected value="${ categorie.id }">${ categorie.libelle }</option>
						</c:if>
						
						<c:if test="${ produit.categorie.id != categorie.id }">
							<option value="${ categorie.id }">${ categorie.libelle }</option>
						</c:if>
					</c:forEach>
				</select>
		  	</div>
		  	<button type="submit" class="btn btn-primary">
		  	  	<c:if test="${ produit == null }">Ajouter</c:if>
		  		<c:if test="${ produit != null }">Modifier</c:if>	
		  	</button>
		  	
		</form:form>
	</jsp:body>
</t:layout>