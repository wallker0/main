algoritmo "dec2bin"

var
   n: inteiro
   r: caracter

inicio

   escreval("digite um valor decimal: ")
   leia(n)
   
   enquanto (n>0) faca
      escolha (n mod 2)
      caso 0
         r<-"0"+r
      caso 1
         r<-"1"+r
      fimescolha
      n<-n div 2
   fimenquanto

   escreval("binario: ")
   escreval(r)

fimalgoritmo