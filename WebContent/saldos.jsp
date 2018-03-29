<%@include file="topo.jsp" %>   
  <!-- AQUI COMEÇA A PÁGINA -->
  <div class="row">
    <div class="col s1 red">
      <!-- MENU DE OPÇÕES | LADO ESQUERDO -->
      <div class="column">
        <h5><a href="\teste\lancamentos.jsp">Lançamentos</a></h5>
        <h5><a href="\teste\movimentacoes.jsp">Movimentações</a></h5>
        <h5><a href="\teste\eventos.jsp">Eventos</a></h5>
        <h5><a href="#">Contatos</a></h5>
        <h5><a href="\teste\resultados.jsp">Resultados</a></h5>
        <h5><a href="\teste\saldos.jsp">Saldos</a></h5>
      </div>
    </div>
    <!-- CORPO DA PÁGINA  -->   
    <div class="col s11">
      <div class="row">
        <h5 class="center-align"><%out.print(u.nome);%>, aqui estão seus saldos:</h5>
        <br><br>
        <div class="container">
          <!--AQUI VÃO OS SALDOS-->
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