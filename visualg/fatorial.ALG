algoritmo "fatorial"
// Disciplina : INTRODUCAO A LOGICA
// Descrição  : FATORIAL
// Autor(a)   : GUILHERME HENRIQUE SANTOS RODRIGUES
// Data atual : 13/06/2022

var
   n,i,l: inteiro


inicio

   escreval("informe o !numero:")
   leia(n)

   l<-n

   se (l=0) ou (l=1) entao
      n<-1
   senao
      para i de l ate 2 passo -1 faca
         n<-n*(i-1)
      fimpara
   fimse

   escreval("fatorial de",l,":")
   escreval(n)

fimalgoritmo