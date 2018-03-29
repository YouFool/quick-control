<%@page import="java.util.ArrayList"%>
<%@include file="topoCalendario.jsp" %>
<%@page import="pacote.Movimentacoes" %>
  <!-- COMEÇO DA PÁGINA -->
  <div class="row">   
    <div class="col s10 push-s2">
      <div class="row">
        <h5 class="center-align"><%out.print(u.nome);%>, busque suas movimentações por data:</h5>
        <br><br>
        <div class="container">
        <form action="atualizarTabela2.jsp">
        	<p>Data de início: <input type="text" id="datepicker1" name="dataInicio"></p>
      		<p>Data de fim: <input type="text" id="datepicker2" name="dataFim"></p>
      		<br><br>
      		<div class="row center">
            <input type="submit" value="Pesquisar" class="btn-large waves-effect waves-light blue-grey"></input>  
          </div>
          <br>
        </form>
        <form id="formulario" action="excluirLancamento.jsp">
          <input id="nome" type="text" name="nome" hidden="">
          <input id="categoriaConta" type="text" name="categoriaConta" hidden="">
          <input id="valor" type="text" name="valor" hidden="">
          <input id="observ" type="text" name="observ" hidden="">
          <input id="data" type="text" name="data" hidden="">
          <input id="excluir" type="text" name="excluir" hidden="" value="0">
        </form>
          <!--COMEÇO DA TABELA-->
          <table class="striped">
            <thead>
              <tr>
                <th>Nome da conta</th>
                <th>Categoria</th>
                <th>Valor R$</th>
                <th>Observação</th>
                <th>Data</th>
                <th></th>
              </tr>
            </thead>
            <!--Dados da tabela-->
            <tbody>
              <!-- Linha Inicio-->
              <%
              	Movimentacoes m = new Movimentacoes();
              	ArrayList<String> dadosTabela = m.receberListaMovimentos(u.id, "2018-01-01", "2018-01-31");
              	for(int i=0; i<dadosTabela.size(); i++){
					out.print(dadosTabela.get(i).toString());	
              	}
              %>
              <!-- Linha Fim-->
            </tbody>
          </table>
          <!-- Botão Voltar-->
          <br><br><br>
        <div class="row center">
       		<a class="btn-large waves-effect waves-light blue-grey" href="/teste/interno.jsp"><i class="material-icons left"></i>Voltar</a>        
        </div>
        </div>
      </div>
    </div>
  </div>
</body>

  <!--Scripts-->
  <script src="js/materialize.js"></script>
  <script src="js/init.js"></script>
  <script src="">
    function removeRegistro(nome, categoriaConta, valor, observ, data) {
    document.getElementById("nome").value = nome;
    document.getElementById("categoriaConta").value = categoriaConta;
    document.getElementById("valor").value = valor;
    document.getElementById("observ").value = observ;
    document.getElementById("data").value = data;
    document.getElementById("excluir").value = '1';
    document.getElementById("formulario").submit();
  }
</script>

  </body>
</html>