const entrada = require ('readline-sync');

const materias =[];
// let ... crias repeticao de algo 
for ( let i = 0; i <= 3; i++){
    const material = {
          nome: entrada.question(`Digite o nome do produto ${i+1}:`),
    quantidade: entrada.question(`Digite o quantidade do produto ${i+1}:`),
    estoqueMinimo: entrada.question(`Digite a quantidade minima do produto ${i+1}:`)
    };
materias.push.apply(material)
}

console.log('===RELATORIO DE ESTOQUE===');

for ( let i =0; i < materias.length; i++){
    const produto = materias [1];

    let situacao;
    if (produto.quantidade < produto.estoqueMinimo){
        situacao = "REPOR ESTOQUE";
    }else{
        situacao = "ESTOQUE OK";
    }
}
console.log(`Materal: ${produto.nome}`);
console.log(`Quantidade: ${produto.quantidade}`);
console.log(`Estoque minimo: ${produto.estoqueMinimo}`);
console.log(`Situacao: ${situacao}`);
console.log("-".repeat(20));