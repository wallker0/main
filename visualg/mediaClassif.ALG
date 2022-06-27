algoritmo "mediaClassificada"
// Disciplina : INTRODUCAO A LOGICA
// Descrição  : MEDIA CLASSIFICADA
// Autor(a)   : GUILHERME HENRIQUE SANTOS RODRIGUES
// Data atual : 30/05/2022

var
   media: real

inicio

   escreval("Informe a media:")
   leia(media)

   se (media>=0) e (media<=10) entao
      se (media>8.5) entao
         escreval("Classificacao: EXCELENTE")
      senao
         se (media>7) e (media<=8.5) entao
            escreval("Classificacao: BOM")
         senao
            se (media>6) e (media<=7) entao
               escreval("Classificacao: SUFICIENTE")
            senao
               se (media>4) e (media<=6) entao
                  escreval("Classificacao: INSUFICIENTE")
               senao
                  se (media>2) e (media<=4) entao
                     escreval("Classificacao: MAU")
                  senao
                     escreval("Classificacao: PESSIMO")
                  fimse
               fimse
            fimse
         fimse
      fimse
   senao
      escreval("Media informada incorretamente [0 a 10]")
   fimse

fimalgoritmo