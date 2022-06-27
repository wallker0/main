Algoritmo "media2"
// Disciplina   : [Linguagem e Lógica de Programação]
//  
// Descrição   : MEDIA SIMPLES DUAS NOTAS
// Autor(a)    : GUILHERME HENRIQUE SANTOS RODRIGUES
// Data atual  : 09/05/2022

var
   nota,soma : real
   i : inteiro

inicio

      para i de 1 ate 2 faca
        escreval("Digite a nota",i,":")
        leia(soma)
        nota<-nota+soma
      fimpara

      escreval("Média: ", (nota/2))

fimalgoritmo