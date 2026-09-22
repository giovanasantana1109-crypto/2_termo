// EXERCÍCIO 09 - Cálculo de aproveitamento de	Nível 5; 14pts
// matéria-prima
// Objetivo: Organizar regras do programa em funções com parâmetros e retorno.
// Uma indústria deseja calcular o percentual de aproveitamento de matéria-prima. O aproveitamento é calculado por (quantidade útil / quantidade total) × 100.
// O programa deve:
// ☐ Criar a função calcularAproveitamento(util, total) que retorne o percentual.
// ☐ Criar a função classificarAproveitamento(percentual).
// ☐ Classificação: 90% ou mais = "EXCELENTE"; de 75% a 89,99% = "ADEQUADO"; abaixo de 75% = "REVISAR PROCESSO".
// ☐ Solicitar quantidade total e quantidade útil pelo terminal.
// ☐ Chamar as duas funções.
// ☐ Exibir total, quantidade útil, percentual e classificação.
const entrada = require ('readline-sync');

const materia = [];
const util = [];
const total = [];

if (materia)  {
 const calcularAproveitamento = util / total * 100;
 };

 console.log(`===APROVEITAMENTO DE MATERIA-PRIMA===`);
 console.log(`Nome da materia-prima: `);
 console.log(`Quantidade total: `);
 console.log(`Quantidade util: `);
 console.log(`Qual é o percentual: `);
 console.log("=====================");
 console.log(`A classificacao de aproveitamento da materia-prima: ${materia} - é xxx -`);




