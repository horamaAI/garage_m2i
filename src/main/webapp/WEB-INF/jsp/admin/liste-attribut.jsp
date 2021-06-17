<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="t" %>


<t:layout>
    <jsp:attribute name="title">VroomVroom - Attribut admin</jsp:attribute>

    <jsp:body>
        <table>
            <thead>
            <tr>
                <th>Id</th>
                <th>Type</th>
                <th>Valeur</th>
                <th>Produit</th>
                <th></th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="attribut" items="${attributs}">
                <tr>
                    <td>${attribut.getId()}</td>
                    <td>${attribut.type}</td>
                    <td>${attribut.valeur}</td>
                    <td>${attribut.produit.libelle}</td>
                    <td></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>


    </jsp:body>
</t:layout>