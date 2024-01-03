#!/bin/bash

repetir="sim"

while [ "$repetir" = "sim" ]; do
    contador=1
    while [ $contador -le 5 ]; do
        numero_aleatorio=$((RANDOM % 50 + 1))
        echo "Chave de 1 a 50: $numero_aleatorio"
        contador=$((contador + 1))
    done

    contador=1
    while [ $contador -le 2 ]; do
        numero_aleatorio=$((RANDOM % 12 + 1))
        echo "Estrela de 1 a 12: $numero_aleatorio"
        contador=$((contador + 1))
    done

    read -p "Deseja repetir a sequência? (sim/não): " repetir
done
