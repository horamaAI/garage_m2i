<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="t" %>


<t:layout>
    <jsp:attribute name="title">VroomVroom - Catégorie admin</jsp:attribute>

    <jsp:body>
        <table>
            <thead>
            <tr>
                <th>Id</th>
                <th>Libellé</th>
                <th>Description</th>
                <th>Catégorie parent</th>
                <th></th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="categorie" items="${categories}">
                <tr>
                    <td>${categorie.getId()}</td>
                    <td>${categorie.libelle}</td>
                    <td>${categorie.description}</td>
                    <td>${categorie.parent.libelle}</td>
                    <td></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>


    </jsp:body>
</t:layout>