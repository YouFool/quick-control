<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%

//Anular a sess�o
session.setAttribute("sessaoUsuario", null);

//Redirecionamento
response.sendRedirect("index.jsp");

%>