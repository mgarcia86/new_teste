Dado('que o usuário esteja na tela de login') do
    visit('/login')
end

Quando('acessar o link Esqueceu sua senha?') do
    @login.clicar_esqueceu_sua_senha
end

Então('deverá visualizar campo para inserção do e-mail de recuperação da senha') do
    expect(@esqueceu_sua_senha.verificar_campo_email).eql? true
end