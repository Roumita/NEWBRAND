<%@ include file="/Navbar/header.jsp" %>

	<div class="container">
		<form method="post" action="<%= request.getContextPath()%>/ajout">
		  <div class="mb-3">
		    <label for="exampleInputEmail1" class="form-label">Entrez votre nom</label>
		    <input type="text" class="form-control" id="exampleInputEmail1" name="nom">
		  </div>
		  <div class="mb-3">
		    <label for="exampleInputEmail1" class="form-label">Entrez votre prénom</label>
		    <input type="text" class="form-control" name="prenom">
		  </div>
		  <div class="mb-3">
		    <label for="exampleInputEmail1" class="form-label">Entrez votre email</label>
		    <input type="text" class="form-control" id="exampleInputEmail1" name="email">
		  </div>
		  <div class="mb-3">
		    <label for="exampleInputEmail1" class="form-label">Entrez votre mot de passe</label>
		    <input type="password" class="form-control" id="exampleInputEmail1" name="pwd">
		  </div>
		  
		  <button type="submit" class="btn btn-primary">Submit</button>
		</form>
	
	</div>

	<div class="alert alert-primary" role="alert">
	 <h1>  ${message} </h1>
	</div>
	
	
	<div class="alert alert-success" role="alert">
	 <h1>  ${prenom} </h1>
	</div>
</body>
</html>