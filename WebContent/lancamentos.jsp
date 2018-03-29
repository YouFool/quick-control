<%@include file="topoCalendario2.jsp" %>
 
 <!--Conte�do Principal-->
    <div class="container ">
      <div class="row sidebar"> 
        <div class="section col s10 push-s2">
          <div id="titulo">
            <h5 class="center-align">Ol� <%out.print(u.nome);%>, insira suas movimenta��es:</h5>
          </div>
          <div id="formulario">
            <!--FORMULARIO LAN�AMENTO--> 
            <form action="realizarLancamento.jsp" >
              <div id="nome" class="input-field col s12">
                <input id="nomeConta" class="validate" type="text" name="nome">
                <label for="nomeConta">Nome da conta</label>
              </div>
              <div id="categoria" class="input-field col s12">
                <input id="categoriaConta" class="validate" type="text" name="categoriaConta">
                <label for="categoriaConta">Categoria da conta</label>
              </div>
              <div id="valor" class="input-field col s12">
                <input id="valor" class="validate" type="text" name="valor">
                <label for="valor">Valor (R$) [Para valores decimais, use ponto e n�o v�rgula]</label>
              </div>
              <div id="observcoes" class="input-field col s12">
                <input id="observ" class="validate" type="text" name="observ">
                <label for="observ">Observa��o r�pida</label>
              </div>
              <div id="data" class="col s12">
                 <p>Data: <input type="text" id="datepicker2" name="dataLancamento"></p>
             </div>
              <div id="button" class="center">
                <br><br><br>
                <input type="submit" class="btn-large waves-effect waves-light blue-grey" value="enviar">
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>

  <!--  Scripts-->
  <script src="js/materialize.js"></script>
  <script src="js/init.js"></script>

  </body>
</html>