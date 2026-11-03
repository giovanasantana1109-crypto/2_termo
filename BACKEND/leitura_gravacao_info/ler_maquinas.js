const fs = require('fs');
console.log("==SISTEMA DE LEITURA DE INFORMACOES==");

const nomeArquivo = "maquinas.json";

if (!fs.existsSync(nomeArquivo)) {
    console.error(`Erro: O arquivo '${nomeArquivo}' não foi enconstrado.`);
    process.exit(1);
}

const conteudoTexto = fs.readFileSync(nomeArquivo, 'utf-8');
const maquinasRecuperadas = JSON.parse(conteudoTexto);

console.log("Dados Carregados com sucesso");
console.table(maquinasRecuperadas);

console.log(`\nTotal de maquinas cadastradas: ${maquinasRecuperadas.length}`);
console.log(`Primeira maquina da lista: ${maquinasRecuperadas[0].nome}`)