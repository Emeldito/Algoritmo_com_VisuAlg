algoritmo "Bubble Sort"
// Disciplina: [Linguagem e L�gica de programa�ao] 
// Algoritmo BUBBLESORT
// Funcao : Demonstra��o para o programa VisuAlg 3.03
// Autor : Emeldito  Covane
// Data atual  : 01/08/2022

// Algoritmo BUBBLESORT
// Fun��o : Demonstra��o para o programa VisuAlg 2.0
// Autor : Emeldito Covane
// Data atual  : 01/08/2022
// For�a a execu��o do programa na janela DOS
dos
var
   a, b : inteiro
   x : vetor[1..10] de real

procedimento troca( var a, b : real )
var t : real
inicio
    t <- a
    a <- b
    b <- t
fimprocedimento

inicio
// Leitura dos dados
// Gerar numeros aleatorios entre 0 e 100, com 3 casas decimais
aleatorio 0,100,3
para a de 1 ate 10 faca
   leia(x[a])
fimpara
// Ordena��o
para a de 1 ate 10 faca
   para b de 1 ate 9 faca
      se x[b] > x[b+1] entao
         troca(x[b],x[b+1])
      fimse
   fimpara
fimpara
// Impress�o dos dados ordenados
para a de 1 ate 10 faca
   escreval(a:3," - ", x[a] : 10 : 3)
fimpara
fimalgoritmo


