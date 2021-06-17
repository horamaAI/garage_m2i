<%@ attribute name="title" fragment="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<!DOCTYPE html>
<html>
<head>
    <title>
        <jsp:invoke fragment="title"/>
    </title>

    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <base href="/"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link type="text/css" rel="stylesheet" href="assets/style.css"/>
    <link type="text/css" rel="stylesheet" href="assets/pagination.css"/>
</head>

<body>
<nav class="navbar navbar-expand-sm navbar-dark">
    <div class="container-fluid">

        <a class="navbar-brand" href="/">VroomVroom</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="navbar-items collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav">
                <li class="nav-item"><a
                        class="nav-link ${ requestScope['javax.servlet.forward.request_uri'].contains('/accueil') ? 'active' : ''}"
                        href="accueil">Accueil</a>
                </li>
                <li class="nav-item"><a
                        class="nav-link ${ requestScope['javax.servlet.forward.request_uri'].contains('/mes-annonces') ? 'active' : ''}"
                        href="mes-annonces">Mes
                    annonces</a></li>
                <sec:authorize access="!isAuthenticated()">
                    <li class="nav-item"><a
                            class="nav-link  ${ requestScope['javax.servlet.forward.request_uri'].contains('/connexion') ? 'active' : ''}"
                            href="connexion">Connexion</a></li>
                </sec:authorize>
                <sec:authorize access="isAuthenticated()">
                    <li class="nav-item">
                        <form method="post" action="deconnexion">
                            <input type="hidden" name="${ _csrf.parameterName }" value="${ _csrf.token }"/>
                            <input type="submit" value="Déconnexion" class="nav-link">
                        </form>
                    </li>
                </sec:authorize>
            </ul>
        </div>
    </div>
</nav>

<div class="container">
    <jsp:doBody/>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
        crossorigin="anonymous"></script>

</body>
</html>