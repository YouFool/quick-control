<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
    <%@page import="pacote.UsuarioExistente"%>
    <%@page import="utilitarios.Formatadores"%>
    <%@page import="pacote.Saldos"%>
    <%    
    Saldos s = new Saldos();
      UsuarioExistente u = new UsuarioExistente();
    	if(session.getAttribute("sessaoUsuario") == null){
    		response.sendRedirect("index.jsp");	
    	}else{
    		u = (UsuarioExistente) session.getAttribute("sessaoUsuario");
    	}
  	%>
<!DOCTYPE html>
<html lang="pt-BR">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>QuickControl - Lançamentos</title>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#datepicker2" ).datepicker();
  } );
  </script>
    <!-- CSS  -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
    <link href="css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
	
	<style>
    

    .oo{
          
          font-size: 1.4em;
          line-height: 1.2em;
          margin: 0 0 10px;
          padding-bottom: 5px;
          border-bottom: 1px solid #D4D7DC;

    }

    .activel {
      text-align: center;
      background-color: #607d8b !important;
      }

       .side-nav li:hover{
        border-left: 10px solid #607d8b;
      }


      .sideba {
      display: inline;
      width: 90%;
      float: right;
      }

      .med{
        height: 64px;
        background-color: #607d8b !important; 
      }
      
      #but{
      color: gray;
      background: none;
      border: none;
      padding: 2px 15px;
      text-align: center;
      text-decoration: none;
      display: inline-block;
      font-size: 16px;
      margin: 4px 2px;
      cursor: pointer;

    }
      
    
  </style>
  </head>
  <body>
   <!--Menu-->
  <header>
    <nav class="top-nav blue-grey">
      <!--Menu vertical-->
      <ul id="nav-mobile" class="side-nav fixed" style="transform: translateX(-100%);">
          <li class="med"><div class="row center"><a class="activel" href="\teste\interno.jsp"><i class="large material-icons">home</i></a></div></li>
          <li class="bold"><a href="\teste\movimentacoes.jsp" class="waves-effect waves-blue-grey">Movimentações</a></li>
          <li class="bold"><a href="\teste\lancamentos.jsp" class="waves-effect waves-blue-grey">Lançamentos</a></li>
          <li class="bold"><a href="\teste\eventos.jsp" class="waves-effect waves-blue-grey">Eventos</a></li>
          <li class="bold"><a href="\teste\contatos.jsp" class="waves-effect waves-blue-grey">Contatos</a></li>
          <li class="bold"><a href="sair.jsp" class="waves-effect waves-blue-grey">Sair</a></li>
      </ul>
      <!--Botão-->
      <div class="container">
        <a href="#" data-activates="nav-mobile" class="button-collapse top-nav full hide-on-large-only">
          <i class="material-icons">menu</i>
        </a>
      </div>
      <!--Funções topo-menu-->
      <ul id="nav-mobile" class="right hide-on-med-and-down">
        <li><a href="interno.jsp" class="white-text"><%out.print(u.nome);%></a></li>
        <li><a href="#" class="white-text">
        <%
	        double grana = s.receberSaldoDouble(u.id);
	        if(grana<0){
	        	out.print("<a class='red-text'>" + Formatadores.formatarSaldoDouble(grana) + "</a>");
	        }else{
	        	out.print("<a class='green-text'>" + Formatadores.formatarSaldoDouble(grana) + "</a>");        	
	        }
        %></a></li>
        <li><a href="sair.jsp" class="white-text">Sair</a></li>
      </ul>
      <!--Titulo menu-->
      <div class="container">
        <div class="nav-wrapper center">
          <a class="white-text">QuickControl</a>
        </div>
      </div>
      </nav>
  </header>
    