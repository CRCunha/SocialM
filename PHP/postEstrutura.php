<div class='posts'>
		<div class='post'>
			<div class='post-header'>
				<div class='container'>
					<div class='avatar' style='background-image: url("<?=$avatar?>"); background-position: center; background-size: cover;'></div>
					<div class='nome'><?=$nome?></div>
				</div>
			</div>
			<div class='post-background' style='background-image: url("<?=$imagem?>");background-position: center; background-size: cover;<?php if($prioridade == 'alta'){echo("border-bottom: solid 3px rgba(186, 213, 130, 0.8)");}?>;'></div>
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