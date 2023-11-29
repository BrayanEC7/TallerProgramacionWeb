<?php 
	session_start();
	include("conexion.php");
	$usuario=$_POST['usuario'];
	$pass=$_POST['contraseña'];
	$idtipo=$_POST['tipo'];

	if (isset($_POST['registra'])) {
		$pass_fuerte = password_hash($pass,PASSWORD_DEFAULT);
		$queryregistrar = "INSERT INTO usuario(idTipo, usuario, contraseña) values ('$idtipo', '$usuario', '$pass_fuerte')";
		
		if (mysqli_query($cn, $queryregistrar)) {
			echo "<script>
			alert('Usuario registrado: $usuario'); window.location = 'intranet.php' </script>";
		}else {
		   echo  "Error: ".$queryregistrar."<br>".mysqli_error($cn);
		}
	}
	

if (isset($_POST['inicio'])) {
	$validaruser=mysqli_query($cn, "SELECT * FROM usuario Where usuario='$usuario'");
	$buscar = mysqli_fetch_array($validaruser);

	if ((mysqli_num_rows($validaruser)==1) && (password_verify($pass,$buscar['contraseña'])) ) {
		
		if($buscar['idTipo']==1){
			$_SESSION['usuario']=$usuario;
			header("location: intranet.php");
			exit;
		} if($buscar['idTipo']==2){
			$_SESSION['usuario']=$usuario;
			header("location: intranet.php");
			exit;
		}
		
	}else
	{
		echo '<script>
			alert("Usuario no existe, por favor verifique los datos ingresados");
			window.location="intranet.html";	
			</script>
		';
		exit;
	}
}
	
#CERRAR SESSION lOS DATOS
if($_SERVER['REQUEST_METHOD'] == "POST" and isset($_POST['cerrar'])){
	header("Location: cerrar_sesion.php");
}
	
#ELIMINADOR DE LOS DATOS DE ADMIN
if($_SERVER['REQUEST_METHOD'] == "POST" and isset($_POST['eliminardatos']))
	
	{
			$sqleliminar = "DELETE FROM usuario WHERE usuario='$usuario'";

if(mysqli_query($cn,$sqleliminar))
{
	header("Location: intranet.php");
}else 
{
	echo "Error: " .$sql."<br>".mysqli_error($cn);
}
		
		
	}


 ?>