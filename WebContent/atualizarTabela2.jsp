<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
<%@page import="utilitarios.Formatadores"%>
<%@page import="java.sql.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Locale"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="javax.swing.text.DateFormatter"%>
<%@page import="pacote.Movimentacoes" %>
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
	

	String data1 = request.getParameter("dataInicio");
	String ano1 = data1.substring(6, 10);
	String dia1 = data1.substring(3, 5);
	String mes1 = data1.substring(0, 2);
	String dataCorreta1 = ano1+"-"+mes1+"-"+dia1;
	
	String data2 = request.getParameter("dataFim");
	String ano2 = data2.substring(6, 10);
	String dia2 = data2.substring(3, 5);
	String mes2 = data2.substring(0, 2);
	String dataCorreta2 = ano2+"-"+mes2+"-"+dia2;
	
	//System.err.println(Formatadores.formatarData(data1));
	//System.err.println(Formatadores.formatarData(data2));
%>

<%
     //Obter dados
    Movimentacoes m = new Movimentacoes();
	//StringBuilder sb = m.listaMovimentosArray(u.id, dataCorreta1, dataCorreta2);
	//String lista = sb.toString();
	m.receberListaMovimentos(u.id, dataCorreta1, dataCorreta2);
	//m.getListaMovimentos();
    String lista = m.listaMovimentos(u.id, dataCorreta1, dataCorreta2);
    
   	response.sendRedirect("movimentacoes.jsp?lista="+m.getListaMovimentos());
%>
