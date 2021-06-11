<%@ attribute name="title" fragment="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<title><jsp:invoke fragment="title" /></title>

<meta charset="UTF-8" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
</head>

<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="/">VroomVroom</a>

		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="/">Accueil</a>
				</li>


				<li class="nav-item"><a class="nav-link" href="mes-annonces">Mes
						annonces</a></li>
			</ul>
			<ul class="navbar-nav ml-auto">
				<c:if test="${ !connected }">
					<li class="nav-item"><a class="nav-link" href="connexion">Connexion</a></li>
				</c:if>
				<c:if test="${ connected }">
					<li class="nav-item"><a class="nav-link" href="deconnexion">Déconnexion</a></li>
				</c:if>
			</ul>
		</div>
	</nav>

	<div class="container">
		<h1>
			<jsp:invoke fragment="title" />
		</h1>
		<jsp:doBody />
	</div>
</body>
</html>