Algoritmo "webss"
// Disciplina  :  [Linguagem e Lógica de Programação] 
// Professor   : Cristiane
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : webster santos
// Data atual  : 05/08/2022
Var
// Seção de Declarações das variáveis 
  nome: caracter
  media, calculo, nota1, nota2, nota3: real



Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   escreva ("nome do aluno: ")
   leia(nome)
   escreval("digite a nota1 : ")
   leia(nota1)
   
   escreval("digite a nota2: ")
   leia(nota2)
   
   escreval("digite a nota3: ")
   leia(nota3)
   
   calculo:=(nota1+nota2+nota3)/3
   escreva("a média do aluno ",nome," é" ,calculo:6:1)
   

Fimalgoritmo