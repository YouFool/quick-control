
<%@page import="pacote.UsuarioExistente"%>
<%@page import="pacote.Saldos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="pacote.Usuario" %>
<%
    
   //Obter dados
     String emailLogar = request.getParameter("email-logar");
 	 String senha = request.getParameter("senha-logar");
 	 
 	 //Criar objeto e chamar o método para cadastrar no banco de dados
 	 UsuarioExistente u = new UsuarioExistente();
 	 boolean verifica = u.logarUsuario(emailLogar, senha);
 	 
 	 //Obter dados caso usuário seja válida
 	 if(verifica == true){
 		u = u.receberDados(emailLogar);
 		response.sendRedirect("interno.jsp");
 		session.setAttribute( "sessaoUsuario", u);
 		
 		Saldos s = new Saldos();
 		if(s.receberSaldo(u.id)==""){
 			s.criarConta(u.id);
 		}
 		
 		
 	 }else{
 		 response.sendRedirect("login.jsp");
 	 }
 %>