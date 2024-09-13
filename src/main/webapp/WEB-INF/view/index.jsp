<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quadrados Clicáveis</title>
    <style>
        /* Estilos para o corpo da página */
        body {
            background-color: #140f0f; /* Cor de fundo preto */
            margin: 0;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            min-height: 100vh;
        }

        /* Estilos para o título */
        h1 {
            color: white; /* Cor do texto do título em branco */
        }

        /* Estilos para o contêiner de quadrados */
        .container {
            display: flex;
            flex-wrap: wrap; /* Permite que os quadrados se movam para a próxima linha se necessário */
            gap: 5%; /* Espaçamento horizontal entre os quadrados */
        }

        /* Estilos para os quadrados */
        .square {
            width: 30%;
            aspect-ratio: 1; /* Mantém a proporção 1:1 para largura e altura */
            background-color: #e74c3c; /* Cor de fundo vermelho */
            display: flex;
            align-items: center; /* Alinhamento vertical */
            justify-content: center; /* Alinhamento horizontal */
            color: white;
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 20px; /* Espaçamento vertical entre os quadrados */
            text-decoration: none; /* Remove a sublinha dos links */
        }

        /* Estilo ao passar o mouse sobre o quadrado */
        .square:hover {
            background-color: #c0392b; /* Muda a cor de fundo ao passar o mouse */
            cursor: pointer; /* Muda o cursor ao passar o mouse */
        }
    </style>
</head>
<body>
    <h1 class="container">Personagens</h1>
    <div class="container ">
        <!-- Quadrados clicáveis -->
        <a href="./ficha/Abominação" class="square ">Abominação</a>
        <a href="./ficha/antiquario" class="square ">Antiquário</a>
        <a href="./ficha/besteiro" class="square ">Besteiro</a>
        <a href="./ficha/cacador" class="square ">Caçador de Recompensas</a>
        <a href="./ficha/cruzador" class="square ">Cruzador</a>
        <a href="./ficha/ladrao" class="square ">Ladrão de Tumulos</a>
        <a href="./ficha/barbaro" class="square ">Barbaro</a>
        <a href="./ficha/assaltante" class="square ">Assaltante</a>
        <a href="./ficha/mestre" class="square ">Mestre de Caça</a>
        <a href="./ficha/coringa" class="square ">Coringa</a>
        <a href="./ficha/leproso" class="square ">Leproso</a>
        <a href="./ficha/homem" class="square ">Homem de Armas</a>
        <a href="./ficha/ocultista" class="square ">Ocultista</a>
        <a href="./ficha/doutor" class="square ">Doutor da Peste</a>
        <a href="./ficha/paladino" class="square ">Paladino</a>
    </div>
</body>
</html>