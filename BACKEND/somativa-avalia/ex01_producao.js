// Objetivo: Revisar variáveis, operações matemáticas e saída de dados.
// Uma linha de produção fabrica uma determinada quantidade de peças por hora. Crie um programa que calcule quantas peças serão produzidas em um turno.

// O programa deve:
// ☐ Criar uma variável com a quantidade de peças produzidas por hora.
// ☐ Criar uma variável com a quantidade de horas do turno.
// ☐ Calcular a produção total do turno.
// ☐ Exibir uma frase informando a produção por hora, as horas e o total produzido.

// Teste mínimo
// • Use, pelo menos uma vez, os valores 120 peças/hora e 8 horas. O resultado deverá ser 960 peças


const entrada = require('readline-sync');
 
console.log("=== Bem-vindo ao programa de calculos de producao de pecas da giii (; ===")

const peca = entrada.questionFloat("Qual foi a duração do horário de produção? ");
const horas = entrada.questionFloat("Qual foi a quantidade de peças produzidas por hora? ");
const total = peca * horas;




console.log(`O horario de producao e de ${horas}, com uma producao equivalente a ${peca}.  `);
console.log(`O total produzido no turno e de ${total} pecas.`)