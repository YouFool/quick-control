<%@include file="topoInterno.jsp" %>
<%@page import="pacote.Saldos" %>
<!-- Receber saldo ao carregar a página -->
<%  
String saldo = s.receberSaldo(u.id);%>

<!--Conteúdo Principal-->
  <div class="container">
    <div class="row sideba">
      <div class="section col s10 m9 l10">
        <div id="comprimento" class="section scrollspy">
          <h4 class="header">Bem vindo(a), 
            <%
              try{
                out.print(u.nome);
              }catch(Exception e){}
              %>
          </h4>
        </div>
          <div id="cards" class="section scrollspy">
            <h5 class="oo">Mantenha seu controle financeiro em dia</h5>
            <br>
            <!--Primeiro card-->       
            <div class="col s12 m3">
              <div class="card">
                <div class="card-image">
                  <img src="mone2.png">
                  <a href="lancamentos.jsp" class="btn-floating halfway-fab waves-effect waves-light blue-grey">
                    <i class="material-icons">add</i>
                  </a>           
                </div>
                <div class="card-content">
                  <p>Cadastre novos lançamentos</p>
                </div>
              </div>
            </div>
            <!--Segundo card-->  
            <div class="col s12 m3">
              <div class="card">
                <div class="card-image">
                  <img src="people.png">
                  <a href="contatos.jsp" class="btn-floating halfway-fab waves-effect waves-light blue-grey"><i class="material-icons">add</i></a>
                </div>
                <div class="card-content">
                  <p>Cadastre seus contatos para melhor controle</p>
                </div>
              </div>
            </div>
            <!--Terceiro card-->  
            <div class="col s12 m3">
              <div class="card">
                <div class="card-image">
                  <img src="prancheta.png">
                  <a href="movimentacoes.jsp" class="btn-floating halfway-fab waves-effect waves-light blue-grey"><i class="material-icons">add</i></a>
                </div>
                <div class="card-content">
                  <p>Acompanhe suas movimentações</p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!--Lateral-->
        <div class="col m3 l2">
          <div id="saldo" class="section scrollspy">
            <h5 class="oo">Saldo<a class="tooltipped blue-grey-text right" data-position="bottom" data-delay="50" data-tooltip="Lembre-se de usar o sinal menos (-) caso queira indicar um  valor negativo"><i class="material-icons">feedback</i></a></h5>
            <p>Seu saldo é de:</p>
            <%
	            double dinheiro = s.receberSaldoDouble(u.id);
	            if(dinheiro<0){
	            	out.print("<p class='red-text'>" + Formatadores.formatarSaldoDouble(dinheiro) + "</p>");
	            }else{
	            	out.print("<p class='green-text'>" + Formatadores.formatarSaldoDouble(dinheiro) + "</p>");
	            } 
            %>
            <p>Atualize seu saldo:</p>
            <form action="atualizarSaldo.jsp">
              <input type="text" name="saldo">
              <div class="center">
                <input type="submit" name="Atualizar" class="btn-large waves-effect waves-light blue-grey">
              </div>
            </form>
          </div>
          <div id="calendario" class="section scrollspy">
            <h5 class="oo">Calendário</h5>
            <p><% out.print(u.nome); %>, aqui estão seus <a href="eventos.jsp" class="green-text">eventos</a></p>
          </div>
        </div>
    </div>
  </div>

  <!--  Scripts-->
  <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
  <script src="js/materialize.js"></script>
  <script src="js/init.js"></script>

  </body>
</html>