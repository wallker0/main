algoritmo "numPrimo"
// Disciplina : ESTRUTURAS DE DECISAO E REPETICAO
// Descrição  : NUMERO PRIMO
// Autor(a)   : GUILHERME HENRIQUE SANTOS RODRIGUES
// Data atual : 21/06/2022
var
   r: caracter
   i,j,n: inteiro

inicio

   r<-"s"

   enquanto (r="s") ou (r="S") faca

      escreval("Informe um numero inteiro:")
      leia(n)

      para i de 1 ate n faca
         se (n mod i = 0) entao
            j<-j+1
         fimse
      fimpara

      escreval()

      se (j<=2) entao
         escreval(n, ": É primo.")
      senao
         escreval(n,": Não é primo.")
      fimse

      j<-0

      escreval()
      escreval("Continuar com outro numero? <S/N>")
      leia(r)
      
   fimenquanto

fimalgoritmo