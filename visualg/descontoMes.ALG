algoritmo "descontoMes"
// Disciplina : INTRODUCAO A LOGICA
// Descrição  : CALCULO PARCELA/MES ANIVERSARIO
// Autor(a)   : GUILHERME HENRIQUE SANTOS RODRIGUES
// Data atual : 07/06/2022

var
   nome: caracter
   aniv,parc: inteiro
   val,p: real

inicio

   escreval("Informe seu nome: ")
   leia(nome)
   escreval("Informe seu mes de aniversario: [1-12]")
   leia(aniv)
   escreval("Informe o valor da compra: ")
   leia(val)

   escreval()

   se (val > 699.00) entao
      escolha aniv
      caso 1,3,5
         parc<-3
      caso 2,4,6
         parc<-2
      caso 7,9,11
         parc<-2
      caso 8,10,12
         parc<-3
      outrocaso
         parc<-1
      fimescolha
      p<-val/parc
      escreval(nome,", valor da compra: R$ ", val:4:2)
      escreval("Pode parcelar em ",parc,"x de R$ ",p:4:2)
   senao
      escreval(nome,", valor da compra: R$ ", val:4:2)
   fimse

fimalgoritmo