<?php
session_start();
date_default_timezone_set('America/Sao_Paulo');
include("conecta.php"); 
$avatar = $_SESSION['avatar'];

if(isset($_POST['enviar-post'])){
	$titulo =  utf8_encode($_POST['titulo']);
	$info =  utf8_encode($_POST['info']);
	$nome = utf8_encode($_SESSION['nome']);
	$imagem =utf8_encode($_POST['imagem']);
	
    $sql = "INSERT INTO posts (titulo, info, nome, avatar, imagem) VALUES ('$titulo', '$info', '$nome', '$avatar', '$imagem')";
    
	try {
		$consulta = $link->prepare($sql);
	
		$consulta->execute();
		// echo ("Incluido com sucesso!");
		header("Location:../index.php");
		// echo($nome);
	}
	catch(PDOException $ex){
		echo($ex->getMessage());
	}
}
?>

