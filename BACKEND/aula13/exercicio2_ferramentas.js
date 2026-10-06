const fs = require('fs');
const entrada = require('readline-sync');

console.log("=== CADASTRO DE FERRAMENTAS ===");

const totalItens = entrada.questionInt("Quantas ferramentas deseja cadastrar?");

const ferramentas = [];

for (let i = 0; i < totalItens; i++) {
    console.log(`\nItem ${i+1} de ${totalItens}: `);

    const nome = entrada.question("Nome da ferramenta: ");
    const quantidade = entrada.questionInt("Quantidade: ");
    const custoUnitario = entrada.questionFloat("Custo unitario (R$): ");

    ferramentas.push({
        nome: nome,
        quantidade: quantidade,
        custoUnitario: custoUnitario
    });
}

fs.writeFileSync('ferramentas.json', JSON.stringify(ferramentas, null, 2));
console.log("\nCadastro concluido com sucesso!");