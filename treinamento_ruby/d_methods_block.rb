def achou_bug
  if $bug
    'Informe o desenvolvedor'
  else
    'Podemos ir para producao'
  end
end

puts 'Qual o resultado do teste? 0 - Sem bugs, 1 - Com bugs'
$bug = gets.to_i

$bug = ($bug == 1) ? true : false

puts achou_bug

# var # local
# @var # instancia
# $var # global
