Dados("que eu acessei a pagina de cadastro") do
    visit 'http://marktasks.herokuapp.com/register'
    expect(page).to have_content 'Criar uma conta Mark'
  end
  
  Dados("possuo os seguinte dados:") do |table|
    # table is a Cucumber::MultilineArgument::DataTable
    @cadastro = table.rows_hash
  end
  
  Quando("faço o meu cadastro") do
    #puts @cadastro["Email"]
    fill_in 'register_name', with: @cadastro['Nome']
    fill_in 'register_email', with: @cadastro['Email']
    #fill_in 'register_password', with @cadastro['Senha']
    find('input[type=password]').set @cadastro['Senha']
    
    #click_button 'Cadastrar'
    find('button[type=submit]').click
  end
  
  Então("sou redirecionado para o painel de tarefas") do
    expect(page).to have_content 'Todas as minhas tarefas'
  end

  Então("devo ver uma mensagem de alerta {string}") do |mensagem_alerta|
    expect(page).to have_content mensagem_alerta
    sleep 10
  end
 
  