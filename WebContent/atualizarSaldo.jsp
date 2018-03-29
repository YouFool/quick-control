<%@page import="pacote.Saldos" %>
<%@page import="pacote.UsuarioExistente"%>
<%
UsuarioExistente u = new UsuarioExistente();
	if(session.getAttribute("sessaoUsuario") == null){
		response.sendRedirect("index.jsp");	
	}else{
		u = (UsuarioExistente) session.getAttribute("sessaoUsuario");
	}
%>

<%
	String saldo = request.getParameter("saldo");

     //Obter dados
    Saldos s = new Saldos();
    s.atualizarSaldo(saldo, u.id);
    
%>

<%
    
   response.sendRedirect("interno.jsp");
    out.print(saldo);
%>
 