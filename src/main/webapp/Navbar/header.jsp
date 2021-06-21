<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bienvenue dans mon blog</title>

<link rel="stylesheet" href="fontawesome/css/bootstrap.min.css">
<link rel="stylesheet" href="fontawesome/css/all.min.css">
<link rel="stylesheet" href="fontawesome/css/style.css">
<link rel="stylesheet" href="fontawesome/css/afpa.css">

</head>
<body>

	<!-- HEADER =============================-->
<header class="item header margin-top-0">
<div class="wrapper">
	<nav role="navigation" class="navbar navbar-white navbar-embossed navbar-lg navbar-fixed-top navbar-afpa">
	<div class="container">
		<div class="navbar-header">
			<button data-target="#navbar-collapse-02" data-toggle="collapse" class="navbar-toggle" type="button">
			<i class="fa fa-bars"></i>
			<span class="sr-only">Toggle navigation</span>
			</button>
			<a href="<%= request.getContextPath()%>" class="navbar-brand brand"> Blog d'article </a>
		</div>
		<div id="navbar-collapse-02" class="collapse navbar-collapse navbar-menu">
			<ul class="nav navbar-nav navbar-right">
				<li class="propClone"><a href="<%= request.getContextPath()%>/">Accueil</a></li>
				<li class="propClone"><a href="<%= request.getContextPath()%>/list">Articles</a></li>
				<li class="propClone"><a href="<%= request.getContextPath()%>/contact">Contact</a></li>
				
			</ul>
		</div>
		
		
	</div>
	<div id="navbar-collapse-02" class="collapse navbar-collapse navbar-menu">
		<ul class="nav navbar-nav navbar-right" id="profil">
			
			<!-- Verification si l'utilisateur est connecté ou pas -->
	      	<c:if test="${empty utilisateur }">
      			<li class=""><a href="<%= request.getContextPath()+"/login"%>"> Se connecter </a></li>
      		</c:if>
	      	
	      	<c:if test="${not empty utilisateur }">
		      	<li>
					<a href=""><i class="far fa-user-circle"></i> <p>${utilisateur }</p></a>
					<ul>
				      <li class="propClone"><a href="#">profil</a></li>
				      <li class="propClone"><a href="<%=  request.getContextPath() %>/logout">Se déconnecter</a></li>
				    </ul>
			    </li>
      		</c:if>
		</ul>
	</div>
	
	</nav>
	<div class="container">
		<div class="row">
			<div class="col-md-12 text-center">
				<div class="text-homeimage">
					<div class="maintext-image" data-scrollreveal="enter top over 1.5s after 0.1s">
						 Bienvenue dans mon blog
					</div>
					<div class="subtext-image" data-scrollreveal="enter bottom over 1.7s after 0.3s">
						 Boost revenue with Scorilo
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</header>