<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/style.css" type="text/css" />
<title><s:property value="%{getText('fr.bm.accueil.titre')}"/></title>

<script>
		function calcHeight() {
			var the_height = document.getElementById('the_iframe').contentWindow.document.body.scrollHeight;
			document.getElementById('the_iframe').height = the_height;
		}
		function boom(){
			alert("boom");
		}
	</script>
	
	
</head>
<body>

	
<header> <iframe id="the_iframe" sandbox="allow-forms allow-same-origin allow-scripts allow-top-navigation" seamless  " frameborder="0" src="Header"
		width="100%"  scrolling="no" > </iframe> 
	
		
		
		</header>
		
		
	
		
		
		
		
	
		
	<h1>Titre</h1>

	<section> </section>

	<footer> </footer>

	Hola Accueil


</body>
</html>