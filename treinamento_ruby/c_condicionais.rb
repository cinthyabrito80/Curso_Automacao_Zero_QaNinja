# puts 'Qual o seu nome?'
# nome = gets.chomp

# puts 'Qual a sua idade?'
# idade = gets.to_i

# if idade < 18
#   puts nome + ' nao pode tirar cnh'
# else
#   puts nome + ' pode tirar cnh'
# end

# cnh = (idade < 18) ? false : true

# if idade < 18
#   cnh = false
# else
#   cnh = true
# end

# if cnh
#   puts nome + ' pode tirar cnh'
# else
#   puts nome + ' nao pode tirar cnh'
# end

# puts 'Deseja beber algo? 1 - Sim, 2 - Nao'
# bebida = gets.to_i

# puts 'Qual a sua idade?'
# idade = gets.to_i

# if bebida == 1
#   if idade >= 18
#     puts 'Servindo uma cerveja'
#   elsif idade >= 15
#     puts 'Servindo um suco'
#   else
#     puts 'Servindo leite com toddy'
#   end
# end

# conta_bloqueada = false

# puts 'Fazendo login' unless conta_bloqueada

# unless conta_bloqueada
#   puts 'Fazendo login'
# end

dia_semana = 4

case dia_semana
when 1
  puts 'Domingo'
when 2
  puts 'Segunda'
when 3
  puts 'Terca'
else
  puts 'Numero nao reconhecido'
end
