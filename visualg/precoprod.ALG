Algoritmo "precoprod"
//Disciplina  : ESTRUTURAS DE DECIS�O E REPETI��O
//Professor   : EDSON SHINKI KANESHIMA
//Descri��o   : PRE�O COM DESCONTO CONDICIONAL
//Autor(a)    : GUILHERME HENRIQUE SANTOS RODRIGUES
//Data atual  : 24/05/2022

Var

   prod1, prod2: caracter
   preco1,preco2,total: real

Inicio

   escreval("Digite o NOME do produto 1:")
   leia(prod1)
   escreval("Digite o NOME do produto 2:")
   leia(prod2)
   escreval("Informe o PRE�O do produto 1:")
   leia(preco1)
   escreval("Informe o PRE�O do produto 2:")
   leia(preco2)

   total<-preco1+preco2
   limpatela

   se (total > 759.80) entao
      escreval("Produto 1: ", prod1, ", pre�o:", preco1)
      escreval("Produto 2: ", prod2, ", pre�o:", preco2)
      escreval("Total:", total)
      escreval("")
      escreval("Desconto(20%):", total*0.2)
      escreval("Produto 1: ", prod1, ", pre�o apos desconto:", preco1*0.8)
      escreval("Produto 2: ", prod2, ", pre�o apos desconto:", preco2*0.8)
      escreval("Total apos desconto:", total*0.8)
   senao
      escreval("Produto 1: ", prod1, ", pre�o:", preco1)
      escreval("Produto 2: ", prod2, ", pre�o:", preco2)
      escreval("Total:", total)
   fimse

Fimalgoritmo