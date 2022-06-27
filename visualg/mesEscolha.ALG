Algoritmo "mesEscolha"

Var
   mes: inteiro
   m: caracter

Inicio
   escreval("Informe o mes: [1-12]")
   leia(mes)

   escolha (mes)
   caso 1
      m<-"Janeiro."
   caso 2
      m<-"Fevereiro."
   caso 3
      m<-"Marco."
   caso 4
      m<-"Abril."
   caso 5
      m<-"Maio"
   caso 6
      m<-"Junho"
   caso 7
      m<-"Julho"
   caso 8
      m<-"Agosto"
   caso 9
      m<-"Setembro"
   caso 10
      m<-"Outubro"
   caso 11
      m<-"Novembro"
   caso 12
      m<-"Dezembro"
   outrocaso
      m<-"INCORRETO"
   fimescolha

   escreval("Mes: ",m)

Fimalgoritmo