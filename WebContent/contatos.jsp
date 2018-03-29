<%@include file="topoEspecial.jsp"%>
<%@page import="pacote.Contatos"%>
<%
	//Obter dados
	Contatos c = new Contatos();
	String listaContatos = c.listaContatos(u.id);
%>

<div class="container ">
  <div class="row sidebar">
    <div class="col s10 push-s2">
      <div id="cadastrarContato" class="section scrollspy col s12">
      	<div id="titulo">
      		<h5 class="center-align">
				Olá
				<%
				out.print(u.nome);
			%>, insira seus contatos:
			</h5>
      	</div>
      	<div id="form">
      	   <!--FORMULARIO LANÇAMENTO-->
		     <form id="formulario" action="cadastrarContato.jsp">
				<div>
			    	<label for="nome">Nome do contato</label>
			    	<input id="nome" class="validate" type="text" name="nome">
				</div>
			    <div>
			    	<label for="telefone">Telefone</label>
			    	<input id="telefone" class="validate" type="text" name="telefone">
			    </div>
			    <div>
			    	<label for="natureza">Natureza</label>
				    <select class="browser-default" id="natureza" name="natureza">
						<option value="1" selected>Divida</option>
						<option value="2">A receber</option>
					</select>
						<br>
			    </div>
				<div>
					<label for="valor">Valor (R$)</label> <input id="valor" class="validate" type="text" name="valor">
				</div>
				<div class="row center">
					<br>
					<input id="excluir" type="text" name="excluir" hidden="" value="0">
					<input type="submit" class="btn-large waves-effect waves-light blue-grey" value="Cadastrar">
					<br><br>
				</div>
			</form>
      	</div>
				
		</div>
		<div id="listarContatos" class="section scrollspy col s12">
			<div id="titulo">
				<h5 class="center-align">Lista de contatos</h5>
			<br>
			</div>
			<div id="tabela">
				<table class="highlight">
				<thead>
					<tr>
						<th>Nome</th>
						<th>Telefone</th>
						<th>Natureza</th>
						<th>Valor</th>
						<th></th>
					</tr>
				</thead>
				<!--CORPO DA TABELA-->
				<tbody>
					<!-- linha inicio-->
					<%
						out.print(listaContatos);
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
<script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script src="js/materialize.js"></script>
<script src="js/init.js"></script>
<script>
	function openContacts(evt, typeContacts) {
		var i, tabcontent, tablinks;
		tabcontent = document.getElementsByClassName("tabcontent");
		for (i = 0; i < tabcontent.length; i++) {
			tabcontent[i].style.display = "none";
		}
		tablinks = document.getElementsByClassName("tablinks");
		for (i = 0; i < tablinks.length; i++) {
			tablinks[i].className = tablinks[i].className
					.replace(" active", "");
		}
		document.getElementById(typeContacts).style.display = "block";
		evt.currentTarget.className += " active";

	}
	function removeRegistro(nome, telefone, natureza, valor) {
		document.getElementById("nome").value = nome;
		document.getElementById("telefone").value = telefone;
		document.getElementById("natureza").value = natureza;
		document.getElementById("valor").value = valor;
		document.getElementById("excluir").value = '1';
		document.getElementById("formulario").submit();
	}
</script>

</body>
</html>