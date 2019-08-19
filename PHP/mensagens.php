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

if(isset($_POST['enviar-mensagem'])){
    $mensagem =  utf8_encode($_POST['mensagem']);
	$nome = utf8_encode($_SESSION['nome']);
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

