<?php
session_start();
date_default_timezone_set('America/Sao_Paulo');
include("conecta.php"); 

$nome = $_SESSION['nome'];
$sql2 ="SELECT avatar FROM users WHERE nome LIKE '$nome'";

try {
	$consulta = $link->prepare($sql2);
	$consulta->execute();
	while ($registro = $consulta->fetch(PDO::FETCH_ASSOC)) {
		$avatar = utf8_decode($registro['avatar']);
	}
}
catch(PDOException $ex){
	echo($ex->getMessage());
}

if(isset($_POST['enviar-post'])){
	$titulo =  utf8_encode($_POST['titulo']);
	$info =  utf8_encode($_POST['info']);
	$nome = utf8_encode($_SESSION['nome']);
	$imagem = utf8_encode($_POST['imagem']);

	if($nome == 'PROPAGANDA'){
		$prioridade = 'alta';
	}
	else{
		$prioridade = 'baixa';
	}
	
    $sql = "INSERT INTO posts (titulo, info, nome, avatar, imagem, prioridade) VALUES ('$titulo', '$info', '$nome', '$avatar', '$imagem', '$prioridade')";
    
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

