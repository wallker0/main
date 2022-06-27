algoritmo "randPW"

var
   t,y,z,i,length: inteiro
   num: logico
   str: caracter
   x: vetor [0..62] de caracter

inicio

   num<-verdadeiro
   length<-10

   para z de 97 ate 122 faca
      x[y]<-carac(z)
      y<-y+1
   fimpara

   para z de 65 ate 90 faca
      x[y]<-carac(z)
      y<-y+1
   fimpara

   para z de 48 ate 57 faca
      x[y]<-carac(z)
      y<-y+1
   fimpara

   para i de 0 ate length faca
      se (num=verdadeiro) entao
         se (i=0) entao
            t<-randi(52)
         senao
            t<-randi(62)
         fimse
      senao
         t<-randi(52)
      fimse
      str<-str+x[t]
   fimpara

   escreval(str)

fimalgoritmo