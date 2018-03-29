
<%@page import="pacote.UsuarioExistente"%>
<%@page import="pacote.Eventos"%>
<%
 UsuarioExistente u = new UsuarioExistente();
 	if(session.getAttribute("sessaoUsuario") == null){
 		response.sendRedirect("index.jsp");	
 	}else{
         		u = (UsuarioExistente) session.getAttribute("sessaoUsuario");
 	}
         	%>
         	
	
 <%

     //Obter dados
     int idUsuario = u.id;
     String evento = request.getParameter("evento2");
 	 Double valor = Double.parseDouble(request.getParameter("valor2"));
 	 String dat = request.getParameter("data2");
 	 System.out.print(evento+" - "+valor+" "+dat);
 	 
 	 //Criar objeto e chamar o método para cadastrar no banco de dados
 	 Eventos e = new Eventos();
	  out.print(e.excluirEvento(idUsuario, dat , evento, valor));
	  response.sendRedirect("eventos.jsp");
	 
		 
 	
 %>