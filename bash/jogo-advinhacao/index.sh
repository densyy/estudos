#!/bin/bash

# Funcoes Auxiliares

function gerar_numero_aleatorio() {
  local maximo=999
  local minimo=1

  echo $(( $RANDOM % $maximo + $minimo ))
}

function acertou() {
  local tentativas=$1

  echo "# Você acertou em $tentativas tentativas!"
  echo ''
  exit
}

function errou() {
  local numero_sorteado=$1
  local palpite=$2

  if [[ $palpite < $numero_sorteado ]]; then
    echo "# O número é maior que $palpite"
  else
    echo "# O número é menor que $palpite"
  fi

  echo ''
}

# Variaveis

NUMERO_SORTEADO=$(gerar_numero_aleatorio)
TENTATIVAS=0

# Sistema

while true; do
  TENTATIVAS=$((TENTATIVAS + 1))

  echo -n '# Adivinhe o número entre 1 e 999: '
  read palpite

  if [[ $palpite == $NUMERO_SORTEADO ]]; then
    acertou $TENTATIVAS
  fi

  errou $NUMERO_SORTEADO $palpite
done
