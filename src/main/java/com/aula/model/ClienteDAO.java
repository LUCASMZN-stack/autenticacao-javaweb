package com.aula.model;

import com.aula.interfaces.ClienteInterface;

public class ClienteDAO implements ClienteInterface{

	@Override
	public void salvar(Cliente cliente) {
		// TODO Auto-generated method stub
		System.out.println(cliente.toString());
	}
}
