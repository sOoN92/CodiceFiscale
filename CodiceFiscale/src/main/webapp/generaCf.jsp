<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inserisci Dati</title>
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
							<h1>Generazione CF</h1>
						</header>
						<hr />
						<h2>Inserisci i dati:</h2>
						<form  action="CodiceFiscale" method="post">
						<div class="field">
                        	<input type="text" name="cognome" placeholder="cognome"/>
                        </div>
                        <div class="field">
                        	<input type="text" name="nome" placeholder="nome"/>
                        </div>
                        <div class="field">
                        	<input type="text" name="dataNascita" placeholder="gg/mm/aaaa"/>
                        </div>
                         <div class="field">
                        	<input type="text" name="comune" placeholder="comune"/>
                        </div>
                         <select name="sesso">
						   <option value="M">M</option>
						   <option value="F">F</option>
						 </select>
						 
						 <br />
						 
						  <input type="submit" value="Genera!">
						
						
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