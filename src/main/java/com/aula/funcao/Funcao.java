package com.aula.funcao;

public class Funcao {
	public boolean validaCpf(String cpf){
		boolean flag = false;
		if(cpf.length()==14) 
			flag = true;
		return flag;
	}
	
	public boolean validasenha(String senha) {
		boolean flag = false;
		if(senha.length()>=6)
			flag = true;
		return flag;
	}
}
