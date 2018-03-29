
function vericar(){
	
	//verificar dados
	var email = document.getElementById("email-cadastrar");
	var senha = document.getElementById("senha-cadastrar");
	
	//Validar o campo nome
	if(email.value == ""){
		alert("Favor preencher o campo email");
		email.focus();
		return false;
	}
	
	/*if(nomeSobrenome.value.length < 3){
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
	*/
	
	
	return true; 
	
}

