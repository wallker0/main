Algoritmo "SEmedia"
//Disciplina  : ESTRUTURAS DE DECISÃO E REPETIÇÃO
//Professor   : EDSON SHINKI KANESHIMA
//Descrição   : MEDIA PONDERADA COM CONDIÇÃO
//Autor(a)    : GUILHERME HENRIQUE SANTOS RODRIGUES
//Data atual  : 24/05/2022

Var
   nota1, nota2, nota3, p1, p2, p3, media: real
   nome, curso: caracter

Inicio

   escreval("Digite o nome do aluno: ")
   leia(nome)
   escreval("Digite o nome da disciplina: ")
   leia(curso)
   escreval("Digite a nota 1: ")
   leia(nota1)
   escreval("Digite a nota 2: ")
   leia(nota2)
   escreval("Digite a nota 3: ")
   leia(nota3)
   escreval("Digite o peso da nota 1: ")
   leia(p1)
   escreval("Digite o peso da nota 2: ")
   leia(p2)
   escreval("Digite o peso da nota 3: ")
   leia(p3)

   media<-((nota1*p1)+(nota2*p2)+(nota3*p3))/100

   se (media >= 70) entao
      escreval(nome," voce foi aprovado em ", curso, " com media", media," .")
   senao
      escreval(nome," voce foi reprovado em ", curso, " com media", media," .")
   fimse

Fimalgoritmo