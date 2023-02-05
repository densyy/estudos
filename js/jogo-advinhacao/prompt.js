/* ---- Importacoes ---- */

const readline = require('readline')
const prompt = readline.createInterface({
  input: process.stdin,
  output: process.stdout
})

function obterEntradaUsuario (pergunta) {
  return new Promise((resolve) => {
    prompt.question(pergunta, (entrada) => {
      resolve(Number(entrada))
    })
  })
}

module.exports = { obterEntradaUsuario }
