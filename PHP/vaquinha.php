<?php
session_start();
date_default_timezone_set('America/Sao_Paulo');
include("conecta.php"); 

$nome = $_SESSION['nome'];

if(isset($_POST['enviarValor'])){
    $valor =  $_POST['valor'];
	$nome = utf8_encode($_SESSION['nome']);
	
	$sql = "INSERT INTO doacoes (nome, valor) VALUES ('$nome','$valor')";
    
	try {
		$consulta = $link->prepare($sql);
	
		$consulta->execute();

		header("Location:../index.php");

	}
	catch(PDOException $ex){
		echo($ex->getMessage());
	}
}
?>

