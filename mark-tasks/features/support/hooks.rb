Before do
    visit 'https://marktasks.herokuapp.com/api/reset/cinthya_brito@yahoo.com.br?clean=full'

    @cadastros = CadastroPage.new
end

Before('@register') do
    @cadastros.load
    @cadastros.dados_cadastro('Cintia', 'cinthya_brito@yahoo.com.br', '123456')
end