#!/bin/bash

contador=0
ficheiro="jogadas.txt"

# Crie arrays para armazenar números gerados
numeros_1_12=()
numeros_1_50=()

while [ $contador -lt 5 ]
do
   randomNum=$((RANDOM%50+1))
   echo "Numero Aleatorio entre 1 e 50: $randomNum"
   while [[ " ${numeros_1_50[@]} " =~ " $randomNum " ]]; do
       echo "Número $randomNum já existe no intervalo 1-50.Vou gerar outro numero"
       randomNum=$((RANDOM%50+1))
       echo "Novo número gerado: $randomNum"
   done
   numeros_1_50+=("$randomNum")
   echo "$randomNum" >> "$ficheiro"
   contador=$(($contador+1))
done

contador=0
while [ $contador -lt 2 ]
do
   randomNum=$((RANDOM%12+1))
   echo "Numero Aleatorio entre 1 e 12(estrelas): $randomNum"
   while [[ " ${numeros_1_12[@]} " =~ " $randomNum " ]]; do
       echo "Número $randomNum já existe no intervalo 1-12. Gerando outro número."
       randomNum=$((RANDOM%12+1))
       echo "Novo número gerado: $randomNum"
   done
   numeros_1_12+=("$randomNum")
   echo "$randomNum" >> "$ficheiro"
   contador=$(($contador+1))
done

echo "Deseja repetir a sequência? (y/n)"
read resposta
if [ "$resposta" == "y" ]; then
   chmod +x "$0"
   exec ./$0
fi