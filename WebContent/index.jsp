<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <title>QuickControl - Home</title>

  <!-- CSS  -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  <link href="css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>

  <!--Estilos especiais feitos para página-->
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
  <!--Barra de navegação-->
  <nav class="blue-grey" role="navigation">
    <div class="nav-wrapper container">
      <a id="logo-container" href="index.jsp" class="brand-logo center white-text">QuickControl</a>
      <ul class="right hide-on-med-and-down">
        <li><a href="login.jsp" class="white-text">Entrar</a></li>
      </ul>
      <ul id="nav-mobile" class="side-nav">
        <li><a href="#">Menu</a></li>
      </ul>
      <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
    </div>
  </nav>
  <!--Banner central - 1ª Imagem -->
  <div id="index-banner" class="parallax-container">
    <div class="section no-pad-bot">
      <div class="container">
        <h1 class="header center blue-grey-text text-darken-1">QuickControl</h1>
        <div class="row center">
          <h5 class="header col s12 blue-grey-text text-darken-1">O seu programa para controle financeiro</h5>
        </div>
        <div class="row center">
          <a href="\teste\login.jsp" id="download-button" class="btn-large waves-effect waves-light blue-grey">Começar agora!</a>
        </div>
        <br><br>
      </div>
    </div>
    <div class="parallax"><img src="assin.jpg"></div>
  </div>
  <!--Container que contém os ícones e textos-->
  <div class="container">
    <div class="section">
      <div class="row">
        <div class="col s12 m4">
          <div class="icon-block">
            <h2 class="center blue-grey-text"><i class="material-icons">monetization_on</i></h2>
            <h5 class="center">Controle financeiro</h5>
            <p class="light">Tenha controle absoluto sobre todas suas movimentações. Veja como você está administrando seu dinheiro, e para onde ele está indo (ou sumindo!).</p>
          </div>
        </div>
        <div class="col s12 m4">
          <div class="icon-block">
            <h2 class="center blue-grey-text"><i class="material-icons">flash_on</i></h2>
            <h5 class="center">Rapidez</h5>
            <p class="light"> Organize de maneira rápida sua vida financeira com o QuickControl: um sistema financeiro leve e eficaz. A ferramenta para controlar sua vida financeira está enfim em suas mãos. </p>
          </div>
        </div>
        <div class="col s12 m4">
          <div class="icon-block">
            <h2 class="center blue-grey-text"><i class="material-icons">cloud</i></h2>
            <h5 class="center">Informação</h5>
            <p class="light">Tenha acesso às suas movimentações em qualquer lugar. Seja em casa, ou na rua, temos o melhor serviço pra você, tudo sem custo algum!</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- 2ª Imagem - Banner meio-->
  <div class="parallax-container valign-wrapper">
    <div class="section no-pad-bot">
      <div class="container">
        <div class="row center">
          <h5 class="header col s12 white-text">Sua vida financeira: eficiência corporativa.</h5>
        </div>
      </div>
    </div>
    <div class="parallax"><img src="imagem2.jpg" alt="Unsplashed background img 2"></div>
  </div>
  <!--Container com informações sobre nós-->
  <div class="container">
    <div class="section">
      <div class="row">
        <div class="col s12 center">
          <h3><i class="mdi-content-send brown-text"></i></h3>
          <h4>Sobre o sistema</h4>
          <p class="left-align light">O QuickControl é um programa para controle financeiro, seja pessoal ou empresarial.
          Voltado para os que desejam ter controle sobre suas finanças. Vamos até para os que apenas querem uma vida financeira mais organizada e tranquila. Sejam elas complexas ou simples,
          o QuickControl é o seu melhor amigo contra a má administração das suas finanças.</p>
        </div>
      </div>
    </div>
  </div>
  <!-- 3ª Imagem -->
  <div class="parallax-container valign-wrapper">
    <div class="section no-pad-bot">
      <div class="container">
        <div class="row center">
          <h5 class="header col s12 white-text">Todas as suas contas, feitas por você: em casa.</h5>
        </div>
      </div>
    </div>
    <div class="parallax"><img src="imagem3.jpg" alt="3"></div>
  </div> 
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