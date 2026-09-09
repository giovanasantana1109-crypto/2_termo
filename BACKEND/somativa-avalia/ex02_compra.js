// Objetivo: Utilizar entrada de dados no terminal e operações com valores numéricos.
// Crie um programa para calcular o custo de uma compra de matéria-prima.

// O programa deve:
// ☐ Importar a biblioteca readline-sync.
// ☐ Solicitar ao usuário o nome do material.
// ☐ Solicitar a quantidade comprada.
// ☐ Solicitar o preço unitário.
// ☐ Calcular o valor total da compra.
// ☐ Exibir um pequeno resumo da compra.

// Teste mínimo
// • Exemplo: 10 unidades a R$ 12,50 devem resultar em R$ 125,00.

const entrada = require('readline-sync');
console.log("=== Bem-vindo ao programa de calculo de custo de compra de materia-prima da giii (; ===");

const material = entrada.question("Qual o nome do material a ser comprado? ");
const unitario = entrada.questionFloat("Qual o preco unitario do material? ");
const quantidade = entrada.questionFloat("Qual a quantidade comprada? ");
const total = unitario * quantidade;

console.log(`${quantidade} unidades de ${material} a R$ ${unitario.toFixed(2)} que resultara no total de R$ ${total.toFixed(2)} `);


