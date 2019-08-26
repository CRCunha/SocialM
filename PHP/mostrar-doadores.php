<?php
include("conecta.php");
$dataH = date('Y/m/d');
$soma = 0;
$sql = "SELECT * FROM doacoes WHERE dataDoacao >= '$dataH'";
	try {
		$consulta = $link->prepare($sql);
		$consulta->execute();
		while ($registro = $consulta->fetch(PDO::FETCH_ASSOC)) {
			$nome = utf8_decode($registro['nome']);
			$valor = $registro['valor'];
			$soma = $soma + $valor;
			echo("
				<div class='registro'>
					<div class='nome'>$nome</div>
					<div class='valor'>$valor R$</div>
				</div>
			");
		}
		echo("
			<div class='quantia'>QUANTIAr : $soma R$</div>
		");
	}
	catch(PDOException $ex){
		echo($ex->getMessage());
	}
?>
