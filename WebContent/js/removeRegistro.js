/**
 * 
 */

function removeRegistro(nome, categoriaConta, valor, observ, data) {
	document.getElementById("nome").value = nome;
	document.getElementById("categoriaConta").value = categoriaConta;
	document.getElementById("valor").value = valor;
	document.getElementById("observ").value = observ;
	document.getElementById("data").value = data;
	document.getElementById("excluir").value = '1';
	document.getElementById("formulario").submit();
}