algoritmo "ordemCrescente"
// Disciplina : INTRODUCAO A LOGICA
// Descrição  : ORDEM CRESCENTE
// Autor(a)   : GUILHERME HENRIQUE SANTOS RODRIGUES
// Data atual : 30/05/2022

var
   i,i2,m: inteiro
   n: vetor [1..3] de inteiro

inicio

   para i de 1 ate 3 faca
      escreval("Informe o",i," numero:")
      leia(n[i])
   fimpara

   para i de 1 ate 3 faca
      para i2 de i+1 ate 3 faca
         se (n[i]>n[i2]) entao
            m<-n[i]
            n[i]<-n[i2]
            n[i2]<-m
         fimse
      fimpara
   fimpara

   escreva("Ordem crescente:")
   para i de 1 ate 3 faca
      escreva(n[i])
   fimpara

fimalgoritmo