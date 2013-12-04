<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="../../docs-assets/ico/favicon.png">



<link href="css/bootstrap.css" rel="stylesheet">


<title><s:property value="%{getText('fr.bm.connexion.titre')}" /></title>

</head>

<body>
	<!-- Barre de navigation Début-->
	<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"><s:property
						value="%{getText('fr.bm.header.projet')}" /></a>


			</div>
			<div class="navbar-collapse collapse">
				<form class="navbar-form navbar-right">
					<div class="form-group">
						<input type="text" placeholder="Email" class="form-control">
					</div>
					<div class="form-group">
						<input type="password" placeholder="Password" class="form-control">
					</div>
					<button type="submit" class="btn btn-success">Sign in</button>
				</form>
				<ul class="nav navbar-nav">
					<li><a href="Accueil" class="active"><s:property
								value="%{getText('fr.bm.header.accueil')}" /></a></li>
					<li><a href="Cours"><s:property
								value="%{getText('fr.bm.header.cours')}" /></a></li>
					<li><a href="Inscription"><s:property
								value="%{getText('fr.bm.header.inscription')}" /></a></li>
					<li><a href="Test"><s:property
								value="%{getText('fr.bm.header.test')}" /></a></li>
					<li class="dropdown"><a href="About" class="dropdown-toggle"
						data-toggle="dropdown"><s:property
								value="%{getText('fr.bm.header.apropos')}" /> <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="About#qui" target="_parent"><s:property
										value="%{getText('fr.bm.header.qui')}" /></a></li>
							<li><a href="About#pourquoi" target="_parent"><s:property
										value="%{getText('fr.bm.header.pourquoi')}" /></a></li>
							<li><a href="About#contact" target="_parent"><s:property
										value="%{getText('fr.bm.header.contact')}" /></a></li>
						</ul></li>
				</ul>

			</div>
			<!--/.navbar-collapse -->
		</div>
	</div>
	<!-- Barre de navigation Fin-->

	<!-- Main jumbotron for a primary marketing message or call to action -->
	<div class="jumbotron">
		<div class="container">
			<h1>Hello, world!</h1>
			<p>This is a template for a simple marketing or informational
				website. It includes a large callout called a jumbotron and three
				supporting pieces of content. Use it as a starting point to create
				something more unique.</p>

		</div>
	</div>




	<div class="container">


		<!-- Example row of columns -->




		<s:form method="post" name="strutsForm"
			action="authentifier_Utilisateur">
			<s:textfield name="pseudo"
				label="%{getText('fr.bm.connexion.pseudo')}">
			</s:textfield>

			<s:password name="password"
				label="%{getText('fr.bm.connexion.password')}">
			</s:password>



		</s:form>










		<hr>

		<footer>
			<p>&copy; Company 2013</p>
		</footer>
	</div>
	<!-- /container -->


	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script>
		function chargementDeLaPage(){
			
			var pseudo = $('label[for=authentifier_Utilisateur_pseudo]').text();
			var password = $('label[for=authentifier_Utilisateur_password]').text();
			$('input[name=pseudo]').attr({ "placeholder": pseudo, "class": "form-control"});
			$('input[name=password]').attr({ "placeholder": password, "class": "form-control"});
			
			$('form[name=strutsForm]').wrap('<div class="row"><div class="col-md-12"></div></div>');
			
			$('input[name=pseudo]').wrap('<div class="input-group input-group-lg"></div>');
			$('input[name=password]').wrap('<div class="input-group input-group-lg"></div>');
			
			
			
			$('input[name=pseudo]').before('<span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>');
			$('input[name=password]').before('<span class="input-group-addon"><span class="glyphicon glyphicon-wrench"></span></span>');
			
			
			if( $('tr[errorfor=authentifier_Utilisateur_pseudo]').size()!=0 ){
				var pseudo_error_texte = $('tr[errorfor=authentifier_Utilisateur_pseudo]').children('td').children('span').text();
				$('tr[errorfor=authentifier_Utilisateur_pseudo]').remove();
				$('input[name=pseudo]').after('<span class="input-group-addon">'+pseudo_error_texte+'</span>');
				
			}
			
			if( $('tr[errorfor=authentifier_Utilisateur_password]').size()!=0 ){
				var password_error_texte = $('tr[errorfor=authentifier_Utilisateur_password]').children('td').children('span').text();
				$('tr[errorfor=authentifier_Utilisateur_password]').remove();
				$('input[name=password]').after('<span class="input-group-addon">'+password_error_texte+'</span>');
				
			}
			
			
			
			
			$('form[name=strutsForm]').children('table').children('tbody').append('<tr><td><button type="submit" onclick="connexion();" class="btn btn-success">Sign in</button></td></tr>');
			
			$('td[class=tdLabel]').remove();
			
			var pseudo_error = $('tr[errorfor=authentifier_Utilisateur_pseudo]').text();
			var password_error = $('tr[errorfor=authentifier_Utilisateur_password]').text();
			
			

		}
		
		function connexion() {
			
			$('form[name=strutsForm]').submit();
			
		}
		chargementDeLaPage();
	</script>
</body>
</html>
