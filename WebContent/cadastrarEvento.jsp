
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

     String data1 = request.getParameter("dataEvento");
 	String ano1 = data1.substring(6, 10);
 	String dia1 = data1.substring(3, 5);
 	String mes1 = data1.substring(0, 2);
 	String data = ano1+"-"+mes1+"-"+dia1;
 	System.out.print(data);
	
	%>
	
 <%
     //Obter dados
     int idUsuario = u.id;
     String evento = request.getParameter("evento");
 	 Double valor = Double.parseDouble(request.getParameter("valor"));
 	 
 	 //Criar objeto e chamar o método para cadastrar no banco de dados
 	 Eventos e = new Eventos();
 	 out.print(e.cadastrarEvento(idUsuario, evento, valor, data));
 	 response.sendRedirect("eventos.jsp");
	
	
 	 
 	
 %>