    Dados("que eu acessei a pagina de cadastro") do
      @cadastros.load
    end
     
    Dado("possuo os seguinte dados: {string}{string}{string}") do |nome, email, senha|
      @cadastros.dados_cadastro(nome, email,senha)
    end
    
    Quando("faço o meu cadastro") do
      @cadastros.cadastrar
    end
    
    Então("sou redirecionado para o painel de tarefas") do
      expect(page).to have_content 'Todas as minhas tarefas'
    end
   
    Então("devo ver uma mensagem de alerta {string}") do |mensagem_alerta|
      expect(page).to have_content mensagem_alerta
      sleep 10
    end