<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="pacote.UsuarioExistente"%>
    <%
    
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
    <title>Nosso project</title>

    <!-- CSS  -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
    <link href="css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>

  </head>
  <body>
    <!-- Navbar goes here -->
    <nav>
      <div class="nav-wrapper teal lighten-2">
        <a href="#" class="brand-logo">Aqui vai nossa logo daora</a>
        <ul id="nav-mobile" class="right hide-on-med-and-down">
          <li><a href="#"><%out.print(u.nome);%></a></li>
          <li><a href="#">Notificações</a></li>
          <li><a href="sair.jsp">Sair</a></li>
        </ul>
      </div>
    </nav>  