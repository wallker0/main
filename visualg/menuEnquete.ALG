Algoritmo "enqueteJogo"

Var
   ex: logico
   a,b,c,esc: inteiro
   t,ta,tb,tc: real

Inicio

   enquanto (ex=falso) faca

      limpatela
      escreval("1 - Vencedor Time A")
      escreval("2 - Vencedor Time B")
      escreval("3 - Empate")
      escreval("9 - Sair")
      leia(esc)

      escolha esc
      caso 1
         a<-a+1
         escreval()
         escreval("Voto Contabilizado [Time A]")
         escreval()
         escreval("..tecle [Enter] para continuar..")
         leia(esc)
      caso 2
         b<-b+1
         escreval()
         escreval("Voto Contabilizado [Time B]")
         escreval()
         escreval("..tecle [Enter] para continuar..")
         leia(esc)
      caso 3
         c<-c+1
         escreval()
         escreval("Voto Contabilizado [Empate]")
         escreval()
         escreval("..tecle [Enter] para continuar..")
         leia(esc)
      caso 9
         t<-a+b+c
         ta<-a*100/t
         tb<-b*100/t
         tc<-c*100/t
         escreval()
         escreval("Total de votos: ",t)
         escreval("Votos [Time A]: ",a)
         escreval("Votos [Time B]: ",b)
         escreval("Votos [Empate]: ",c)
         escreval("Porcentagem [Time A]: ",ta:4:2,"%")
         escreval("Porcentagem [Time B]: ",tb:4:2,"%")
         escreval("Porcentagem [Empate]: ",tc:4:2,"%")
         escreval()
         escreval("..tecle [Enter] para finalizar..")
         leia(esc)
         ex<-verdadeiro
      outrocaso
         escreval()
         escreval("Voto invalido!")
         escreval()
         escreval("..tecle [Enter] para voltar..")
         leia(esc)
      fimescolha

   fimenquanto

Fimalgoritmo