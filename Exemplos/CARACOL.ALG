Algoritmo "Caracol"
// Disciplina: [Linguagem e Lógica de programaçao] 
// Professor: Emeldito Covane
// Função: Calcula os passos de um caracol para subir o poço
// Autor(a)    : Professor Covane
// Data atual  : 01/08/2022
Var 
        Sobe, Desce: Real 
        Dias, Total : Inteiro
     
Inicio
        Sobe  <- 0.0
        Desce <- 0.5
        Dias  <- 0
        Total <- 10
        Limpatela		
        Escreval("Cálcular os passos de um Caracol")
        Escreval("================================")
        Escreval(" ")
        Para Dias de 0 ate Total faca
             se Sobe <= Total entao
                Sobe <- Sobe + 2 - Desce
                Escreval("Sobe = ",Sobe)
             senao
                 interrompa
             fimse
        fimpara

        Escreval(" ")
        Escreval("O Caracol levou ",Dias," dias")
        Escreval(" ")
        
fimAlgoritmo

