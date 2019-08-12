<!DOCTYPE html>
<html>

<head lang="pt-br">
    <title>App</title>
    <!--METAS-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="keywords" content="web, developer, design, layout, UI, UX">
    <meta name="language" content="PT-BR">
    <meta name="author" content="Nome">
    <meta name="robots" ontent="noindex">
    <meta name="googlebot" content="noindex">
    <!--LINKS-->
    <link rel="stylesheet" href="CSS/GERAL/GERAL.css">
    <link rel="stylesheet" href="CSS/NORMALIZE/NORMALIZE.css">
    <link rel="stylesheet" href="CSS/STYLES/PERFIL/HEADER/header.css">
    <link rel="stylesheet" href="CSS/STYLES/PERFIL/HEADER/card-infos.css">
    <link rel="stylesheet" href="CSS/STYLES/PERFIL/HEADER/card-background.css">
    <script type="text/javascript" src="JS/functions.js">
    </script>
    <!--FONTES-->
    <link href="https://fonts.googleapis.com/css?family=Nunito&display=swap" rel="stylesheet">
    <!--FAV ICON-->
    <link rel="shortcut icon" href="IMG/fav.png" />
</head>

<?php
    session_start();
    require "PHP/funcoes.php";
    require "PHP/conecta.php";

    $nome = $_SESSION['nome'];
    $sql = "SELECT background FROM users WHERE nome LIKE '$nome'";
    
    $sql2 ="SELECT avatar FROM users WHERE nome LIKE '$nome'";

    try {
        $consulta = $link->prepare($sql);
        $consulta->execute();
        while ($registro = $consulta->fetch(PDO::FETCH_ASSOC)) {
            $background = utf8_decode($registro['background']);
        }
    }
    catch(PDOException $ex){
        echo($ex->getMessage());
    }
    try {
        $consulta = $link->prepare($sql2);
        $consulta->execute();
        while ($registro = $consulta->fetch(PDO::FETCH_ASSOC)) {
            $avatar = utf8_decode($registro['avatar']);
        }
    }
    catch(PDOException $ex){
        echo($ex->getMessage());
    }
?>

    <body>
        <header style="background-image: url('<?=$background?>'); background-size: cover; background-position: center;">
            <nav>
                <div class="container">
                    <div class="img" onclick=modalBc()>
                        <img src="IMG/PERFIL/edit.png">
                    </div>
                </div>
            </nav>
        </header>
        <div class="card-infos">
            <div class="card">
                <div class="avatar-container">
                    <div class="avatar">
                        <img onclick=modalAv() src="<?=$avatar?>">
                    </div>
                </div>
                <div class="nome">
                    <?php if (isLoggedIn()): ?>
                    <?php echo $_SESSION['nome']; ?>
                    <?php else: ?> pq?!
                    <?php endif; ?>
                    <img onclick=modalNm() src="IMG/PERFIL/edit.png">
                </div>
                <div class="voltar">
                    <a href="index.php">
                        <img src="IMG/CHAT/voltar.png">
                    </a>
                </div>
            </div>
        </div>
        <div class="card-background" id="card-background">
            <div class="card">
                <div class="title">Change Background</div>
                <form action="PHP/background.php" method="post">
                    <input type="text" name="background" id="background">
                    <input type="submit" value="Enviar" name='enviar-background'>
                </form>
            </div>
        </div>
        <div class="card-background" id="card-nome">
            <div class="card">
                <div class="title">Change Name</div>
                <form action="PHP/nome.php" method="post">
                    <input type="text" name="nome" id="nome">
                    <input type="submit" value="Enviar" name='enviar-nome'>
                </form>
            </div>
        </div>
        <div class="card-background" id="card-avatar">
            <div class="card">
                <div class="title">Change Avatar</div>
                <form action="PHP/avatar.php" method="post">
                    <input type="text" name="nome" id="nome">
                    <input type="submit" value="Enviar" name='enviar-avatar'>
                </form>
            </div>
        </div>
    </body>

</html>