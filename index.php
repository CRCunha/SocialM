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
    <link rel="stylesheet" href="CSS/STYLES/INDEX/MAIN/main-info.css">
    <link rel="stylesheet" href="CSS/STYLES/INDEX/MAIN/grupo-container.css">
    <link rel="stylesheet" href="CSS/STYLES/INDEX/MODAL AVATAR/modal-avatar.css">
    <link rel="stylesheet" href="CSS/STYLES/INDEX/MODAL AVATAR/log-ger.css">
    <link rel="stylesheet" href="CSS/STYLES/INDEX/MODAL AVATAR/modal-perfil.css">
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
                    <div class="avatar" onclick="modalAvatar()">
                    </div>
                </div>
            </nav>
            <div class="news">
                <div class="container">
                    <div class="title">D-Mountain</div>
                    <div class="sub">Is the beginning of an academic creation for a final project.</div>
                </div>
            </div>
            <div class="main-info">
                <div class="card" id="card">
                    <div class="info-top">
                        <div class="info-top-dia" id="info-top-dia"></div>
                        <div class="info-top-data" id="info-top-data"></div>
                    </div>
                </div>
            </div>
        </header>
        <div class="grupo-container">
            <div class="card-grupo">
                <div class="linha" id="linha"></div>
                <div class="btn-container">
                    <a href="chat.php">D-Chat <img src="IMG/MAIN/chat.png" alt="chat"></a>
                </div>
            </div>
        </div>
        <div class="modalAvatar">
            <div class="close-container">
                <img onclick="modalAvatarClose()" src="IMG/MODAL AVATAR/close.png">
            </div>
            <?php if (isLoggedIn() == false): ?>
            <div class="btn-form">
                <div class="container">
                    <div class="btn" onclick="login()">Login</div>
                    <div class="btn" onclick="register()">Register</div>
                    <div class="container-form-log">
                        <form action="PHP/logar.php" method="post">
                            <div class="email">
                                <div class="icon">
                                    <img src="IMG/MODAL AVATAR/email.png" alt="email">
                                </div>
                                <div class="input">
                                    <input type="email" name="email" id="email">
                                </div>
                            </div>
                            <div class="senha">
                                <div class="icon">
                                    <img src="IMG/MODAL AVATAR/senha.png" alt="senha">
                                </div>
                                <div class="input">
                                    <input type="password" name="senha" id="senha">
                                </div>
                            </div>
                            <input type="submit" name="enviar" value="Enviar">
                        </form>
                    </div>

                    <div class="container-form-reg">
                        <form action="PHP/register.php" method="post">
                            <div class="email">
                                <div class="icon">
                                    <img src="IMG/MODAL AVATAR/nome.png" alt="nome">
                                </div>
                                <div class="input">
                                    <input type="text" name="nome" id="email">
                                </div>
                            </div>
                            <div class="email">
                                <div class="icon">
                                    <img src="IMG/MODAL AVATAR/email.png" alt="email">
                                </div>
                                <div class="input">
                                    <input type="email" name="email" id="email">
                                </div>
                            </div>
                            <div class="senha">
                                <div class="icon">
                                    <img src="IMG/MODAL AVATAR/senha.png" alt="senha">
                                </div>
                                <div class="input">
                                    <input type="password" name="senha" id="senha">
                                </div>
                            </div>
                            <input type="submit" name="register" value="Enviar">
                        </form>
                    </div>

                </div>
            </div>
            <?php else: ?>
            <div class="modal-perfil">
                <div class="container">
                    <a href="perfil.php">
                        <img src="IMG/HEADER/NAV/avatar.jpeg">
                    </a>
                    <!-- <div class="text">Perfil</div> -->
                </div>
            </div>
            <?php endif; ?>
    </body>

    <script>
        window.onload = function() {
            pegarDia();
        };
    </script>

</html>