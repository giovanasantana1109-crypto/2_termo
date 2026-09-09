// Objetivo: Aplicar uma estrutura condicional simples.
// Uma peça será aprovada no controle de qualidade quando seu peso estiver entre 95 g e 105 g, inclusive. Crie um programa que leia o peso e informe o resultado da inspeção.

// O programa deve:
// ☐ Solicitar o peso da peça.
// ☐ Usar if/else para decidir se a peça está dentro do padrão.
// ☐ Exibir 'PEÇA APROVADA' quando estiver entre 95 e 105 g.
// ☐ Exibir 'PEÇA REPROVADA' nos demais casos.
// ☐ Exibir também o peso informado.

// Teste mínimo
// • Teste com 100 g e com 110 g.

const entrada = require('readline-sync');
console.log("=== Bem-vindo ao programa de controle de qualidades da giii (; ===");

const peso = entrada.questionFloat("Qual o peso da peca? ");

// Uma peça será aprovada no controle de qualidade quando seu peso estiver entre 95 g e 105 g
if (peso >= 95 && peso <= 105) {
    return console.log(`Peso: ${peso} g\nPEÇA APROVADA`);
} 
else {
    return console.log(`Peso: ${peso}g \nPECA REPROVADA`);
}



