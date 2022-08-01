algoritmo "Bubble Sort"
// Disciplina: [Linguagem e L�gica de programa�ao] 
// Algoritmo BUBBLESORT
// Fun��o : Demonstra��o para o programa VisuAlg
// Autor : Claudio Morgado de Souza
// Data atual  : 01/08/2022
Dos
var
   a, b : inteiro
   temp : real
   x : vetor[1..10] de real
inicio
// Leitura dos dados
aleatorio 0,100,3
para a de 1 ate 10 faca
   leia(x[a])
fimpara
// Ordena��o
para a de 1 ate 10 faca
   para b de 1 ate 9 faca
      se x[b] > x[b+1] entao
         temp <- x[b]
         x[b] <- x[b+1]
         x[b+1] <- temp
      fimse
   fimpara
fimpara
// Impress�o dos dados ordenados
para a de 1 ate 10 faca
   escreval(a:3," - ", x[a] : 10 : 3)
fimpara
fimalgoritmo


