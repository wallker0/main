Algoritmo "somasub"

Var
     a, b, c : real
     menu, m: caracter
Inicio
       escreval ("escolha: soma, subt")
       leia(menu)
       se menu   = "soma"    entao
            escreval ("digite um numero")
            leia(a)
            escreval ("digite um numero")
            leia(b)
            c<-(a+b)
            escreval("soma: ", c)
       senao
            escreval ("digite um numero")
            leia(a)
            escreval ("digite um numero")
            leia(b)
            c<-(a-b)
            escreval("subtracao: ", c)
       fimse

Fimalgoritmo
