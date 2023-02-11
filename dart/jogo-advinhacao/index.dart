/* ---- Importacoes ---- */

import 'dart:io';
import 'dart:math';

/* ---- Variaveis ---- */

final int NUMERO_SORTEADO = gerarNumeroAleatorio();
int tentativas = 0;

/* ---- Sistema ---- */

void main() {
  while (true) {
    tentativas++;
    stdout.write("# Adivinhe o número entre 1 e 999: ");
    var input = stdin.readLineSync();
    int palpite = int.parse(input.toString());

    if (palpite == NUMERO_SORTEADO) acertou(tentativas);
    else errou(NUMERO_SORTEADO, palpite);
  }
}

/* ---- Funcoes Auxiliares ---- */

int gerarNumeroAleatorio() {
  int minimo = 1;
  int maximo = 999;
  var random = Random();
  return random.nextInt(maximo) + minimo;
}

void acertou(tentativas) {
  stdout.write('# Você acertou em $tentativas tentativas!');
  exit(0);
}

void errou(int numeroSorteado, int palpite) {
  if (palpite < numeroSorteado) stdout.write("# O número é maior que ${palpite}");
  else stdout.write("# O número é menor que ${palpite}");
  stdout.write("\n\n");
}
