<?php
date_default_timezone_set('America/Sao_Paulo');
session_start();
include("conecta.php");
require 'funcoes.php';

$nome = $_SESSION['nome'];

if(isset($_POST['enviar-background'])){
	$background = $_POST['background'];
	$sql = "UPDATE users SET background = '$background' WHERE (nome LIKE '$nome')";
	try {
		$consulta = $link->prepare($sql);
	
		$consulta->execute();
		echo ("Incluido com sucesso!");
		header("Location:../perfil.php");
	}
	catch(PDOException $ex){
		echo($ex->getMessage());
	}
}
?>

