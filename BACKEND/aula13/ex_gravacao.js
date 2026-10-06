const fs = require('fs');

console.log("===SISTEMA DE PERSISTENCIA: REGISTRODE MAQUINAS");

const maquinasIndustrias = [
    {id: 101, nome: "Torno Mecanico Universal", setor: "Usinagem", operacional: true},
    {id: 102, nome: "Fresadora Ferramenteira", setor: "Usinagem", operacional: false},
    {id: 103, nome: "Prensa Hidraulica", setor: "Estampagem", operacional: true}
]
const dadosparaGravar = JSON.stringify(maquinasIndustrias,null,2);

const nomeDoArquivo = "maquinas.json";
fs.writeFileSync(nomeDoArquivo, dadosparaGravar);
console.log(`\nGravacao concluida com sucesso.`);
console.log(`Verifique o arquivo'${nomeDoArquivo}'gerado na barra lateral do VS Code.`);
