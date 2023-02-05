/* ---- Importacoes ---- */

const prompt = require('./prompt')

/* ---- Variaveis ---- */

const numeroSorteado = gerarNumeroAleatorio()
let tentativas = 0

/* ---- Sistema ---- */

async function iniciar () {
  while (true) {
    tentativas++
    const palpite = await prompt.obterEntradaUsuario('# Adivinhe o número entre 1 e 999: ')

    if (palpite === numeroSorteado) acertou(tentativas)
    errou(numeroSorteado, palpite)
  }
}
iniciar()

/* ---- Funcoes Auxiliares ---- */

function gerarNumeroAleatorio () {
  const maximo = 999
  const minimo = 1

  const aleatorio = Math.random() * maximo
  return Math.floor(aleatorio) + minimo
}

function acertou (tentativas) {
  console.info(`# Você acertou em ${tentativas} tentativas!`)
  console.info()
  process.exit()
}

function errou (numeroSorteado, palpite) {
  const sinal = (palpite < numeroSorteado) ? 'maior' : 'menor'
  console.info(`# O número é ${sinal} que ${palpite}`)
  console.info()
}
