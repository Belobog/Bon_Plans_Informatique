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


<title><s:property value="%{getText('fr.bm.inscription.titre')}" /></title>

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


		<s:form name="strutsForm" method="post" action="demande_Inscription">
					<s:textfield  name="pseudo" label="%{getText('fr.bm.inscription.pseudo')}"> </s:textfield>
					<s:password name="password"  label="%{getText('fr.bm.inscription.password')}" > </s:password>
					<s:password name="confirm_password"  label="%{getText('fr.bm.inscription.confirm_password')}" > </s:password>
					<s:textfield  name="nom" label="%{getText('fr.bm.inscription.nom')}"> </s:textfield>
					<s:textfield  name="prenom" label="%{getText('fr.bm.inscription.prenom')}"> </s:textfield>
					<s:textfield  name="email" label="%{getText('fr.bm.inscription.email')}"> </s:textfield>
					<s:textfield  name="telephone" label="%{getText('fr.bm.inscription.telephone')}"> </s:textfield>
					<s:textfield  name="adresse" label="%{getText('fr.bm.inscription.adresse')}"> </s:textfield>
					<s:textfield  name="code_postal" label="%{getText('fr.bm.inscription.code_postal')}"> </s:textfield>
					<s:textfield  name="ville" label="%{getText('fr.bm.inscription.ville')}"> </s:textfield>
					
				</s:form>

	</div>




















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
		
		function chargementDeLaPage() {

			//chargerPseudo();

			var pseudo = $('label[for=demande_Inscription_pseudo]').text();

			$('input[id=demande_Inscription_pseudo]').attr({
				"placeholder" : pseudo,
				"class" : "form-control"
			});

			$('input[id=demande_Inscription_pseudo]').wrap(
					'<div class="input-group input-group-lg"></div>');

			$('input[id=demande_Inscription_pseudo]')
					.before(
							'<span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>');

			if ($('tr[errorfor=demande_Inscription_pseudo]').size() != 0) {
				alert("dans le if");
				var pseudo_error_texte = $(
						'tr[errorfor=demande_Inscription_pseudo]').children(
						'td').children('span').text();
				$('tr[errorfor=demande_Inscription_pseudo]').remove();
				$('input[id=demande_Inscription_pseudo]').after(
						'<span class="input-group-addon">' + pseudo_error_texte
								+ '</span>');

			}

			$('td[class=tdLabel]').remove();

		}
		
		function chargementDeLaPageGenerique() {
			
			$('form[name=strutsForm]').children('table').children('tbody').children('tr').each(function(index){
				
				var param = $(this).children('td').children('label').text();
				var name = $(this).children('td').children('input').attr('name');
				
				
				$(this).children('td').children('input').attr({
					"placeholder" : param,
					"class" : "form-control"
				});
				
 				$(this).children('td').children('input').wrap(
 				'<div class="input-group input-group-lg"></div>');
				
				
 				$(this)
 				.prepend(
 						'<span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>');
 				
 				
 				
				
				if ($('tr[errorfor=demande_Inscription_'+name+']').size() != 0) {
					
					var error_texte = $(
							'tr[errorfor=demande_Inscription_'+name+']').children(
							'td').children('span').text();
					$('tr[errorfor=demande_Inscription_'+name+']').remove();
					$('input[id=demande_Inscription_'+name+']').after(
							'<span class="input-group-addon">' + error_texte
									+ '</span>');

				}

			});

			//chargerPseudo();

// 			var pseudo = $('label[for=demande_Inscription_pseudo]').text();

// 			$('input[id=demande_Inscription_pseudo]').attr({
// 				"placeholder" : pseudo,
// 				"class" : "form-control"
// 			});

// 			$('input[id=demande_Inscription_pseudo]').wrap(
// 					'<div class="input-group input-group-lg"></div>');

// 			$('input[id=demande_Inscription_pseudo]')
// 					.before(
// 							'<span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>');

// 			if ($('tr[errorfor=demande_Inscription_pseudo]').size() != 0) {
// 				alert("dans le if");
// 				var pseudo_error_texte = $(
// 						'tr[errorfor=demande_Inscription_pseudo]').children(
// 						'td').children('span').text();
// 				$('tr[errorfor=demande_Inscription_pseudo]').remove();
// 				$('input[id=demande_Inscription_pseudo]').after(
// 						'<span class="input-group-addon">' + pseudo_error_texte
// 								+ '</span>');

// 			}

			$('td[class=tdLabel]').remove();
			$('form[name=strutsForm]').children('table').children('tbody').append('<tr><td><button type="submit" onclick="connexion();" class="btn btn-success">Sign in</button></td></tr>');

		}

		function chargerPseudo() {

			var pseudo = $('label[for=demande_Inscription_pseudo]').text();
			$('input[name=pseudo]').attr({
				"placeholder" : pseudo,
				"class" : "form-control"
			});

			//<div name="div_pseudo" class="col-md-4">
			//<h2>Choisissez un pseudo</h2>

			//</div>

			//$('form[name=strutsForm]').wrap('<div name="div_pseudo class="col-md-4"></div>');

			$('input[name=pseudo]')
					.wrap(
							'<div name="div_pseudo" class="col-md-4"><div class="input-group input-group-lg"></div></div>');
			$('div[name=div_pseudo]').prepend('<h2>Choisissez un pseudo</h2>');

			$('input[name=pseudo]')
					.before(
							'<span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>');

			if ($('tr[errorfor=demande_Inscription_pseudo]').size() != 0) {
				var pseudo_error_texte = $(
						'tr[errorfor=demande_Inscription_pseudo]').children(
						'td').children('span').text();
				$('tr[errorfor=demande_Inscription_pseudo]').remove();
				$('input[name=pseudo]').after(
						'<span class="input-group-addon">' + pseudo_error_texte
								+ '</span>');

			}

			$('td[class=tdLabel]').remove();
		}

		function pseudoDisponible() {

			$('form[name=strutsForm]').submit();

		}
		chargementDeLaPageGenerique();
		//chargementDeLaPage();
	</script>
</body>
</html>
