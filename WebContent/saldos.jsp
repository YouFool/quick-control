<%@include file="topo.jsp" %>   
  <!-- AQUI COME�A A P�GINA -->
  <div class="row">
    <div class="col s1 red">
      <!-- MENU DE OP��ES | LADO ESQUERDO -->
      <div class="column">
        <h5><a href="\teste\lancamentos.jsp">Lan�amentos</a></h5>
        <h5><a href="\teste\movimentacoes.jsp">Movimenta��es</a></h5>
        <h5><a href="\teste\eventos.jsp">Eventos</a></h5>
        <h5><a href="#">Contatos</a></h5>
        <h5><a href="\teste\resultados.jsp">Resultados</a></h5>
        <h5><a href="\teste\saldos.jsp">Saldos</a></h5>
      </div>
    </div>
    <!-- CORPO DA P�GINA  -->   
    <div class="col s11">
      <div class="row">
        <h5 class="center-align"><%out.print(u.nome);%>, aqui est�o seus saldos:</h5>
        <br><br>
        <div class="container">
          <!--AQUI V�O OS SALDOS-->
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