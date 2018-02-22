Before do
    visit 'https://marktasks.herokuapp.com/api/reset/cinthya_brito@yahoo.com.br?clean=full'

    @cadastros = CadastroPage.new
end