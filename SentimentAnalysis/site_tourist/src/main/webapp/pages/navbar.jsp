<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>MyApp Title</title>
    <link rel="stylesheet" type="text/css" media="screen,projection,print" href=<%out.print(request.getContextPath() + "/styles/navbar.css");%> />
    
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

<sb:head/>
</head>
<body>
	<ul>
  <li><a href="/deconnecter">Deconnexion</a></li>
  <li><a href="#home">Accueil</a></li>
  <li><a href="#news">News</a></li>
  <li><a href="#contact">Contact</a></li>

  <li style="float:right"><a class="active" href="#about"> <img alt="img" src="img/atif.jpg"  class="rounded-circle"  width="20" height="20"> <strong color="#34495e"> ${sessionScope.login}</strong></a></li>
</ul>
	
</body>
</html>