<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <title>QuickControl - Bem-vindo</title>

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
	<!--BARRA DE NAVEGA��O[NAVBAR] �LTIMA COISA A SER ARRUMADA-->
  <nav class="blue-grey" role="navigation">
    <div class="nav-wrapper container">
      <a id="logo-container" href="index.jsp" class="brand-logo center white-text">QuickControl</a>
      <ul id="nav-mobile" class="side-nav">
        <li><a href="#">Menu</a></li>
      </ul>
      <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
    </div>
  </nav>
  <!--Conte�do Principal-->
    <div class="container ">
      <div class="row sidebar">
        <div id="titulo">
          <h2 class="center">Seja bem-vindo ao QuickControl!</h2>
          <br>
        </div>
        <div class="divider"></div>
        <div id="entrar" class="section col s6">
          <div id="titulo">
            <h2 class="center">Realize seu login</h2>
          </div>
          <div id="formulario">
            <form action="realizarLogin.jsp">
              <div id="email" class="input-field col s12">
                <input name="email-logar" placeholder="Insira seu email" id="email-logar" type="text" class="validate">
                <label for="email-logar">Email</label>
              </div>
              <div id="senha" class="input-field col s12">
                <input name="senha-logar" placeholder="Insira sua senha" id="senha-logar" type="password" class="validate">
                <label for="senha-logar">Senha</label>
              </div>
              <div id="vazio" class="input-field col s12">
                <br><br><br>
              </div>
              <br>
              <div id="button" class="center">
                <input type="submit" class="btn-large waves-effect waves-light blue-grey" value="Entrar!">
              </div>
            </form>
          </div>
        </div>
        <div id="login" class="section col s6">
          <div id="titulo">
            <h2 class="center">Registre-se</h2>
          </div>
          <div id="formulario">
            <form action="cadastrarUsuario.jsp">
              <div id="nome" class="input-field col s12">
                <input id="nome" type="text" name="nome" placeholder="Seu nome e sobrenome" class="validate">
                <label for="nome">Nome</label>
              </div>
              <div id="email" class="input-field col s12">
                <input id="email-cadastrar" type="email" name="email-cadastrar" placeholder="exemplo@dominio.com" class="validate">
                <label for="email-cadastrar" data-error="Email inv�lido" data-sucess="Email v�lido">Email</label>
              </div>
              <div id="senha" class="input-field col s12">
                <input id="senha-cadastrar" type="password" name="senha-cadastrar" placeholder="Defina uma senha" class="validate">
                <label for="senha-cadastrar">Senha</label>
              </div>
              <br>
              <div id="button" class="center">
                <input type="submit" class="btn-large waves-effect waves-light blue-grey" value="Cadastre-se" onclick="return valida()" >
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  <!-- Modal Structure -->
  <div id="modal1" class="modal bottom-sheet">
    <div class="modal-content">
      <h4>Modal Header</h4>
      <p>A bunch of text</p>
    </div>
    <div class="modal-footer">
      <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat">Agree</a>
    </div>
  </div> 
  <br><br><br><br><br><br><br>
   <!--Rodap�-->
  <footer class="page-footer blue-grey">
    <div class="container">
      <div class="row">
        <div class="col 16 s12">
          <h6>Sobre n�s:</h6>
          <p class="white-text">Controle suas finan�as, realize a gest�o dos seus neg�cios, crie sua conta e facilite sua vida. QuickControl � o sistema que tem tudo que voc� precisa para administrar seu dinheiro.</p>
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