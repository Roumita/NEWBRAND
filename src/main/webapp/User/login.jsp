<%@ include file="/Navbar/header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>





	<!-- Le formulaire =============================-->
<section class="item content">
<div class="container toparea">

	<!--  ==============Message en cas d'erreur ================ -->
	<c:if test="${not empty erreur }">
		
		<div class="alert alert-danger">
				${erreur }
		</div>
		
	</c:if>

	
	<div class="underlined-title">
		<div class="editContent">
			<h1 class="text-center latestitems">Get in Touch</h1>
		</div>
		<div class="wow-hr type_short">
			<span class="wow-hr-h">
			<i class="fa fa-star"></i>
			<i class="fa fa-star"></i>
			<i class="fa fa-star"></i>
			</span>
		</div>
	</div>
	<div class="row">
		<div class="col-lg-8 col-lg-offset-2">
			
			<form method="post" action="<%= request.getContextPath()%>/login" id="contactform">
				<div class="form">
					<input type="text" name="email" placeholder="Entrez votre E-mail  *">
					<input type="password" name="pwd" placeholder="Entrez votre mot de passe *">
					<input type="submit" id="submit" class="clearfix btn" value="Je me connecte">
				</div>
			</form>
		</div>
	</div>
</div>
</section>

<script type="text/javascript"  src="js/jquery-3.5.1.min.js"></script>
<script type="text/javascript"  src="js/login.js"></script>
</body>
</html>