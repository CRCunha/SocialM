<?php
date_default_timezone_set('America/Sao_Paulo');
include("conecta.php");
require 'funcoes.php';

if(isset($_POST['register'])){
	$nome = $_POST['nome'];
	$email =$_POST['email']; 
	$senha = $_POST['senha'];
	$senhaHash = make_hash($senha);
	$sql = "INSERT INTO users (nome, email, senha) VALUES ('$nome','$email','$senhaHash')";
	try {
		$consulta = $link->prepare($sql);
	
		$consulta->execute();
		echo ("Incluido com sucesso!");
		header("Location:../index.php");
	}
	catch(PDOException $ex){
		echo($ex->getMessage());
	}
}
?>

