<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/header.css" type="text/css" />
<title><s:property value="%{getText('fr.bm.header.titre')}" /></title>

</head>
<body>

	<header> <nav>
	<ul>
		<!--  
				<li><a href="Accueil" onclick="parent.document.location.href = this.href;"><s:property value="%{getText('fr.bm.header.accueil')}"/></a></li>
				-->
		<li><a href="Accueil" target="_parent"><s:property
					value="%{getText('fr.bm.header.accueil')}" /></a></li>
		<li><a href="About" target="_parent"><s:property
					value="%{getText('fr.bm.header.apropos')}" /></a>
			<ul>
				<li><a href="About#qui" target="_parent"><s:property
							value="%{getText('fr.bm.header.qui')}" /></a></li>
				<li><a href="About#pourquoi" target="_parent"><s:property
							value="%{getText('fr.bm.header.pourquoi')}" /></a></li>
				<li><a href="About#contact" target="_parent"><s:property
							value="%{getText('fr.bm.header.contact')}" /></a></li>
			</ul></li>

		<li><a href="Connexion" target="_parent"><s:property
					value="%{getText('fr.bm.header.connexion')}" /></a></li>


		<li><a href="Inscription" target="_parent"><s:property
					value="%{getText('fr.bm.header.inscription')}" /></a></li>

		<li><a href="Test" target="_parent"><s:property
					value="%{getText('fr.bm.header.test')}" /></a></li>

	</ul>
	</nav> </header>
</body>
</html>