Algoritmo "webss"
// Disciplina  :  [Linguagem e L�gica de Programa��o] 
// Professor   : Cristiane
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : webster santos
// Data atual  : 05/08/2022
Var
// Se��o de Declara��es das vari�veis 
  nome: caracter
  media, calculo, nota1, nota2, nota3: real



Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
   escreva ("nome do aluno: ")
   leia(nome)
   escreval("digite a nota1 : ")
   leia(nota1)
   
   escreval("digite a nota2: ")
   leia(nota2)
   
   escreval("digite a nota3: ")
   leia(nota3)
   
   calculo:=(nota1+nota2+nota3)/3
   escreva("a m�dia do aluno ",nome," �" ,calculo:6:1)
   

Fimalgoritmo