puts "Bem-vindo ao jogo da adivinhação"
puts "Qual é o seu nome?"
nome = gets
puts
puts
puts
puts "Começaremos o jogo para você, " + nome
puts
puts "Escolhendo um número entre 0 e 200"
numero_secreto = 175
puts "Escolhido... que tal adivinhar hoje nosso número secreto?"
puts
puts
puts "Tentativa 1"
puts "Entre com o número"
chute = gets
puts "Será que acertou? Você chutou " + chute
puts numero_secreto == chute.to_i