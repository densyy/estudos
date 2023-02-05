# Importacoes

import random
import sys

# Funcoes Auxiliares

def gerar_numero_aleatorio():
    maximo = 999
    minimo = 1
    return random.randint(minimo, maximo)

def acertou(tentativas):
    print("# Você acertou em", tentativas, "tentativas!")
    print()
    sys.exit()

def errou(numero_sorteado, palpite):
    if (palpite < numero_sorteado):
        print("# O número é maior que", palpite)
    else:
        print("# O número é menor que", palpite)
    print()

# Variaveis

NUMERO_SORTEADO = gerar_numero_aleatorio()
tentativas = 0

# Sistema

while True:
    tentativas += 1
    palpite = input("# Adivinhe o número entre 1 e 999: ")
    palpite = int(palpite)

    if (palpite == NUMERO_SORTEADO):
        acertou(tentativas)
    else:
      errou(NUMERO_SORTEADO, palpite)
