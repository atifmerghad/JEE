<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>MyApp Title</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

<sb:head/>
</head>
<body>
	<s:actionerror theme="bootstrap"/>
    <s:actionmessage theme="bootstrap"/>
    <s:fielderror theme="bootstrap"/>
    
		<div class="jumbotron">
			  <h1>SentimentAnalysis</h1>      
			  <p>Take idea for a good place and view the best moniment .</p>
		</div>
					
<div class="container">
  <div class="row">
  	<div  class="col-8">
			<s:form action="authentifier" theme="bootstrap"  cssClass="well form-search" label="Login Form">  
			<s:textfield name="user1.login" label="Login"  laceholder="Login" tooltip="Enter your Name here" />
			<s:password name="user1.password" label="Password"  placeholder="Password" />  
			<s:submit value="Connexion" cssClass="btn btn-primary"/>
			</s:form>  
			<s:property value="msg"/>
		</div>
	</div>
</div>
</body>
</html>