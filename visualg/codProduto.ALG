Algoritmo "codProduto"

Var
   cod: inteiro
   cls: caracter

Inicio
   escreval("Informe o codigo do produto: [1-15]")
   leia(cod)

   escolha (cod)
   caso 1
      cls<-"alimento nao-perecivel."
   caso 2 ate 4
      cls<-"alimento perecivel."
   caso 5 ate 6
      cls<-"vestuario."
   caso 7
      cls<-"higiene pessoal."
   caso 8 ate 15
      cls<-"limpeza e utensilios domesticos."
   outrocaso
      cls<-"CODIGO INVALIDO"
   fimescolha

   escreval("Produto: ",cls)

Fimalgoritmo