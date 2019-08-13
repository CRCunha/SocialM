<?php
date_default_timezone_set('America/Sao_Paulo');
session_start();
include("conecta.php");
require 'funcoes.php';

$nome = $_SESSION['nome'];

if(isset($_POST['enviar-avatar'])){
	$background = $_POST['background'];
	$sql = "UPDATE users SET avatar = '$avatar' WHERE (nome LIKE '$nome')";
	try {
		$consulta = $link->prepare($sql);
	
		$consulta->execute();
		session_destroy();

		header("Location:../index.php");
	}
	catch(PDOException $ex){
		echo($ex->getMessage());
	}
}
?>

