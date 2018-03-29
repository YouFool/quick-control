<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<%@page import="pacote.UsuarioExistente"%>

<%
 UsuarioExistente u = new UsuarioExistente();
 	if(session.getAttribute("sessaoUsuario") == null){
 		response.sendRedirect("index.jsp");	
 	}else{
 		u = (UsuarioExistente) session.getAttribute("sessaoUsuario");
 	}
 %>    
    
<!-- Importar classe movimentacoes -->
<%@page import="pacote.Contatos" %>

 <%
    //Obter dados
    int idUsuario = u.id;
    String nome = request.getParameter("nome");
    String telefone= request.getParameter("telefone");
 	int natureza= Integer.parseInt(request.getParameter("natureza"));
 	Double valor = Double.parseDouble(request.getParameter("valor"));
 	int exclusao= Integer.parseInt(request.getParameter("excluir"));

 	 //Criar objeto e chamar o método para cadastrar no banco de dados
 	 Contatos c = new Contatos();
 	 
 	 if(exclusao == 0){
 		 out.print(c.cadastrarContato(idUsuario, nome, telefone, natureza, valor));
 	 }else{
 		out.print(c.excluirContato(idUsuario, nome, telefone, natureza, valor));
 	 }
 	 //Redirecionar para lancamentos+
 	 response.sendRedirect("contatos.jsp");
 %>