<%@include file="topoCalendario2.jsp" %>
<%@page import="pacote.Eventos"%>


<%
	Eventos c = new Eventos();
	int usuario = u.id; 
	String listaEventos = c.listaEventos(usuario);
%> 
 
 <!--Conteúdo Principal-->
    <div class="container">
      <div class="row sidebar"> 
        <div class="col s10 push-s2">
          <div id="titulo">
            <h5 class="center-align">
			<%
              try{
                out.print(u.nome);
              }catch(Exception e){}
          	%>, programe eventos e nós vamos te lembrar!</h5>
          </div>
          <br><br>
          <div id="for">
            <!--FORMULÁRIO EVENTO-->
            <form id="formulario" action="cadastrarEvento.jsp">
               	<div  class="col s12">
                	<p class="grey-text">Data: <input type="text" id="datepicker2" name="dataEvento"></p>
        	 	</div>
              <div  class="input-field col s12">
                <input id="evento" name="evento" type="text" data-length="50" placeholder="Ex: Declaração do IRPF, Recebimento de aluguel, Pagamento de boleto..."> 
                <label for="evento">Motivo do evento</label>
              </div>
              <div  class="input-field col s12">
                <input id="valor" name="valor" type="text" placeholder="" > 
                <label for="valor">Valor R$</label>
              </div>
              <div id="button" class="row center">
              	<br>
                <input type="submit" class="btn-large waves-effect waves-light blue-grey" value="enviar">
              </div>
            </form>
            <br> 
            <form id="formu" action="excluirEvento.jsp">
           		<input id="data2" type="text" name="data2" hidden="">
                <input id="evento2" name="evento2" type="text" hidden=""> 
                <input id="valor2" name="valor2" type="text" hidden="" > 
              	<input id="excluir" type="text" name="excluir" hidden="">   
            </form>      
          </div>
          <br>
        </div>
        <div class="col s10 push-s2">
           <div id="listarEventos" >
				<div id="titulo">
					<h5 class="center-align">Lista de Eventos</h5>
					<br>
				</div>
			<div id="tabela">
				<table class="highlight">
				<thead>
					<tr>
						<th>Data</th>
						<th>Evento</th>
						<th>Valor</th>
						<th></th>
					</tr>
				</thead>
				<!--CORPO DA TABELA-->
					<tbody>
						<!-- linha inicio-->
						<%
							out.print(listaEventos);
						%>
						<!-- linha fim-->
					</tbody>
				</table>
			</div>
			</div>
        </div>
      </div>
  	</div>

	<!--  Scripts-->
	<script src="js/materialize.js"></script>
	<script src="js/init.js"></script>
	<script>
	function removeRegistro(data,evento,valor) {
		document.getElementById("data2").value = data;
		document.getElementById("evento2").value = evento;
		document.getElementById("valor2").value = valor;
		document.getElementById("formu").submit();
	}
	</script>
  
  </body>
</html>