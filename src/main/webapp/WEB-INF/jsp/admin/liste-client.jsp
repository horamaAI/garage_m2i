<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="t" %>


<t:layout>
    <jsp:attribute name="title">VroomVroom - Client admin</jsp:attribute>

    <jsp:body>
        <table>
            <thead>
                <tr>
                    <th>Nom</th>
                    <th>Prénom</th>
                    <th>Email</th>
                    <th>Telephone</th>
                    <th>Role</th>
                    <th>Adresse</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="client" items="${clients}">
                    <tr>
                        <td>${client.nom}</td>
                        <td>${client.prenom}</td>
                        <td>${client.adresseMail}</td>
                        <td>${client.tel}</td>
                        <td>${client.role.name}</td>
                        <td>${client.adresse.getId()}</td>
                        <td></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>


    </jsp:body>
</t:layout>