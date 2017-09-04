#!/bin/bash

# QUESTAO 2

# Escreva um Shell Script que ordene dois números inteiros digitados
# pelo usuário. Tal ordenação deve ser em
# ordem crescente ou ordem decrescente.
# O usuário deve informar o tipo de ordenação
# que será aplicada sobre os
# dois números. Este script deve sempre apresentar
# os números ordenados para o usuário de acordo com o tipo de
# ordenação escolhida pelo mesmo.



#imprime uma dica de como utilizar o scripts
function helpMessage(){
  echo -e "PARAMETROS INCORRETOS\ndica ./ordene.sh <numero> <numero> -c (ordenar crescente) ou -d (ordenar decrescente)"
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
if [[ $# -ne 3 ]] || [[ ! $(isNumber $1) ]] || [[ ! $(isNumber $2) ]];
  then
    helpMessage
  exit 1
fi

#FAZ A OPERAÇAO verificando qual opcao do usuario (ex -c crescente -d decrescente)
case $3 in
    -c)
    echo "A ordem crescente é: "
    echo $( [[ $1 -gt $2 ]] && echo "$2 $1" || echo "$1 $2")
    ;;
    -d)
    echo "A ordem decrescente é: "
    echo $( [[ $2 -gt $1 ]] && echo "$2 $1" || echo "$1 $2")
    ;;
    *)
    helpMessage
    ;;

esac
