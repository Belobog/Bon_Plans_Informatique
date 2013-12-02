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
			<p>
				<a class="btn btn-primary btn-lg" role="button">Learn more
					&raquo;</a>
			</p>
		</div>
	</div>




	<div class="container">


		<!-- Example row of columns -->
		


		<s:form method="post" name="strutsForm"
			action="authentifier_Utilisateur">
			<s:textfield name="strutsPseudo"
				label="%{getText('fr.bm.connexion.pseudo')}">
			</s:textfield>

			<s:password name="strutsPassword"
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
			
			var pseudo = $('label[for=authentifier_Utilisateur_strutsPseudo]').text();
			var password = $('label[for=authentifier_Utilisateur_strutsPassword]').text();
			$('input[name=strutsPseudo]').attr({ "placeholder": pseudo, "class": "form-control"});
			$('input[name=strutsPassword]').attr({ "placeholder": password, "class": "form-control"});
								
			
			$('input[name=strutsPseudo]').unwrap();
			$('input[name=strutsPseudo]').unwrap();
			$('input[name=strutsPseudo]').unwrap();
			
			
			
			$('input[name=strutsPassword]').unwrap();
			$('input[name=strutsPassword]').unwrap();
			$('input[name=strutsPassword]').unwrap();
			
			$('td').remove('.tdLabel');
			
			
			$('form[name=strutsForm]').wrap('<div class="row"><div class="col-md-4"></div></div>');
			
			$('input[name=strutsPseudo]').wrap('<div class="input-group input-group-lg"></div>');
			$('input[name=strutsPassword]').wrap('<div class="input-group input-group-lg"></div>');
			
			
			
			$('input[name=strutsPseudo]').before('<span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>');
			$('input[name=strutsPassword]').before('<span class="input-group-addon"><span class="glyphicon glyphicon-wrench"></span></span>');
			
			$('form[name=strutsForm]').after('<button type="submit" onclick="connexion();" class="btn btn-success">Sign in</button>');
			$('input[name=strutsPseudo]').attr({ "name": "pseudo"});
			$('input[name=strutsPassword]').attr({ "name": "password"});
	
		}
		function connexion() {
			alert($('input[name=pseudo]').val());
			$('form[name=strutsForm]').submit();
			
			//var pseudo = $('input[name=inputPseudo]').val();
			//var mot_de_passe = $('input[name=inputPassword]').val();
			
			//var pseudo_label = $('input[name=strutsPseudo]').val();
			//var mot_de_passe_label = $('input[name=strutsPassword]').val();
			
			//alert(pseudo);
			//alert(mot_de_passe);
			//$('input[name=strutsPseudo]').val(pseudo);
			//$('password[name=strutsPassword]').val(mot_de_passe);
			//$('form[name=strutsForm]').submit();
			//alert("boom");
			//alert($('input[name=strutsPseudo]').val());
			//alert($('input[name=strutsPassword]').val());
			
		}
		chargementDeLaPage();
	</script>
</body>
</html>
