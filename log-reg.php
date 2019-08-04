<!DOCTYPE html>
<html>

<head lang="pt-br">
    <title>EDITAR</title>
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
    <link rel="stylesheet" href="CSS/STYLES/LOG-REG/HEADER/header.css">
    <link rel="stylesheet" href="CSS/STYLES/LOG-REG/MAIN/main.css">
    <!--FONTES-->
    <link href="https://fonts.googleapis.com/css?family=Nunito&display=swap" rel="stylesheet">
    <!--FAV ICON-->
    <link rel="shortcut icon" href=" " />
</head>

<body>
    <header></header>
    <main>
        <div class="main-card">
            <form action="register.php" method="POST">
                <input type="text" name="nome" id="nome" placeholder="Nome:" autocomplete="off">
                <input type="email" name="email" id="email" placeholder="Email:"  autocomplete="off">
                <input type="password" name="senha" id="senha" placeholder="Senha:" autocomplete="off">
                <input type="submit" name="register" id="register" value="Registrar">
                <input type="submit" name="log" id="log" value="Logar">
            </form>
        </div>
    </main>
</body>

</html>