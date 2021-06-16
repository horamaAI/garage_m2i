<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="t" %>


<t:layout>
    <jsp:attribute name="title">Accueil</jsp:attribute>

    <jsp:body>
        <div class="cards-list">
            <c:forEach var="produit" items="${ produits }">
                <div class="card">
                    <div class="card-img-container">
                        <img class="card-img-top"
                             src="${ produit.imageURL }" alt="Card image cap">
                        <span class="card-price">${produit.prix} euros</span>
                    </div>


                    <div class="card-body">
                        <div class="card-header">
                            <h5 class="card-title">${ produit.libelle }</h5>
                            <p class="card-text">${ produit.description }</p>
                        </div>
                        <ul class="list-group">
                            <li class="list-group-item">${ produit.categorie.libelle }</li>
                            <li class="list-group-item">${ produit.client.nom} ${produit.client.prenom}</li>
                        </ul>
                        <div class="card-btn">
                            <a href="produit?id=${produit.getId()}" class="card-link">Voir plus</a>
                        </div>
                    </div>

                </div>
            </c:forEach>
        </div>

    </jsp:body>
</t:layout>