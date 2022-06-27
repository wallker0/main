algoritmo "triangulo"
// Disciplina : ESTRUTURAS DE DECISAO E REPETICAO
// Descrição  : TRIANGULO
// Autor(a)   : GUILHERME HENRIQUE SANTOS RODRIGUES
// Data atual : 30/05/2022

var
   n: vetor [1..3] de real
   i: inteiro
   x,y,z: real
   t: caracter

inicio

   para i de 1 ate 3 faca
      escreval("Informe o",i," numero:")
      leia(n[i])
   fimpara

   se (n[1]>n[2]) e (n[1]>n[3]) entao
      x<-n[1]
      y<-n[2]
      z<-n[3]
   senao
      se (n[2]>n[1]) e (n[2]>n[3]) entao
         x<-n[2]
         y<-n[1]
         z<-n[3]
      senao
         se (n[3]>n[1]) e (n[3]>n[2]) entao
            x<-n[3]
            y<-n[2]
            z<-n[1]
         senao
            se (n[1]=n[2]) e (n[1]=n[3]) entao
               x<-n[1]
               y<-n[2]
               z<-n[3]
            senao
               se (n[1]=n[2]) e (n[1]<n[3]) entao
                  x<-n[3]
                  y<-n[1]
                  z<-n[2]
               fimse
               se (n[1]=n[2]) e (n[1]>n[3]) entao
                  x<-n[1]
                  y<-n[2]
                  z<-n[3]
               fimse
               se (n[2]=n[3]) e (n[2]<n[1]) entao
                  x<-n[1]
                  y<-n[2]
                  z<-n[3]
               fimse
               se (n[2]=n[3]) e (n[2]>n[1]) entao
                  x<-n[2]
                  y<-n[3]
                  z<-n[1]
               fimse
               se (n[1]=n[3]) e (n[1]<n[2]) entao
                  x<-n[2]
                  y<-n[1]
                  z<-n[3]
               fimse
               se (n[1]=n[3]) e (n[1]>n[2]) entao
                  x<-n[1]
                  y<-n[2]
                  z<-n[3]
               fimse
            fimse
         fimse
      fimse
   fimse
   se (y+z>x) entao
      se (x=y) e (x=z) entao
         t<-"equilatero"
      senao
         se (x<>y) e (x<>z) e (y<>z) entao
            t<-"escaleno"
         senao
            se (x<>y) e (y=z) ou (x<>z) e (z=y) ou (x<>z) e (x=y) ou (x<>y) e (x=z) entao
               t<-"isosceles"
            fimse
         fimse
      fimse
      escreval("Os numeros informados formam um triangulo ",t)
   senao
      escreval("Os numeros informados NAO formam um triangulo.")
   fimse

fimalgoritmo