algoritmo "ordemCrescente"
// Disciplina : INTRODUCAO A LOGICA
// Descrição  : ORDEM CRESCENTE
// Autor(a)   : GUILHERME HENRIQUE SANTOS RODRIGUES
// Data atual : 30/05/2022

var
   i: inteiro
   n : vetor [1..3] de inteiro

inicio

   para i de 1 ate 3 faca
      escreval("Informe o",i," numero:")
      leia(n[i])
   fimpara

   se (n[1]<n[2]) e (n[1]<n[3]) entao
      se (n[2]<n[3]) entao
         escreval("Numeros em ordem crescente: ",n[1],",",n[2],",",n[3])
      senao
         escreval("Numeros em ordem crescente: ",n[1],",",n[3],",",n[2])
      fimse
   senao
      se (n[2]<n[1]) e (n[2]<n[3]) entao
         se (n[1]<n[3]) entao
            escreval("Numeros em ordem crescente: ",n[2],",",n[1],",",n[3])
         senao
            escreval("Numeros em ordem crescente: ",n[2],",",n[3],",",n[1])
         fimse
      senao
         se (n[3]<n[1]) e (n[3]<n[2]) entao
            se (n[1]<n[2]) entao
               escreval("Numeros em ordem crescente: ",n[3],",",n[1],",",n[2])
            senao
               escreval("Numeros em ordem crescente: ",n[3],",",n[2],",",n[1])
            fimse
         senao
            se (n[1]=n[2]) e (n[1]=n[3]) entao
               escreval("Numeros em ordem crescente: ",n[1],",",n[2],",",n[3])
            senao
               se (n[1]=n[2]) e (n[1]<n[3]) entao
                  escreval("Numeros em ordem crescente: ",n[1],",",n[2],",",n[3])
               senao
                  se (n[1]=n[3]) e (n[1]<n[2]) entao
                     escreval("Numeros em ordem crescente: ",n[1],",",n[3],",",n[2])
                  senao
                     se (n[2]=n[3]) e (n[2]<n[1]) entao
                        escreval("Numeros em ordem crescente: ",n[2],",",n[3],",",n[1])
                     fimse
                  fimse
               fimse
            fimse
         fimse
      fimse
   fimse

fimalgoritmo