<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <title>Nosso project</title>

  <!-- CSS  -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  <link href="css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  <style>  
    .oo{
      border-bottom: 1px solid #cccccc;
      width: 100%;
    }

    .image{
      -webkit-filter: grayscale(100%);
    }

    .image:hover{
      -webkit-filter:grayscale(0%);
      transition: 1s;
    }
  </style>
</head>
<body>
  <!--BARRA DE NAVEGAÇÃO[NAVBAR] ÚLTIMA COISA A SER ARRUMADA-->
  <nav class="blue-grey" role="navigation">
    <div class="nav-wrapper container">
      <a id="logo-container" href="index.jsp" class="brand-logo center white-text">QuickkControl</a>
      <ul id="nav-mobile" class="side-nav">
        <li><a href="#">Menu</a></li>
      </ul>
      <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
    </div>
  </nav>
  <!--CONTAINER CONTENDO A MENSAGEM DE OBRIGADO.ASP-->
  <div class="container">
    <div class="col s12">
    <br><br><br><br><br><br><br><br><br>
  		<h2 class="center">Obrigado pelo seu cadastro!</h2>	
      <br>
      <br>
      <br>
  	</div>
  	<div class="row center">
  		<a href="login.jsp" class="btn-large waves-effect waves-light blue-grey">Voltar</a>
		</div>
		<br><br>
  </div>
  <br><br><br><br><br><br><br><br><br>

  <!--Rodapé-->
  <footer class="page-footer blue-grey">
    <div class="container">
      <div class="row">
        <div class="col 16 s12">
          <h6>Sobre nós:</h6>
          <p class="white-text">Controle suas finanças, realize a gestão dos seus negócios, crie sua conta e facilite sua vida. QuickControl é o sistema que tem tudo que você precisa para administrar seu dinheiro.</p>
        </div>
        <div class="col 16 s12">
          <h6 class="white-text oo">Nos acompanhe para futuras novidades!</h6>
          <a href="#"><img src="facea32.png" class="image"></a>
          <a href="#"><img src="insta32.png" class="image"></a>
          <a href="#"><img src="twitter32.png" class="image"></a>
          <a href="#"><img src="google32.png" class="image"></a>
        </div>
      </div>
    </div>
    <div class="footer-copyright">
      <div class="container">
      Este site foi criado usando <a class="red-text" href="http://materializecss.com">Materialize</a>
      </div>
    </div>
  </footer> 
  
  <!--  Scripts-->
  <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
  <script src="js/materialize.js"></script>
  <script src="js/init.js"></script>

  </body>
</html>