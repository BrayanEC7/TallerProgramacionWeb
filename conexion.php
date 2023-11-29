<?php

$dbhost = "localhost";
$dbuser = "root";
$dbpass = "";
$dbname = "colegio";

$cn = mysqli_connect($dbhost, $dbuser, $dbpass , $dbname);

if(!$cn)
{
	die("No hay conexion: ".mysqli_connect_error());	
}

?>