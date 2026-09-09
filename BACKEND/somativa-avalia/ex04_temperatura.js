// Objetivo: Trabalhar com if, else if e else em uma regra de negócio.
// Crie um programa que leia a temperatura de uma máquina e classifique sua situação.
// O programa deve:
// ☐ Até 60 °C: situação NORMAL.
// ☐ De 61 °C até 80 °C: situação ATENÇÃO.
// ☐ Acima de 80 °C: situação CRÍTICA.
// ☐ Solicitar a temperatura pelo terminal.
// ☐ Exibir a temperatura e a classificação.

// Teste mínimo
// • Teste com 50 °C, 70 °C e 90 °C.

const entrada = require('readline-sync');

console.log("=== Bem-vindo ao programa de classificacao de temperatura da giii (; ===");

const temperatura = entrada.questionFloat("Qual a temperatura da maquina? ");

if (temperatura <= 60) {
    return console.log(`Temperatura: ${temperatura} °C \nSituação: NORMAL`)
}
else if (temperatura >= 61 && temperatura <= 80) {
    return console.log(`Temperatura: ${temperatura} °C \nSituação: ATENÇÃO`)
}
else if (temperatura > 80) {
    return console.log(`Temperatura: ${temperatura} °C \nSituação: CRÍTICA`)
}

