#!/bin/bash

#QUESTAO 4

#Crie um Shell Script que calcule o Índice de Massa Corpórea (IMC) de uma pessoa de acordo com a fórmula a
# seguir: peso / altura * altura
#O Script deve pedir por parâmetro da linha de comando o peso e a altura de uma pessoa e retornar o valor de IMC,
#apresentando-o na tela. Faça uma função que calcule o IMC.

#imprime uma dica de como utilizar o scripts
function helpMessage(){
  echo -e "PARAMETROS INCORRETOS\ndica ./imc.sh <peso> <altura> "
}

#faz um check atraves de uma expressao regular se o parametro e um numero
function isNumber(){
  validateExpression='^[0-9]+$'
  if [[ $1 =~ $validateExpression ]] ; then
   echo "1";
   return;
  fi
}

# VALIDA ENTRADA DO USUARIO
if [[ $# -ne 2 ]] || [[ ! $(isNumber $1) ]];
  then
    helpMessage
  exit 1
fi

echo "seu imc é: $(echo "$1/($2*$2)" | bc)"
