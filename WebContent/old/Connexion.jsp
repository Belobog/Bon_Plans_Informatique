<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/style.css" type="text/css" />
<title><s:property value="%{getText('fr.bm.connexion.titre')}"/></title>
</head>
<body>

<header> <iframe id="the_iframe" sandbox="allow-forms allow-same-origin allow-scripts allow-top-navigation" seamless  " frameborder="0" src="Header"
		width="100%"  scrolling="no" > </iframe> 	
		</header>
		
		<section>
			<article id="Connexion">
				<s:form method="post" action="authentifier_Utilisateur">
					<s:textfield  name="pseudo" label="%{getText('fr.bm.connexion.pseudo')}"> </s:textfield>
					<s:password name="password"  label="%{getText('fr.bm.connexion.password')}" > </s:password>
					<s:submit value = "Envoyer"></s:submit>
				</s:form>
			</article>
			
		</section>
	<footer>
	</footer>

</body>
</html>