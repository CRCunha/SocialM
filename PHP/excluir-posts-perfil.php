<?php
include("conecta.php");
	
if(isset($_POST['excluirPost'])){
	$id = $_POST['excluirId'];
	
    $sql = "DELETE FROM posts WHERE id = $id";
    
	try {
		$consulta = $link->prepare($sql);
	
		$consulta->execute();

		header("Location:../perfil.php");
	}
	catch(PDOException $ex){
		echo($ex->getMessage());
	}
}
?>
