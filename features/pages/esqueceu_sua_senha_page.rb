class EsqueceuSuaSenhaPage
    include Capybara::DSL

    def initialize
        @campoEmail = '#Email'
    end

    def verificar_campo_email
        find(@campoEmail)
    end

end