<?php
date_default_timezone_set('America/Sao_Paulo');
session_start();
include("conecta.php");
require 'funcoes.php';

if(isset($_POST['enviar'])){
	$nome = $_SESSION['nome'];
	$id = $_POST['id']; 
	$star = $_POST['star']; 

	$star  = $star + 1;

	$sql = "UPDATE posts SET starP = $star WHERE (id = $id)";

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

