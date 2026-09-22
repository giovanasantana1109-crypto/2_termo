

const entrada = require ('readline-sync');

let acumulador = 0;

for (let valor = 1; volr <=6; valor++) {
    const peca = entrada.questionFloat(`Digite o valor da ${peca}: ` )
    acumulador += peca;
}
const media = acumulador / 6;

console.log(`Total de defeitos: ${acumulador}`);
console.log(`Media: ${media}`);