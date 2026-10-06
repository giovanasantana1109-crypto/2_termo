// o verificador de votacao. objeetivo:praticar 'if/else' simples. 
// crie um programa que peça o nome do usuario e o ano de nascimnto. o programa deva calcular e dizer se ele já pode votar(com a idade minima sendo 16 anos)

const entrada = require('readline-sync');

const nome = entrada.question("Nome: ");
const nasci = entrada.questionInt("Qual o seu ano de nascimento: ");

const idade = 2026 - nasci;

console.log(`${nome}, você tem ${idade} anos.`);

if (idade >= 16) {
    console.log("Você pode votar.");
} else {
    console.log("Você não pode votar.");
}



