class LoginPage
    include Capybara::DSL

    def initialize
        @esqueceuSuaSenha = '#login-forgot-password'
    end

    def clicar_esqueceu_sua_senha
        # find('#login-forgot-password').click
        find(@esqueceuSuaSenha).click
    end

end