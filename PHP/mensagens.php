<?php
session_start();
date_default_timezone_set('America/Sao_Paulo');
include("conecta.php"); 

if(isset($_POST['enviar-mensagem'])){
    $mensagem =  utf8_encode($_POST['mensagem']);
	$nome = utf8_encode($_SESSION['nome']);
	$data = date('Y/m/d/H:i:s');
	
    $sql = "INSERT INTO mensagens (mensagem, nome, dataMsg) VALUES ('$mensagem', '$nome', '$data')";
    
	try {
		$consulta = $link->prepare($sql);
	
		$consulta->execute();
		// echo ("Incluido com sucesso!");
		header("Location:../chat.php");
		// echo($nome);
	}
	catch(PDOException $ex){
		echo($ex->getMessage());
	}
}
?>

