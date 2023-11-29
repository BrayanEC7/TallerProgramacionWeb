<?php
	session_start();
	if (!isset($_SESSION['usuario'])){
		echo '
			<script>
					alert("Por favor debes iniciar sesión");	
					window.location="ingreso.html";		
			</script>
		';
		session_destroy();
		die();
	}

include("conexion.php");
?>

<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MISIÓN y VISIÓN</title>
    <link rel="icon" type="image/png" href="img/colegio.png">
    <link rel="stylesheet" href="css/cuerpo.css">
    <script defer src="js/ejecutar.js"></script>

</head>
<body>

    <header>
        <div id="baner">
            <a href="index.html"><img src="img/baner.png" alt="baner"></a>
        </div>

        <div id="barraMenu">
            <nav>
                <button class="icon">
                    <img src="img/menu.png" alt="">
                </button>
                <ul class="menu">
                    <li id="barra"><a href="index.html">Home</a> </li>
                    <li id="barra"><a href="nosotros.html">Nosotros</a> </li>
                    <li id="barra"><a href="servicios.html">Servicios</a> </li>
                    <li id="barra"><a href="mision.html">Misión y Visión</a> </li>
                    <li id="resalto"><a href="intranet.html">INTRANET</a> </li>
                    <li id="resalto2"><a href="contacto.php">CONTACTO</a> </li>
                </ul>
            </nav>
        </div>
    </header>
	<br>
	BIENVENIDO
	<br>
    <footer>
        <p id="pie">Copyright © 2023 I.E.M Sara A. Bullon</p>
        <a href="https://www.facebook.com/profile.php?id=100057464678916" target="_blank"><img src="img/facebook_2.png" alt="facebook" height="30px"></a>
    </footer>
</body>

</html>