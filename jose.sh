#!/bin/bash
#clear
# Mensagem de boas-vindas
#echo "Bem-vindo ao jogo de Número da Sorte!"
# Obter o nome do jogador
#read -p "Digite seu nome: " nome
# Geração de números aleatórios
#sorteado=$((1 + RANDOM % 100))
#tentativas=0
# Loop do jogo
#while true; do
    # Incrementa tentativas
#    tentativas=$((tentativas + 1))
    # Obter a tentativa do jogador
#    read -p "Digite um número entre 1 e 100: " tentativa
    # Verifica se a tentativa está correta
#    if [ "$tentativa" -eq "$sorteado" ]; then
#
#        echo "Parabéns, $nome! Você acertou o número da sorte!"

    #    break

   # fi
    # Informa se o número do jogador é maior ou menor que o sorteado
  #  if [ "$tentativa" -gt "$sorteado" ]; then
     #   echo "O número sorteado é menor."
 #   else
      #  echo "O número sorteado é maior."
#    fi
#done
# Exibe o número de tentativas
#echo "Você precisou de $tentativas tentativas para acertar o número da sorte."


#!/bin/bash

gerar_chave() {
    chave=()

    for _ in $(seq 5); do
        chave+=($RANDOM % 50 + 1)
    done

    for _ in $(seq 2); do
        chave+=($RANDOM % 12 + 1)
    done

    echo ${chave[*]}
}

while true; do
    gerar_chave
    read -p "Deseja gerar outra chave? (S/N): " resposta

    if [[ "$resposta" == "N" ]]; then
        break
    fi
done