def calcular_imc(peso, altura)
  imc = peso / (altura * 2)
  puts "IMC #{imc.round(2)}"
end

begin
  calcular_imc 73, 1.65
  puts 'Deu bom'
  raise Exception, 'Deu bom mas deu ruim'
rescue Exception => e
  puts 'Deu ruim'
  puts e.message
  puts e.backtrace
end
