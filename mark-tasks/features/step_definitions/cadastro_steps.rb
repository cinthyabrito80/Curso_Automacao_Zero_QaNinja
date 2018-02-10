Dados("que eu acessei a pagina de cadastro") do
    visit 'http://marktasks.herokuapp.com/register'
  end
  
  Dados("possuo os seguinte dados:") do |table|
    # table is a Cucumber::MultilineArgument::DataTable
    @cadastro = table.rows_hash
  end
  
  Quando("faço o cadastro") do
    #puts @cadastro["Email"]
        fill_in 'register_name', with: @cadastro['Nome']
        fill_in 'register_email', with: @cadastro['Email']
        #fill_in 'register_password', with @cadastro['Senha']
        find('input[type=password]').set @cadastro['Senha']
        
        click_button 'Cadastrar'

  end
  
  Então("sou redirecionado para o painel de tarefas") do
    expect(page).to have_content 'Todas as minhas tarefas'
    sleep 10
  end