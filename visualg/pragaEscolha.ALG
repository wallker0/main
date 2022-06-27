Algoritmo "pragaEscolha"

Var
   cod: inteiro
   area: real

Inicio
   escreval("Informe o codigo da praga: [1-4]")
   leia(cod)
   escreval("Informe a area:")
   leia(area)

   escolha (cod)
   caso 1
      escreval("Custo: R$",area*0.5)
   caso 2
      escreval("Custo: R$",area*1)
   caso 3
      escreval("Custo: R$",area*1.5)
   caso 4
      escreval("Custo: R$",area*2.5)
   outrocaso
      escreval("CODIGO INVALIDO")
   fimescolha

Fimalgoritmo