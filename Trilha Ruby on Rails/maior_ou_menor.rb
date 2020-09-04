def da_boas_vindas
    puts "Bem-vindo ao jogo da adivinhação"
    puts "Qual é o seu nome?"
    nome = gets
    puts "\n\n\n"
    puts "Começaremos o jogo para você, " + nome + "\n"
end 
def sorteia_numero_secreto
    puts "Escolhendo um número entre 0 e 200"
    sorteado = 175
    puts "Escolhido... que tal adivinhar hoje nosso número secreto?" + "\n\n" 
    return sorteado   
end
def pede_um_numero(tentativa, limiteDeTentativas)
    puts "Tentativa " + tentativa.to_s + " de " + limiteDeTentativas.to_s
    puts "Entre com o número"
    chute = gets
    puts "Será que acertou? Você chutou " + chute
    chute.to_i
end
def verifica_se_acertou(numero_secreto, chute)
    acertou = numero_secreto == chute
    if acertou
        puts "Acertou!"
        return true
    end
    maior = numero_secreto > chute
    if maior 
        puts "O número secreto é maior!"
    else 
        puts "O número secreto é menor!"
    end
    false
end

da_boas_vindas
numero_secreto = sorteia_numero_secreto

limiteDeTentativas = 3
for tentativa in 1..limiteDeTentativas
    chute = pede_um_numero tentativa, limiteDeTentativas 
    break if verifica_se_acertou numero_secreto, chute 
end