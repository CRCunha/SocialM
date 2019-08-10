<?php
include("conecta.php");
$sql = "select * from mensagens order by dataMsg DESC";
	try {
		$consulta = $link->prepare($sql);
		$consulta->execute();
		while ($registro = $consulta->fetch(PDO::FETCH_ASSOC)) {
			$nome = utf8_decode($registro['nome']);
			$mensagem = utf8_decode($registro['mensagem']);
			$data = $registro['dataMsg'];
			echo "
            <div class='quadro'>
                <div class='linha-chat' id='linha-chat'></div>
				<div class='info '>
					<div class='nome'>$nome:</div>
					<div class='mensagem'>$mensagem</div></div>
			</div>
			<div class='data'>
				<div class='container' id='data-container'>$data</div>
			</div>
		";?>
		<?php
		}
	}
	catch(PDOException $ex){
		echo($ex->getMessage());
	}
?>