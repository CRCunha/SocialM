<?php
include("conecta.php");
$nome = $_SESSION['nome'];
$sql = "SELECT * FROM posts WHERE nome LIKE '$nome' ORDER BY id DESC";
	try {
		$consulta = $link->prepare($sql);
		$consulta->execute();
		while ($registro = $consulta->fetch(PDO::FETCH_ASSOC)) {
			$nome = utf8_decode($registro['nome']);
			$titulo = utf8_decode($registro['titulo']);
			$info = utf8_decode($registro['info']);
			$avatar = $registro['avatar'];
			$imagem = $registro['imagem'];
			$id = $registro['id'];
			include("postEstrutura-perfil.php");
		}
	}
	catch(PDOException $ex){
		echo($ex->getMessage());
	}
?>