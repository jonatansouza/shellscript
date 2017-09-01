#!/bin/bash

printf "Digite 10 valores para preencher o vetor (cada valor seguido da tecla Enter):\n"
for i in `seq 0 9`; do
          read -r vetor[$i]
      done

greaterValue=${vetor[0]}
printf "Vetor digitado: [${vetor[$i]} "

for i in `seq 1 9`; do
  printf "${vetor[$i]} "
  if [[ ${vetor[$i]} -gt $greaterValue ]];
    then
      greaterValue=${vetor[$i]}
  fi
done
printf "]\n"

echo "o maior valor no vetor encontrado no vetor é $greaterValue"
