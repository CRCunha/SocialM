<?php
date_default_timezone_set('America/Sao_Paulo');
session_start();
include("conecta.php");
require 'funcoes.php';

if(isset($_POST['enviar'])){
	$nome = $_SESSION['nome'];
	$id = $_POST['id']; 
	$like = $_POST['like']; 

	$like = $like + 1;

	$sql = "UPDATE posts SET likeP = $like WHERE (id = $id)";

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

