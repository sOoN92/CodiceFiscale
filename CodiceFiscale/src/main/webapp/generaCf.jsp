<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inserisci Dati</title>
</head>
<body>
 
 <form action="CodiceFiscale" method="post">

  <p>Cognome:</p><br />
  	<input type="text" name="cognome"><br />
  <p>Nome:</p><br />
  	<input type="text" name="nome"><br />
  <p>Data di Nascita</p><br />
  	<input type="text" name="dataNascita"><br />
  <p>Comune di Nascita</p><br />
 	<input type="text" name="comune"><br />

  <select name="sesso">
   <option value="M">M</option>
   <option value="F">F</option>
  </select>
  <br/>
  <br/>
  <input type="submit" value="Genera!">
 </form>

</body>
</html>