const entrada = require('readline-sync');

console.log("--- SISTEMA DE ANALISE DE CREDITO ---");

// COLETA DE DADOS
const nome = entrada.question("Nome do cliente: ");
const idade = entrada.questionInt("Idade: ");
const renda = entrada.questionFloat("Renda Mesal: ");
const temImovel = entrada.keyInYNStrict("Possui imovel proprio? "); // essa funcao le Y para true e N para false

// Alogia Combinada
// (idade >= 18) é obrigatorio
// (renda >= 2500 || temImovel === true) um dos dois tem que ser verdade

if (idade >= 18 && (renda >= 2500 || temImovel === true)) {
    console.log(`\nPARABENS,  ${nome}! Seu credito foi APROVADO!`);
}

else {
    console.log(`\nSinto muito, ${nome}. Seu credito foi NEGADO.`);
}