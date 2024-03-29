<?php
    require "funcoes.php";
    require "conecta.php"; 

    $email = isset($_POST['email']) ? $_POST['email'] : '';
    $senha = isset($_POST['senha']) ? $_POST['senha'] : '';
    if (empty($email) || empty($senha)){
    	echo "Informe email e senha";
    	exit;
    }

    $senhaHash = make_hash($senha);
    $query = "SELECT id, nome FROM users WHERE email = :email AND senha = :senha";
    $stmt = $link->prepare($query);
    $stmt->bindParam(':email', $email);
    $stmt->bindParam(':senha', $senhaHash);
    $stmt->execute();
    $usuario = $stmt->fetchAll(PDO::FETCH_ASSOC);
    if (count($usuario) <= 0){	
        header('Location: ../index.php');
        exit;
    }

    $usuario = $usuario[0];
    session_start();
    $_SESSION['logged_in'] = true;
    $_SESSION['id'] = $usuario['id'];
    $_SESSION['nome'] = $usuario['nome'];
    header('Location: ../index.php');
?>