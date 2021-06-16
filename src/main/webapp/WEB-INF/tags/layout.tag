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
  <%--  <style>
        @font-face {
            font-family: Roboto;
            src: url("./assets/font/Roboto-Thin.ttf");
        }
        @font-face {
            font-family: Neuro;
            src: url("./assets/font/Neurochrome.otf");
        }

        body,a:not(.navbar-brand),input {
            font-family: Roboto;
        }
        a {
            text-decoration: none;
            color: azure;
        }

        .container {
            padding: 20px;
        }

        .navbar {
            position: sticky;
            display: flex;
            background-color: #0B090A;
            align-items: center;
        }

        .navbar-brand {
            color: azure;
            font-size: 1.4rem;
            padding: 20px 25px;
        }

        .navbar-items {
            margin-left: auto;
        }

        .nav-item {
            float: left;
            margin: 0 15px;
        }

        .nav-link, input[type="submit"].nav-link {
            display: block;
            text-align: center;
            padding: 8px 15px;
            color: azure;
            background: unset;
            border: unset;
        }

        .nav-link.active {
            background-color: #3e78a4;
            border-radius: 20px;
        }

        a {
            text-decoration: none;
            color: azure;
        }

        .cards-list {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
        }

        .card {
            width: 300px;
            border-radius: 10px;
            -webkit-box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.7);
            box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.7);
        }

        .card-body {
            padding: 10px;
            height: calc(100% - 220px);
            display: flex;
            flex-direction: column;
        }

        .card-body > * {
            padding: 10px 0;
        }

        .card-body > *:not(.card-btn) {
            border-bottom: rgba(11, 9, 10, 0.68) solid 1px;
            -webkit-box-shadow: 0px 6px 11px -11px #000000;
            box-shadow: 0px 6px 11px -11px #000000;
        }

        .card-title {
            font-weight: bold;
            font-size: 1.2rem;
            margin-bottom: 5px;
        }

        .card-text {
            text-align: justify;
        }

        .list-group {
            list-style: circle;
            padding-inline-start: 30px;
        }

        .card-btn {
            text-align: right;
            margin-top: auto;
        }

        .card-btn a {
            color: azure;
            border-radius: 10px;
            background-color: #3e78a4;
            padding: 5px 10px;
        }

        .card-btn a:nth-child(2n) {
            color: azure;
            border-radius: 10px;
            background-color: #a42d29;
            padding: 5px 10px;
        }

        .card-btn a:hover {
            color: azure;
            border-radius: 10px;
            background-color: #509ed7;
            padding: 5px 10px;
        }

        .card-btn a:hover:nth-child(2n) {
            color: azure;
            border-radius: 10px;
            background-color: #d73b33;
            padding: 5px 10px;
        }

        img {
            border-radius: 10px 10px 0 0;
            height: 200px;
            width: 300px;
        }
    </style>--%>

    <link type="text/css" rel="stylesheet" href="assets/css/style.css" />
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
                        <input type="submit" value="Déconnexion" class="nav-link">
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