<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Risultato Autogenerazione</title>
</head>
<body>
	<%if("0".equals(request.getAttribute("esiste"))){ %>
	<p>Il Codice Fiscale generato è:</p><br />
	<big><%=request.getAttribute("cf") %></big><br />
	<p>Vuoi eliminare la riga corrente?</p>
	<%} else { %>
	<p>Il Codice Fiscale è stato già inserito:</p><br />
	<big><%=request.getAttribute("cf") %></big><br />
	<p>Vuoi eliminare la riga corrente?</p>
	<%} %>
	<form action="CodiceFiscale" method="post">
		<input type="hidden" name="cf" value="<%=request.getAttribute("cf")%>">
	    <input type="hidden" name="action" value="delete"/>
		<input type="submit" value="Cancella">
	</form>
	
</body>
</html>