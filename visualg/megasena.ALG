algoritmo "megasena"
// Disciplina : INTRODUCAO A LOGICA
// Descrição  : MEGA SENA
// Autor(a)   : GUILHERME HENRIQUE SANTOS RODRIGUES
// Data atual : 14/06/2022

var
   n: real
   par,impar,t,i,j: inteiro
   loop: caracter
   num: vetor[1..6] de real

inicio

   loop<-"s"

   enquanto (loop="S") ou (loop="s") faca

      para i de 1 ate 6 faca
         n<-randi(61)
         enquanto (n = 0) ou (n = num[1]) ou (n = num[2]) ou (n = num[3]) ou (n = num[4]) ou (n = num[5]) ou (n = num[6]) faca
            n<-randi(61)
         fimenquanto
         num[i]<-n
      fimpara

      para i de 1 ate 6 faca
         para j de i+1 ate 6 faca
            se (num[i]>num[j]) entao
               n<-num[i]
               num[i]<-num[j]
               num[j]<-n
            fimse
         fimpara
      fimpara

      para i de 1 ate 6 faca
         se (num[i] mod 2 = 0) entao
            par<-par+1
         senao
            impar<-impar+1
         fimse
         escreva(num[i]:3)
      fimpara

      t<-t+1

      escreval()
      escreval("Gerar mais uma sequencia? <S/N>")
      leia(loop)

   fimenquanto

   escreval("Finalizado com",t," sequências geradas")
   escreval(par," pares e",impar," impares.")

fimalgoritmo