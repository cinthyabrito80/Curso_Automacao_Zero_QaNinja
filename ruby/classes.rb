class Testador
  attr_accessor :nome, :email

  def initialiaze(nome, email)
    @nome = nome
    @email = email
  end

  def testa
    puts @nome + ' achei um bug!' 
  end
end

joao = Testador.new('Cintia', 'cinthya_brito@yahoo.com.br')
joao.testa
