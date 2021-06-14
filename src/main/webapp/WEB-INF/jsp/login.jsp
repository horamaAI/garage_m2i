<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="t" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<t:layout>
    <jsp:attribute name="title">Connexion</jsp:attribute>

    <jsp:body>

        <form method="POST" action="post-connexion">
            <input type="hidden" name="${ _csrf.parameterName }" value="${ _csrf.token }" />

            <div class="form-group">
                <label for="inputMail">Adresse mail</label>
                <input type="text" class="form-control" id="inputMail"
                       placeholder="Entrer mail" name="username">
            </div>
            <div class="form-group">
                <label for="inputPassword">Mot de passe</label>
                <input type="password" class="form-control"
                       id="inputPassword" placeholder="mot de passe" name="password">
            </div>
            <button type="submit" class="btn btn-primary">Connexion</button>
        </form>
        <a href="inscription">Pas encore de compte, inscris-toi !</a>
    </jsp:body>
</t:layout>