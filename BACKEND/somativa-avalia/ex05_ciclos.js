// Objetivo: Utilizar laço de repetição para gerar uma sequência de resultados.
// Uma máquina produz uma quantidade fixa de peças a cada ciclo. Crie um programa que mostre a produção acumulada do ciclo 1 até o ciclo 10.

// O programa deve:
// ☐ Solicitar quantas peças a máquina produz por ciclo.
// ☐ Utilizar um laço for para percorrer os ciclos de 1 até 10.
// ☐ Em cada ciclo, exibir o número do ciclo e a produção acumulada.
// ☐ Não escrever manualmente as dez linhas.

// Teste mínimo
// • Se forem 15 peças por ciclo: ciclo 1 = 15; ciclo 5 = 75; ciclo 10 = 150.

const entrada = require('readline-sync');

console.log("=== Bem-vindo ao programa de calculo de producao acumulada da giii (; ===");

const peca = entrada.questionFloat("Quantas pecas a maquina produz por ciclo? ");