algoritmo "imc"
// Disciplina : INTRODUCAO A LOGICA
// Descrição  : CALCULO IMC
// Autor(a)   : GUILHERME HENRIQUE SANTOS RODRIGUES
// Data atual : 07/06/2022

var
   imc,p,a: real

inicio

   escreval("Informe o peso em Kg:")
   leia(p)
   escreval("Informe a altura em metros, modelo: 1.80")
   leia(a)

   imc<-(p/(a*a))

   se (imc<18.5) entao
      escreval("IMC ",imc:4:2)
      escreval("Abaixo do peso.")
   senao
      se (imc>=18.5) e (imc<=24.9) entao
         escreval("IMC ",imc:4:2)
         escreval("Peso normal.")
      senao
         se (imc>24.9) e (imc<=29.9) entao
            escreval("IMC ",imc:4:2)
            escreval("Sobrepeso.")
         senao
            se(imc>29.9) entao
               escreval("IMC ",imc:4:2)
               escreval("Obeso.")
            fimse
         fimse
      fimse
   fimse

fimalgoritmo