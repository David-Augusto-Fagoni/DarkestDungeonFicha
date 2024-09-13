<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${personagem.nome}</title>
    <style>
        /* Define o fundo preto para a página inteira */
        body {
            background-color: #140f0f;
            color: white; /* Define a cor do texto como branco para melhor contraste */
            margin: 0;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column; /* Alinha os itens na coluna */
        }

        /* Estilo para a div centralizada com a borda vermelha */
        .borda-vermelha {
            border: 5px solid red; /* Define a borda vermelha */
            padding: 20px;
            text-align: center;
            width: 80%; /* Ajusta a largura para 80% da tela */
            display: grid; /* Define o container como um grid */
            gap: 20px; /* Adiciona um espaçamento entre os itens do grid */
        }
        .status{
        	grid-template-columns: repeat(8, 1fr);
        }
        .resistencia{
        	grid-template-columns: repeat(8, 1fr);
        }
        .nome{
        	grid-template-columns: repeat(1, 1fr);
        }
		.ataque{
        	grid-template-columns: repeat(8, 1fr);
        }
        .proprio{
        	grid-template-columns: repeat(3, 1fr);
        }
        .buff{
        	grid-template-columns: repeat(5, 1fr);
        }
        /* Estilo para os itens do grid */
        .item {
            color: white; /* Texto preto para contraste */
            padding: 20px;
            border-right:solid red;
            border-:solid red;
            border-radius: 5px;
        }

        /* Estilo para o título no topo */
        h1 {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <!-- Título no topo da página -->
    <h1>${personagem.nome}</h1>
    <div>
    
    
    </div>
    <h1>Status</h1>

    <!-- Div com borda vermelha transformada em grid -->
    <div class="borda-vermelha status">
   		<div class="item"> </div>
        <div class="item">Vida</div>
        <div class="item">Esquiva</div>
        <div class="item">Proteção</div>
        <div class="item">Velocidade</div>
        <div class="item">Precisão Mod</div>
        <div class="item">Critico</div>
        <div class="item">Dano</div>
        
        <div class="item">Nivel 1</div>
        <div class="item">${personagem.vida[0]}</div>
        <div class="item">${personagem.esquiva[0]}</div>
        <div class="item">${personagem.protecao[0]}</div>
        <div class="item">${personagem.velocidade[0]}</div>
        <div class="item">${personagem.precisaoMOD[0]}</div>
        <div class="item">${personagem.critico[0]}</div>
        <div class="item">${personagem.dano[0]}</div>
        
        <div class="item">Nivel 2</div>
        <div class="item">${personagem.vida[1]}</div>
        <div class="item">${personagem.esquiva[1]}</div>
        <div class="item">${personagem.protecao[1]}</div>
        <div class="item">${personagem.velocidade[1]}</div>
        <div class="item">${personagem.precisaoMOD[1]}</div>
        <div class="item">${personagem.critico[1]}</div>
        <div class="item">${personagem.dano[1]}</div>
        
        <div class="item">Nivel 3</div>
        <div class="item">${personagem.vida[2]}</div>
        <div class="item">${personagem.esquiva[2]}</div>
        <div class="item">${personagem.protecao[2]}</div>
        <div class="item">${personagem.velocidade[2]}</div>
        <div class="item">${personagem.precisaoMOD[2]}</div>
        <div class="item">${personagem.critico[2]}</div>
        <div class="item">${personagem.dano[2]}</div>

        <div class="item">Nivel 4</div>
        <div class="item">${personagem.vida[3]}</div>
        <div class="item">${personagem.esquiva[3]}</div>
        <div class="item">${personagem.protecao[3]}</div>
        <div class="item">${personagem.velocidade[3]}</div>
        <div class="item">${personagem.precisaoMOD[3]}</div>
        <div class="item">${personagem.critico[3]}</div>
        <div class="item">${personagem.dano[3]}</div>
        
        <div class="item">Nivel 5</div>
        <div class="item">${personagem.vida[4]}</div>
        <div class="item">${personagem.esquiva[4]}</div>
        <div class="item">${personagem.protecao[4]}</div>
        <div class="item">${personagem.velocidade[4]}</div>
        <div class="item">${personagem.precisaoMOD[4]}</div>
        <div class="item">${personagem.critico[4]}</div>
        <div class="item">${personagem.dano[4]}</div>
    </div>
    <h1> </h1>
    
    <h1>Resistencias</h1>
    <div class="borda-vermelha resistencia">
        <div class="item">Atordoamento</div>
        <div class="item">Envenenamento</div>
        <div class="item">Doença</div>
        <div class="item">Morte</div>
        <div class="item">Movimento</div>
        <div class="item">Sangramento</div>
        <div class="item">Debuff</div>
        <div class="item">Armadilha</div>
        
        <div class="item">${personagem.resistencia[0].valor}</div>
        <div class="item">${personagem.resistencia[1].valor}</div>
        <div class="item">${personagem.resistencia[2].valor}</div>
        <div class="item">${personagem.resistencia[3].valor}</div>
        <div class="item">${personagem.resistencia[4].valor}</div>
        <div class="item">${personagem.resistencia[5].valor}</div>
        <div class="item">${personagem.resistencia[6].valor}</div>
        <div class="item">${personagem.resistencia[7].valor}</div>
    </div>
    <h1> </h1>
    <h1>Habilidades</h1>
    <c:forEach var="p" items="${personagem.proprio}">
		<div class="borda-vermelha nome">
			<h3>${p.nome}</h3>
		</div>
		<div class="borda-vermelha proprio">
			<div>Local</div>
			<div>Efeito</div>
			<div>Em sí</div>
			
			<div>
				<c:forEach var="po" items="${p.local}">
					${po}
				</c:forEach>
			</div>
			<div>
				<c:forEach var="po" items="${p.efeito}">
					<div>${po}</div>
				</c:forEach>
			</div>
			<div>
				<c:forEach var="po" items="${p.si}">
					<div>${po}</div>
				</c:forEach>
			</div>
		</div>
		<h1> </h1>
    </c:forEach>
    
    
    <c:forEach var="p" items="${personagem.ataque}">
		<div class="borda-vermelha nome">
			<h3>${p.nome}</h3>
		</div>
		<div class="borda-vermelha ataque">
			<div>Estilo</div>
			<div>Local</div>
			<div>Alvo</div>
			<div>Precisão</div>
			<div>MOD dano</div>
			<div>MOD critico</div>
			<div>Efeito</div>
			<div>Em sí</div>
			
			<div>
				<c:if test="${p.corpo}"> 
					Corpo-a-Corpo
				</c:if>
				<c:if test="${!p.corpo}"> 
					Á Distancia
				</c:if>
			</div>
			<div>
				<c:forEach var="po" items="${p.local}">
					${po}
				</c:forEach>
			</div>
			<div>
				<c:forEach var="po" items="${p.atingir}">
					${po}
				</c:forEach>
			 </div>
			<div>${p.precisao}</div>
			<div>${p.danoMOD}</div>
			<div>${p.criticoMOD}</div>
			<div>
				<c:forEach var="po" items="${p.efeito}">
					<div>${po}</div>
				</c:forEach>
			</div>
			<div>
				<c:forEach var="po" items="${p.si}">
					<div>${po}</div>
				</c:forEach>
			</div>
		</div>
		<h1> </h1>
    </c:forEach>
    
        <c:forEach var="p" items="${personagem.buff}">
		<div class="borda-vermelha nome">
			<h3>${p.nome}</h3>
		</div>
		<div class="borda-vermelha buff">
			<div>Local</div>
			<div>Alvo</div>
			<div>Cura</div>
			<div>Efeito</div>
			<div>Em sí</div>
			
			<div>
				<c:forEach var="po" items="${p.local}">
					${po}
				</c:forEach>
			</div>
			<div>
				<c:forEach var="po" items="${p.atingir}">
					${po}
				</c:forEach>
			</div>
			<div>${p.cura}</div>
			<div>
				<c:forEach var="po" items="${p.efeito}">
					<div>${po}</div>
				</c:forEach>
			</div>
			<div>
				<c:forEach var="po" items="${p.si}">
					<div>${po}</div>
				</c:forEach>
			</div>
		</div>
		<h1> </h1>
    </c:forEach>
</body>
</html>



