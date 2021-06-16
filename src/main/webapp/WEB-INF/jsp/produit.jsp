<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="t" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<t:layout>
    <jsp:attribute name="title">VroomVroom - ${produit.libelle}</jsp:attribute>

    <jsp:body>
        <div class="produit">
            <img class="product-img" src="${produit.imageURL}" alt="image_du_produit">
            <h4 class="product-name">${produit.libelle}</h4>
        </div>
    </jsp:body>
</t:layout>