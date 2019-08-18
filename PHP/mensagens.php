<?php
session_start();
date_default_timezone_set('America/Sao_Paulo');
include("conecta.php"); 

if(isset($_POST['enviar-mensagem'])){
    $mensagem =  utf8_encode($_POST['mensagem']);
	$nome = utf8_encode($_SESSION['nome']);
	$avatar = utf8_encode($_SESSION['avatar']);
	$data = date('Y/m/d/H:i:s');
	
    $sql = "INSERT INTO mensagens (mensagem, nome, dataMsg, avatar) VALUES ('$mensagem', '$nome', '$data', '$avatar')";
    
	try {
		$consulta = $link->prepare($sql);
	
		$consulta->execute();

		header("Location:../chat.php");

	}
	catch(PDOException $ex){
		echo($ex->getMessage());
	}
}
?>

