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
        <nav aria-label="Page navigation example">
            <ul class="pagination justify-content-center">
                <c:if test="${page == 1}">
                    <li class="page-item">&laquo</li>
                </c:if>
                <c:if test="${page != 1}">
                    <li class="page-item active">
                        <a href="?page=${page - 1}">&laquo</a>
                    </li>
                </c:if>
                <c:forEach begin="1" end="${numberOfPages}" var="i">
                    <c:choose>
                        <c:when test="${page eq i}">
                            <li class="page-item active">
                                    ${i}
                                <span class="sr-only">(current)</span>
                            </li>
                        </c:when>
                        <c:otherwise>
                            <li class="page-item"><a href="?page=${i}">${i}</a></li>
                        </c:otherwise>
                    </c:choose>
                </c:forEach>
                <c:if test="${page == numberOfPages}">
                    <li class="page-item">&raquo</li>
                </c:if>
                <c:if test="${page != numberOfPages}">
                    <li class="page-item active">
                        <a href="?page=${page + 1}">&raquo</a>
                    </li>
                </c:if>
            </ul>
        </nav>
        <p>${page}</p>

    </jsp:body>
</t:layout>