<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="t" %>


<t:layout>
    <jsp:attribute name="title">VroomVroom - Adresse admin</jsp:attribute>

    <jsp:body>
        <table>
            <thead>
            <tr>
                <th>Id</th>
                <th>Numéro</th>
                <th>Rue</th>
                <th>Ligne 2</th>
                <th>Ligne 3</th>
                <th>Code postal</th>
                <th>Ville</th>
                <th>Pays</th>
                <th></th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="adresse" items="${adresses}">
                <tr>
                    <td>${adresse.getId()}</td>
                    <td>${adresse.numRue}</td>
                    <td>${adresse.rue}</td>
                    <td>${adresse.ligne2}</td>
                    <td>${adresse.ligne3}</td>
                    <td>${adresse.codePostal}</td>
                    <td>${adresse.ville}</td>
                    <td>${adresse.pays}</td>
                    <td></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </jsp:body>
</t:layout>