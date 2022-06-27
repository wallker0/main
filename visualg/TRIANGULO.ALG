algoritmo "triangulo"
// Disciplina : INTRODUCAO A LOGICA
// Descrição  : TRIANGULO
// Autor(a)   : GUILHERME HENRIQUE SANTOS RODRIGUES
// Data atual : 30/05/2022

var
   n: vetor [1..3] de real
   i: inteiro
   t: caracter

inicio

   para i de 1 ate 3 faca
      escreval("Informe o",i," numero:")
      leia(n[i])
   fimpara

   se (n[1]+n[2]>n[3]) e (n[1]+n[3]>n[2]) e (n[2]+n[3]>n[1]) entao
      se (n[1]=n[2]) e (n[1]=n[3]) entao
         t<-"equilatero."
      senao
         se (n[1]=n[2]) ou (n[1]=n[3]) ou (n[2]=n[3]) entao
            t<-"isosceles."
         senao
            se (n[1]<>n[2]) e (n[1]<>n[3]) e (n[2]<>n[3]) entao
               t<-"escaleno."
            fimse
         fimse
      fimse
      escreval("Os numeros informados formam um triangulo ",t)
   senao
      escreval("Os numeros informados NAO formam um triangulo.")
   fimse

fimalgoritmo