const fs = require('fs');

console.log("===SISTEMA DE SENSORES INDUSTRIAIS===");

const sensoresIndusdrias = [
    {id: 1, tipo: "temperatura", leituraAtual: 25.5, status:"operacinal"},
    {id: 2, tipo: "pressao", leituraAtual: 15.5, status:"operacinal"},
    {id: 3, tipo: "umidade", leituraAtual: 60.0, status:"alerta"}
    
];
const dadosJSON = JSON.stringify(sensoresIndusdrias, null, 2);
fs.writeFileSync("sensores.json", dadosJSON);
console.log("Arquivo 'sensores.json' gerado com sucesso.");