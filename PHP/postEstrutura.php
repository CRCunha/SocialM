<div class='posts'>
    <div class='post'>
        <div class='post-header'>
            <div class='container'>
                <div class='avatar' style='background-image: url("<?=$avatar?>"); background-position: center; background-size: cover;'></div>
                <div class='nome'>
                    <?=$nome?>
                </div>
            </div>
        </div>
        <div class='post-background' style='background-image: url("<?=$imagem?>");background-position: center; background-size: cover;<?php if($prioridade == ' alta '){echo("border-bottom: solid 3px rgba(186, 213, 130, 0.8)");}?>;'></div>
        <div class='post-infos'>
            <div class='title'>
                <div class='container'>
                    <?=$titulo?>
                </div>
            </div>
            <div class='description'>
                <div class='container'>
                    <?=$info?>
                </div>
                <div class='controle'>
                    <div class="img1" onclick="like()">
                        <form action="PHP/like.php" method="post">
                            <?php if (isLoggedIn()): ?>
                            <input style="display: none" type="number" name="id" id="like" value="<?=$id?>">
                            <input style="display: none" type="number" name="like" id="like" value="<?=$like?>">
                            <input type="submit" name="enviar" value="<?=$like?>" style="width: 100%; height:100%; background-color: transparent;border: none;">
                            <?php else: ?>
                            <input disabled type="none" name="enviar" value="<?=$like?>" style="width: 100%; height:100%; background-color: transparent;border: none; text-align: center;">
                            <?php endif; ?>
                        </form>
                    </div>
                    <div class="img2">
                        <form action="PHP/star.php" method="post">
                            <?php if (isLoggedIn()): ?>
                            <input style="display: none" type="number" name="id" id="star" value="<?=$id?>">
                            <input style="display: none" type="number" name="star" id="star" value="<?=$star?>">
                            <input type="submit" name="enviar" value="<?=$star?>" style="width: 100%; height:100%; background-color: transparent;border: none;">
                            <?php else: ?>
                            <input disabled type="none" name="enviar" value="<?=$star?>" style="width: 100%; height:100%; background-color: transparent;border: none; text-align: center;">
                            <?php endif; ?>
                        </form>
                    </div>
                    <div class="img3" style=" background-image: url('../../../../IMG/POSTS/<?=$nivel?>.png');">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>