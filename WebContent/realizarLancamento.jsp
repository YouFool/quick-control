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
 
    String data1 = request.getParameter("dataLancamento");
	String ano1 = data1.substring(6, 10);
	String dia1 = data1.substring(3, 5);
	String mes1 = data1.substring(0, 2);
	String data = ano1+"-"+mes1+"-"+dia1;
	
	%>
   
 <%
    //Obter dados
    int idUsuario = u.id;
    String nomeConta = request.getParameter("nome");
    String categoriaConta = request.getParameter("categoriaConta");
    String valor = request.getParameter("valor");
    String observacoes = request.getParameter("observ");
    int exclusao = 0;
    if (request.getParameter("excluir") != null) {
        exclusao = Integer.parseInt(request.getParameter("excluir"));
    }

    //Criar objeto e chamar o método para cadastrar no banco de dados
    Movimentacoes m = new Movimentacoes();
    Saldos s = new Saldos();
    if (exclusao == 0) {
        out.print(m.Lancamento(idUsuario, nomeConta, categoriaConta, valor, observacoes, data));
        s.atualizarSaldo(valor, idUsuario);
        response.sendRedirect("lancamentos.jsp");
    } else {
        //out.print(m.Excluir(idUsuario, nomeConta, categoriaConta, valor, observacoes, data));
        //s.atualizarSaldo(valor, idUsuario);
        //response.sendRedirect("movimentacoes.jsp");

    }

%>