<?php
include('conexion.php');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nombre = $_POST["nombre"];
    $correo = $_POST["correo"];
    $celular = $_POST["celular"];
    $mensaje = $_POST["mensaje"];

    $sql = "INSERT INTO contactanos (nombre, correo, celular, mensaje) VALUES ('$nombre', '$correo', '$celular', '$mensaje')";

    if (mysqli_query($cn, $sql)) {
        echo "Datos agregados correctamente.";
    } else {
        echo "Error al agregar datos: " . mysqli_error($cn);
    }
}

mysqli_close($cn);
?>


<!DOCTYPE html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CONTACTO</title>
    <link rel="icon" type="image/png" href="img/colegio.png">
    <link rel="stylesheet" href="css/cuerpo.css">
    <link rel="stylesheet" href="css/contacto.css">
    <link rel="stylesheet" href="css/sweetalert2.min.css">
    <script src="js/sweetalert2.min.js"></script>
    <link rel="stylesheet" href="css/sweetalert2.css">
    <script src="js/sweetalert2.js"></script>
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

    <form action="contacto.php" method="post">
        <label for="nombre">Nombre:</label>
        <input type="text" id="nombre" name="nombre" required>

        <label for="correo">Correo Electrónico:</label>
        <input type="email" id="correo" name="correo" required>

        <label for="celular">Celular:</label>
        <input type="text" id="celular" name="celular" required>

        <label for="mensaje">Mensaje:</label>
        <textarea id="mensaje" name="mensaje" required></textarea>

        <input type="submit" value="Enviar">
    </form>
    <br>
    <footer>
        <p id="pie">Copyright © 2023 I.E.M Sara A. Bullon</p>
        <a href="https://www.facebook.com/profile.php?id=100057464678916" target="_blank"><img src="img/facebook_2.png"
                alt="facebook" height="30px"></a>
    </footer>
</body>

</html>