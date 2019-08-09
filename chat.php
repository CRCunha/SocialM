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
    <link rel="stylesheet" href="CSS/STYLES/INDEX/HEADER/header.css">
    <link rel="stylesheet" href="CSS/STYLES/CHAT/chat.css">
    <link rel="stylesheet" href="CSS/STYLES/CHAT/mensagens.css">
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
?>

    <body>
        <header>
            <nav>
                <div class="container">
                    <?php ?>
                    <?php if (isLoggedIn()): ?>
                    <div class="top">Olá
                        <?php echo $_SESSION['nome']; ?>
                        <a id="logout" href="PHP/deslogar.php"><img src="IMG/HEADER/NAV/deslogar.png"></a>
                    </div>
                    <?php else: ?>
                    <div class="top"></div>
                    <?php endif; ?>
                    <div id="chat-voltar" class="avatar" onclick="voltar()">
                        <a href="../index.php"></a>
                    </div>
                </div>
            </nav>
            <div class="news">
                <div class="container">
                    <div class="title">D-Chat</div>
                    <div class="sub">Is the chat to D-Mountain users.</div>
                </div>
            </div>
        </header>
        
        <div class="form-chat">
            <form action="PHP/mensagens.php" method="post">
                <div class="input-msg">
                    <div class="img"><img src="IMG/MAIN/chat.png"></div>
                    <input type="text" name="mensagem" id="mensagem">
                </div>
                <div class="submit">
                <?php if (isLoggedIn()): ?>
                    <input type="submit" value="Enviar" name="enviar-mensagem">
                <?php endif; ?>
                </div>
            </form>
        </div>
    </body>


    <div class="mensagens">
        <?php
        include("PHP/mostrar-mensagens.php");
        ?>
    </div>

    <script>
        window.onload = function() {
            pegarDia();
        };
    </script>

</html>