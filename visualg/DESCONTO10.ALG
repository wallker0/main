Algoritmo "DESCONTO10"
// Disciplina   : [Linguagem e Lógica de Programação]
//  
// Descrição   : DESCONTO 10% PRODUTO
// Autor(a)    : GUILHERME HENRIQUE SANTOS RODRIGUES
// Data atual  : 09/05/2022

var
   valor,valorfinal : real

inicio

      escreval("Insira o valor do produto para calcular o desconto: ")
      leia(valor)

      escreva("Valor final do produto apos desconto: ", (valor-((valor*10)/100)))

fimalgoritmo