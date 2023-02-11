<?php

/* ---- Variaveis ---- */

$NUMERO_SORTEADO = gerarNumeroAleatorio();
$tentativas = 0;

/* ---- Sistema ---- */

while (true) {
  $tentativas++;
  echo "# Adivinhe o número entre 1 e 999: ";
  $palpite = readline();

  if ($palpite == $NUMERO_SORTEADO) {
    acertou($tentativas);
  } else {
    errou($NUMERO_SORTEADO, $palpite);
  }
}

/* ---- Funcoes Auxiliares ---- */

function gerarNumeroAleatorio() {
  $minimo = 1;
  $maximo = 999;
  return rand($minimo, $maximo);
}

function acertou($tentativas) {
  echo "# Você acertou em $tentativas tentativas!";
  echo "\n";
  exit;
}

function errou($numeroSorteado, $palpite) {
  if ($palpite < $numeroSorteado) {
    echo "# O número é maior que $palpite";
  } else {
    echo "# O número é menor que $palpite";
  }
  echo "\n\n";
}

?>
