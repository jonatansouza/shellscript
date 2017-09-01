#!/bin/bash

# Crie Shell Script que a partir um vetor de inteiros com 10 posições
# preenchido pelo usuário encontre o maior valor
# presente no vetor e o apresente na tela.
# Use obrigatoriamente uma estrutura de repetição na solução.

#mensagem para o usuario digitar
printf "Digite 10 valores para preencher o vetor (cada valor seguido da tecla Enter):\n"

#loop para preencher o vetor
for i in `seq 0 9`; do
          read -r vetor[$i]
      done

# recebe o primeiro valor do vetor
greaterValue=${vetor[0]}
printf "Vetor digitado: [${vetor[$i]} "

for i in `seq 1 9`; do
  printf "${vetor[$i]} "
  #compara se o valor presente no vetor e maior se for substitui
  if [[ ${vetor[$i]} -gt $greaterValue ]];
    then
      greaterValue=${vetor[$i]}
  fi
done
printf "]\n"
#devolve o resultado com o maior numero para o usuario
echo "o maior valor no vetor encontrado no vetor é $greaterValue"
