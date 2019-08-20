<div class='posts'>
		<div class='post'>
			<div class='post-header'>
				<div class='container'>
					<div class='avatar' style='background-image: url("<?=$avatar?>"); background-position: center; background-size: cover;'></div>
					<div class='nome' id='nomePerf'>
						<form action="PHP/excluir-posts-perfil.php" method="post">
							<input type="hidden" name="excluirId" id="excluirId" value="<?=$id?>">
							<div class="excluir">
								<input type="submit" value="" id="btn-excluir" name="excluirPost">
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class='post-background' style='background-image: url("<?=$imagem?>"); background-position: center; background-size: cover;'></div>
			<div class='post-infos'>
				<div class='title'>
					<div class='container'><?=$titulo?></div>
				</div>
				<div class='description'>
					<div class='container'>
						<?=$info?>
					</div>
				</div>
			</div>
		</div>
	</div>