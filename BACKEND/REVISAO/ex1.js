const entrada = require(`readline-sync`);
 const temperatura = entrada.questionFloat("Digite a temperatura: "); 
 
 if (temperatura <= 60){ 
    console.log(`A temperatura de ${temperatura}C esta NORMAL`); 

}
else if (temperatura <= 80){ 
    console.log(`A tempertaura ${temperatura}C exibe ATECAO`);
 }
 else { 
    console.log(`A temperatura ${temperatura}C e CRITICA`); 
}