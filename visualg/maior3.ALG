algoritmo "maior3"

var
   i,j,k,m,maior: inteiro
   n: vetor[1..3] de inteiro

inicio

   maior<-0
   k<-0

   repita

      para i de 1 ate 3 faca
         escreval("informe o",i," numero:")
         leia(n[i])
      fimpara

      para i de 1 ate 3 faca
         para j de i+1 ate 3 faca
            se (n[i]>n[j]) entao
               m<-n[i]
               n[i]<-n[j]
               n[j]<-m
            fimse
         fimpara
      fimpara

      escreval()
      escreva("sequencia:")
      para i de 1 ate 3 faca
         escreva(n[i])
      fimpara

      escreval()
      escreval("maior:",n[3])
      escreval()

      maior<-maior+n[3]
      k<-k+1

   ate (n[1]=n[2]) e (n[1]=n[3])

   escreval("finalizado",k," sequencias, media dos maiores:",maior/k)

fimalgoritmo