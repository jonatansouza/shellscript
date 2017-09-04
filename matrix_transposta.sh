#!/bin/bash

#QUESTAO 3

#Faça um Shell Script que inverta uma matriz 3x3 de inteiros. Ou seja, apresente a matriz transposta. Inicialize a
#matriz com valores (números inteiros) digitados pelo usuário. O usuário pode, por exemplo, inserir em “Matriz” os
#valores abaixo e o script reorganizaria os valores gerando a “Matriz Transposta”:
#Sua solução deve obrigatoriamente utilizar estrutura de repetição. Dica: Tente determinar a relação entre linhas e
#colunas a serem invertidas.

echo "###### matriz transposta 3X3 ######"
#declaração de matrizes
echo "Digite os valores (numero inteiro) para preencher a matriz 3 x 3"
declare -A matrix
declare -A transpose_matrix

#loop para preencher a matrix com dados do usuario
for i in {0..2}; do
  for j in {0..2}; do
    read val
    matrix[$i, $j]=$val
  done
done

#loop que preenche a matriz transposta
for i in `seq 0 2`; do
  for j in `seq 0 2`; do
    transpose_matrix[$j, $i]=${matrix[$i, $j]}
  done
done

#imprime a matriz digitada pelo usuario
echo -e "\nMatriz Digitada:"
for i in `seq 0 2`; do
  for j in `seq 0 2`; do
    printf "${matrix[$i, $j]} "
  done
  printf "\n"
done

#imprime a matriz transposta
echo -e "\nMatriz transposta:"
for i in `seq 0 2`; do
  for j in `seq 0 2`; do
    printf "${transpose_matrix[$i, $j]} "
  done
  printf "\n"
done

#foi utilizado um printf em alguns casos para
#tratar a quebra de linha para melhor apresentação dos resultados
