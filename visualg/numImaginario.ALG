algoritmo "numImaginario"
// Disciplina : ESTRUTURAS DE DECISAO E REPETICAO
// Descrição  : NUMERO IMAGINARIO
// Autor(a)   : GUILHERME HENRIQUE SANTOS RODRIGUES
// Data atual : 21/06/2022

var
   acrt: logico
   x,r: real
   i,dif,tent: inteiro

inicio

   acrt<-falso

   escreval("Escolha a dificuldade: <1-3>")
   escreval("1 - Facil")
   escreval("2 - Medio")
   escreval("3 - Dificil")
   leia(r)

   escolha r
   caso 1
      dif<-1
   caso 2
      dif<-2
   caso 3
      dif<-3
   outrocaso
      escreval("Dificuldade invalida, escolhida a padrao (medio)")
      dif<-2
   fimescolha

   se (dif=1) entao
      escreval("Dificuldade escolhida: Facil")
      x<-randi(1001)
      tent<-20
   senao
      se (dif=2) entao
         escreval("Dificuldade escolhida: Medio")
         x<-randi(5001)
         tent<-15
      senao
         escreval("Dificuldade escolhida: Dificil")
         x<-randi(10001)
         tent<-12
      fimse
   fimse

   para i de 1 ate tent faca
      escreval()
      escreval("Tentativas restantes:",tent-i)
      escreval("Escreva o numero:")
      leia(r)

      se (r=x) entao
         acrt<-verdadeiro
         interrompa
      senao
         se (r>x) entao
            escreval("Chutou alto!")
         senao
            se (r<x) entao
               escreval("Chutou baixo!")
            fimse
         fimse
      fimse
   fimpara

   escreval()

   se (acrt=verdadeiro) entao
      escreval("Parabens, Acertou! Numero:",x, " Tentativas usadas:", i)
   senao
      escreval("Infelizmente nao acertou. Boa sorte da proxima vez!")
      escreval("Numero imaginado:",x," Tentativas:", tent)
   fimse

fimalgoritmo