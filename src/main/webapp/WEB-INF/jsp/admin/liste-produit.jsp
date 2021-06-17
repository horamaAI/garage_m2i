<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="t" %>


<t:layout>
    <jsp:attribute name="title">VroomVroom - Client admin</jsp:attribute>

    <jsp:body>
        <table>
            <thead>
            <tr>
                <th>Id</th>
                <th>Libelle</th>
                <th>Prix</th>
                <th>ImageUrl</th>
                <th>Description</th>
                <th>Categorie</th>
                <th>Client</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="produit" items="${produits}">
                <tr>
                    <td>${produit.getId()}</td>
                    <td>${produit.libelle}</td>
                    <td>${produit.prix}</td>
                    <td>${produit.imageURL}</td>
                    <td>${produit.description}</td>
                    <td>${produit.categorie.libelle}</td>
                    <td>${produit.client.nom} ${produit.client.prenom}</td>
                    <td></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>


    </jsp:body>
</t:layout>