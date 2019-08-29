<?php
include("conecta.php");
$dataH = date('Y/m/d');

$sql = "SELECT * FROM posts WHERE dataPost >= '$dataH' OR prioridade != 'baixa' ORDER BY prioridade, id DESC";
	try {
		$consulta = $link->prepare($sql);
		$consulta->execute();
		while ($registro = $consulta->fetch(PDO::FETCH_ASSOC)) {
			$nome = utf8_decode($registro['nome']);
			$titulo = utf8_decode($registro['titulo']);
			$info = utf8_decode($registro['info']);
			$avatar = $registro['avatar'];
			$imagem = $registro['imagem'];
			$prioridade = $registro['prioridade'];
			$id = $registro['id'];
			$like = $registro['likeP'];
			include("postEstrutura.php");
		}
	}
	catch(PDOException $ex){
		echo($ex->getMessage());
	}
?>
