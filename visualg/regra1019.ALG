Algoritmo "regra1019"
//Disciplina  : ESTRUTURAS DE DECISÃO E REPETIÇÃO
//Professor   : EDSON SHINKI KANESHIMA
//Descrição   : REGRA 10 OU 19
//Autor(a)    : GUILHERME HENRIQUE SANTOS RODRIGUES
//Data atual  : 24/05/2022

Var
   n1,n2,n3,i: inteiro

Inicio

   para i de 1 ate 3 faca
      escreval("Informe o",i,"° numero:")
      escolha i
          caso 1
            leia(n1)
          caso 2
            leia(n2)
          caso 3
            leia(n3)
      fimescolha
   fimpara

   se (n1 mod 2 = 0) e (n2 mod 2 = 0) e (n3 mod 2 = 0) entao
      escreval("Foi aplicada a regra 10 com os números:",n1,",",n2," e",n3)
   senao
      escreval("Foi aplicada a regra 19 com os números:",n3,",",n2," e",n1)
   fimse

Fimalgoritmo