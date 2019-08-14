<?php
include("conecta.php");
$sql = "select * from posts";
	try {
		$consulta = $link->prepare($sql);
		$consulta->execute();
		while ($registro = $consulta->fetch(PDO::FETCH_ASSOC)) {
			$nome = utf8_decode($registro['nome']);
			$titulo = utf8_decode($registro['titulo']);
			$info = utf8_decode($registro['info']);
			$avatar = $registro['avatar'];
			$imagem = $registro['imagem'];
			echo "
			<!-- POSTS -->
			<div class='posts'>
				<div class='post'>
					<div class='post-header'>
						<div class='container'>
							<div class='avatar' style='background-image: url('$avatar'); background-position: center; background-size: cover;'></div>
							<div class='nome'>$nome</div>
						</div>
					</div>
					<div class='post-background' style='background-image: url('$imagem'); background-position: center; background-size: cover;'></div>
					<div class='post-infos'>
						<div class='title'>
							<div class='container'>$titulo</div>
						</div>
						<div class='description'>
							<div class='container'>
								$info
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- POSTS -->
		";?>
		<?php
		}
	}
	catch(PDOException $ex){
		echo($ex->getMessage());
	}
?>