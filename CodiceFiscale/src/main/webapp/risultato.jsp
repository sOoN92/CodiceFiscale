<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Risultato Autogenerazione</title>
<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		
		<!--[if lte IE 8]><script src="assets/js/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
</head>
<body class="is-loading">

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<section id="main">
						<header>
							<span class="avatar"><img src="images/avatar.jpg" alt="" /></span>
							<h1>Risultato Generazione</h1>
						</header>
						<hr />
							<%if(!"0".equals(request.getAttribute("esiste"))){ %>
							<h2>Il Codice Fiscale generato è:</h2><br />
							<h1><b><%=request.getAttribute("cf") %></b></h1><br />
								<p>Vuoi eliminare la riga corrente?</p>
							<%} else { %>
						<h2>Il Codice Fiscale è stato già inserito:</h2><br />
								<big><%=request.getAttribute("cf") %></big><br />
							<p>Vuoi eliminare la riga corrente?</p>
									<%} %>
						
						<form  action="CodiceFiscale" method="post">
						<input type="hidden" name="cf" value="<%=request.getAttribute("cf")%>">
	   					<input type="hidden" name="action" value="delete"/>
								
								<input type="submit" value="Cancella">
						</form>
						<hr />
<!-- Footer -->
					<footer id="footer">
						<ul class="copyright">
							<li>&copy; Nicola Moramarco</li>
						</ul>
					</footer>

			</div>

		<!-- Scripts -->
			<!--[if lte IE 8]><script src="assets/js/respond.min.js"></script><![endif]-->
			<script>
				if ('addEventListener' in window) {
					window.addEventListener('load', function() { document.body.className = document.body.className.replace(/\bis-loading\b/, ''); });
					document.body.className += (navigator.userAgent.match(/(MSIE|rv:11\.0)/) ? ' is-ie' : '');
				}
			</script>

	</body>
</html>