<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/style.css" type="text/css" />
<title><s:property value="%{getText('fr.bm.inscription.titre')}"/></title>
</head>
<body>

<header> <iframe id="the_iframe" sandbox="allow-forms allow-same-origin allow-scripts allow-top-navigation" seamless  " frameborder="0" src="Header"
		width="100%"  scrolling="no" > </iframe> 	
		</header>
		
		<section>
			<article id="Inscription">
				<s:form method="post" action="demande_Inscription">
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
					<s:submit value = "Envoyer"></s:submit>
				</s:form>
			</article>
			
		</section>
	<footer>
	</footer>

</body>
</html>