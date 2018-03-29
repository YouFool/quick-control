<%@page import="pacote.Saldos"%>
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
    //Obter dados
    int idUsuario = u.id;
    String nomeConta = request.getParameter("nome");
    String categoriaConta = request.getParameter("categoriaConta");
    String valor = request.getParameter("valor");
    double valor1 = Double.parseDouble(valor)*(-1);
    String observacoes = request.getParameter("observ");
    String dataExc = request.getParameter("data");

    //Criar objeto e chamar o método para cadastrar no banco de dados
    Movimentacoes m = new Movimentacoes();
    Saldos s = new Saldos();
    out.print(m.Excluir(idUsuario, nomeConta, categoriaConta, Double.parseDouble(valor), observacoes, dataExc));
    s.atualizarSaldo(String.valueOf(valor1), idUsuario);

    
    
    //Obter dados
   	//String lista = m.listaMovimentos(u.id, dataCorreta1, dataCorreta2);
   
   
  	response.sendRedirect("movimentacoes.jsp");


%>