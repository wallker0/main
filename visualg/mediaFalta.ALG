Algoritmo "mediaFalta"

Var

nota1, nota2: real
falta: inteiro

Inicio

      escreval("digite a nota 1: ")
      leia(nota1)
      escreval("digite a nota 2: ")
      leia(nota2)
      escreval("digite a qtde de faltas: ")
      leia(falta)
      
      se ((nota1+nota2)/2 >= 70) entao
         se (falta<=18) entao
            escreval("aprovado!")
         senao
            escreval("reprovado por falta!")
         fimse
      senao
         escreval("reprovado!")
      fimse
         
Fimalgoritmo