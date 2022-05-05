Algoritmo "preco"
//Disciplina: Estruturas de Decisão e Repetição
// Professor: Edson Shinki Kaneshima
// Descrição: Atividade preço de produto
//  Autor(a): Guilherme Rodrigues
//Data atual: 03/05/2022

Var
   preco, quantidade, total : real

Inicio

   //Recebe os dados de preço e quantidade
   //Alerta em caso de erro de Tipo
   //Calcula e informa o preço total, ou em 2x

   escreval("Digite o valor unitário: ")
   leia(preco)
   se preco = 0 entao
      limpatela
      escreval ("Digite o valor unitário: (SOMENTE NUMEROS)")
      leia(preco)
   fimse

   escreval ("Digite a quantidade vendida: ")
   leia(quantidade)
   se quantidade = 0 entao
      limpatela
      escreval ("Digite a quantidade vendida: (SOMENTE NUMEROS)")
      leia(quantidade)
   fimse

   total<-(preco*quantidade)

   limpatela
   escreval("Valor total: R$ ", total)
   escreval("Valor dividido em 2x: R$ ", (total/2))

Fimalgoritmo