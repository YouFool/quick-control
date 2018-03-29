
function valida(){
	
	//Obter dados
	var nomeSobrenome = document.getElementById("nome");
	var senha = document.getElementById("senha-cadastrar");
	var emailCadastrar = document.getElementById("email-cadastrar");
	
	//Validar o campo nome
	if(nomeSobrenome.value == ""){
		alert("Favor preencher o campo nomeSobrenome");
		nomeSobrenome.focus();
		return false;
	}
	
	if(nomeSobrenome.value.length < 3){
		alert("O campo nome deve ter pelo menos tres letras");
		nomeSobrenome.focus();
		return false;
	}
	
	if (senha.value == ""){
		alert("Favor colocar a senha!")
		senha.focus();
		return false;
	}
	
	if(emailCadastrar.value == ""){
		alert("Favor inserir um e-mail");
		emailCadastrar.focus();
		return false;
	}
	
	
	return true; 
	
}

