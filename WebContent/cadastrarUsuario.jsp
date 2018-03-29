
<%@page import="pacote.Saldos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="pacote.Usuario" %>
<%
	Saldos s = new Saldos();

	//Obter dados
 	String nomeSobrenome = request.getParameter("nome");
 	String email = request.getParameter("email-cadastrar");
 	String senha = request.getParameter("senha-cadastrar");
 	
	//Criar objeto e chamar o método para cadastrar no banco de dados
 	Usuario u = new Usuario();
 	boolean verifica = u.verificarEmail(email);
 	
 	if(verifica == true){
		response.sendRedirect("login.jsp");
 	}else{
		out.print(u.cadastrarUsuario(nomeSobrenome, email, senha));
 		response.sendRedirect("realizarLogin.jsp");
 	}	 
%>