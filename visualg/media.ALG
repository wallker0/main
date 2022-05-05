algoritmo "media"

var
   nome : caracter
   n,s : real
   i : inteiro
   
inicio

      escreva("Digite o nome do aluno: ")
      leia(nome)

      para i de 1 ate 4 faca
        escreva("Digite a nota",i,":")
        leia(s)
        n<-n+s
      fimpara
      
      limpatela
      escreva("Aluno: ",nome,". Média:", (n/4))
      
fimalgoritmo
