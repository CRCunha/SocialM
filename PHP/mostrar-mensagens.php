<?php
include("conecta.php");
$dataH = date('Y/m/d');

$sql = "SELECT * FROM mensagens WHERE dataMsg >= '$dataH' ORDER BY dataMsg DESC";
	try {
		$consulta = $link->prepare($sql);
		$consulta->execute();
		while ($registro = $consulta->fetch(PDO::FETCH_ASSOC)) {
			$nome = utf8_decode($registro['nome']);
			$mensagem = utf8_decode($registro['mensagem']);
			$avatar = $registro['avatar'];
			$data = $registro['dataMsg'];
			echo "
            <div class='quadro'>
                <div class='linha-chat' id='linha-chat'></div>
				<div class='info '>
					<div class='avatar' style='background-image: url($avatar); background-position: center; background-size: cover;'></div>
					<div class='nome'>$nome:</div>
					<div class='mensagem'>$mensagem</div></div>
			</div>
			<div class='data'>
				<div class='container' id='data-container'>$data</div>
			</div>
		";
		}
	}
	catch(PDOException $ex){
		echo($ex->getMessage());
	}
?>