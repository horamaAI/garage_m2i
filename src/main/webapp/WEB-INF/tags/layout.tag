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
    <base href="/" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css"
          integrity="sha512-NmLkDIU1C/C88wi324HBc+S2kLhi08PN5GDeUVVVC/BVt/9Izdsc9SVeVfA1UZbY3sHUlDSyRXhCzHfr6hmPPw=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>

    <link type="text/css" rel="stylesheet" href="assets/css/style.css" />
    <link type="text/css" rel="stylesheet" href="assets/css/pagination.css" />
</head>

<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="/">VroomVroom</a>

    <div class="navbar-items">
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
                        <input type="submit" value="D�connexion" class="nav-link">
                    </form>
                </li>
            </sec:authorize>
        </ul>
    </div>
</nav>

<div class="container">
    <jsp:doBody/>
</div>
</body>
</html>