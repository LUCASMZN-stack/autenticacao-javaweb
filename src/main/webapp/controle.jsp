<%@page import="com.aula.model.Cliente"%>
<%@page import="com.aula.model.ClienteDAO"%>
<%@page import="com.aula.funcao.Funcao"%>

<%
String nome = request.getParameter("nome");
String cpf = request.getParameter("cpf");
String email = request.getParameter("email");
String senha = request.getParameter("senha");

Funcao f = new Funcao();
boolean flagCpf = f.validaCpf(cpf);
boolean flagSenha = f.validasenha(senha);


 if(flagCpf==true && flagSenha==true){
	 Cliente cliente = new Cliente(nome,cpf,email,senha);
	 ClienteDAO cd = new ClienteDAO();
	 cd.salvar(cliente);
	response.sendRedirect("validacao.jsp");
	}else{
		response.sendRedirect("erro.jsp");
	}

%>
