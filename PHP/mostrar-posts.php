<?php
include("conecta.php");
$sql = "select * from posts order by id DESC";
	try {
		$consulta = $link->prepare($sql);
		$consulta->execute();
		while ($registro = $consulta->fetch(PDO::FETCH_ASSOC)) {
			$nome = utf8_decode($registro['nome']);
			$titulo = utf8_decode($registro['titulo']);
			$info = utf8_decode($registro['info']);
			$avatar = $registro['avatar'];
			$imagem = $registro['imagem'];
			include("postEstrutura.php");
		}
	}
	catch(PDOException $ex){
		echo($ex->getMessage());
	}
?>
