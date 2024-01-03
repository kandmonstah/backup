NUM=$1

if [ "$NUM" -gt 10 ]; then
  echo "O número $NUM é maior que 10."

elif [ "$NUM" -lt 10 ]; then
  echo "O número $NUM é menor que 10."

else
  echo "O número $NUM é igual a 10."
fi