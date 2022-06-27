algoritmo "impRenda"
// Disciplina : INTRODUCAO A LOGICA
// Descrição  : CALCULO IMPOSTO DE RENDA
// Autor(a)   : GUILHERME HENRIQUE SANTOS RODRIGUES
// Data atual : 07/06/2022

var
   nome: caracter
   dep: inteiro
   rendab,rendal: real

inicio

   escreval("Informe o nome: ")
   leia(nome)
   escreval("Informe o numero de dependentes: ")
   leia(dep)
   escreval("Informe a renda bruta anual: ")
   leia(rendab)

   rendal<-(rendab-(600*dep))

   escreval()
   
   se (rendal<=10000) entao
      escreval(nome,", Renda liquida: R$",rendal,", Isento.")
   senao
      se (rendal>10000) e (rendal<=30000) entao
         escreval(nome,", Renda liquida:",rendal,", Imposto: R$",rendal*0.05)
         escreval("Renda apos imposto: ",rendal*0.95)
      senao
         se (rendal>30000) e (rendal<=60000) entao
            escreval(nome,", Renda liquida:",rendal,", Imposto: R$",rendal*0.10)
            escreval("Renda apos imposto: ",rendal*0.90)
         senao
            se (rendal>60000) entao
               escreval(nome,", Renda liquida:",rendal,", Imposto: R$",rendal*0.15)
               escreval("Renda apos imposto: ",rendal*0.85)
            fimse
         fimse
      fimse
   fimse

fimalgoritmo