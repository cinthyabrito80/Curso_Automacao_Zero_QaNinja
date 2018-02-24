class CadastroPage < SitePrism::Page
    set_url '/register' 

    element :c_nome, :id, 'register_name'
    element :c_email, :id, 'register_email'
    element :c_senha, 'input[type=password]'
    element :b_cadastrar, 'button[type=submit]'

    def dados_cadastro(nome, email, senha)
        c_nome.set nome
        c_email.set email
        c_senha.set senha
    end

    def cadastrar
        b_cadastrar.click
    end

end