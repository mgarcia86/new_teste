#language: pt

Funcionalidade: Esqueceu sua senha
    Realizar a recuperação do acesso a contas já existentes.

@teste
Cenario: Validar link Esqueceu sua senha
    Dado que o usuário esteja na tela de login
    Quando acessar o link Esqueceu sua senha?
    Então deverá visualizar campo para inserção do e-mail de recuperação da senha