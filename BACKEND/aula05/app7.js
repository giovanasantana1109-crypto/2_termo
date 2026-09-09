const entrada = require('readline-sync');

console.log("--- SISTEMA DE MULTA ---");

const velo = entrada.question("Em que velocidade o veículo estava: ");

if  (velo >= 80) {
    console.log("Multado! O anjo aguarda");
} else {
    console.log("Continue a Viagem, o anjo te guarda");
}
