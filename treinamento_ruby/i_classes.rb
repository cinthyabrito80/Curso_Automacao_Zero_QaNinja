class Testador
  attr_accessor :nome, :cargo

  def initialize(nome, cargo)
    @nome = nome
    @cargo = cargo
  end

  def fala
    puts "#{@nome} diz: achei um bug!"
  end

  def cargo
    puts "#{@nome} diz: meu cargo eh #{@cargo}"
  end
end

oscar = Testador.new 'Oscar', 'QA Senior'

oscar.fala
oscar.nome = 'Fernando'
oscar.fala
oscar.cargo = 'QA'
oscar.cargo
