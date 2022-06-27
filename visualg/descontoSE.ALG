Algoritmo "descontoSE"

Var

valor: real

Inicio

      escreval("valor da compra: ")
      leia(valor)
      
      se (valor > 1555.55) entao
           escreval("total: ", valor*0.9)
           escreval("desconto: ", valor*0.1)
      senao
           escreval("total: ", valor)
      fimse

Fimalgoritmo