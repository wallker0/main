Algoritmo "mediaP"
// Disciplina   : [Linguagem e L�gica de Programa��o]
//  
// Descri��o   : MEDIA PONDERADA PROVA70/TRABALHO30
// Autor(a)    : GUILHERME HENRIQUE SANTOS RODRIGUES
// Data atual  : 09/05/2022

var
   prova,trabalho : real

inicio

      escreval("Digite a nota da prova: ")
      leia(prova)
      escreval("Digite a nota do trabalho: ")
      leia(trabalho)

      escreva("M�dia: ", ((prova*70)+(trabalho*30))/100)

fimalgoritmo