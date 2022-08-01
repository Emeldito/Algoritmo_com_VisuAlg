Algoritmo "semnome"
// Disciplina  : [Linguagem e L�gica de Programa��o] 
// Professor(a): Emeldito Covane 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 16/09/2015
Var
// Se��o de Declara��es das vari�veis 
    recebe : real
    i,a,t,b,c,d, final: real
    

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
   recebe := 678.90
        i := (recebe/100)
        a := int(i) * 100
        t := recebe - a
        b := t / 10
        b := int(b)*10
        c := t - b
        d := (a + b)
        final := recebe - d

Fimalgoritmo