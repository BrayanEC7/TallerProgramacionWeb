<?php 
	session_start();
	include("conexion.php");
	$usuario=$_POST['usuario'];
	$pass=$_POST['contraseña'];


if (isset($_POST['inicio'])) {
	$validaruser=mysqli_query($cn, "SELECT * FROM usuario Where usuario='$usuario'");
	$buscar = mysqli_fetch_array($validaruser);

	if ((mysqli_num_rows($validaruser)==1) && (password_verify($pass,$buscar['contraseña'])) ) {
		$_SESSION['usuario']=$usuario;

	}else
	{
		echo '<script>
			alert("Usuario no existe, por favor verifique los datos ingresados");
			window.location="index.html";	
			</script>
		';
		exit;
	}
}
 ?>