<!DOCTYPE html>
<html lang="pt-br" data-bs-theme="dark">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro Cliente</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="estilo.css">
</head>
<body class="d-flex align-items-center py-4 bg-body-tertiary">
    <main class="w-100 m-auto form-conteiner">
        <form action="controle.jsp" method="post">
          <img src="img/logo.png" class="" height="150">  
          <h1 class="h3 mb-3 fw-normal">Por favor digite</h1>
          
          <div class="form-floating mb-3">
            <input type="text" class="form-control" id="floatingNome" placeholder="Nome" name="nome" required>
            <label for="floatingNome">Nome</label>
          </div>
          
          <div class="form-floating"> 
    		<input type="text" class="form-control" id="cpfInput" placeholder="CPF" maxlength="14" oninput="formatarCPF(this)" name="cpf" required>
          	<label for="cpfInput">CPF</label>
          </div>

          
          <div class="form-floating mb-3">
            <input type="email" class="form-control" id="floatingEmail" placeholder="Email" name="email" required>
            <label for="floatingEmail">Email</label>
          </div>
          
          <div class="form-floating mb-3">
            <input type="password" class="form-control" id="floatingSenha" placeholder="Senha" name="senha" required>
            <label for="floatingSenha">Senha</label>
          </div>
          
          <div class="form-check text-start my-3">
            <input type="checkbox" class="form-check-input" id="flexCheckDefault">
            <label class="form-check-label" for="flexCheckDefault">Me lembre</label>
          </div>
          
          <p class="text-body-secondary mt-3 mb-3">Copyright © 2024. Todos os direitos reservados.</p>
          
          <button class="btn btn-success w-100 pt-2" type="submit" >Salvar</button>
        </form>
    </main>
		
	<script>
function formatarCPF(cpfInput) {
    let cpf = cpfInput.value;

    // Remove tudo que não é dígito
    cpf = cpf.replace(/\D/g, "");

    // Formata o CPF
    cpf = cpf.replace(/(\d{3})(\d)/, "$1.$2");
    cpf = cpf.replace(/(\d{3})(\d)/, "$1.$2");
    cpf = cpf.replace(/(\d{3})(\d{1,2})$/, "$1-$2");

    // Atualiza o valor do input com o CPF formatado
    cpfInput.value = cpf;
}
</script>
	
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
