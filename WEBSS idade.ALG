Algoritmo "webss"
// Disciplina  :  [Linguagem e L�gica de Programa��o] 
// Professor   : Cristiane
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : webster santos
// Data atual  : 05/08/2022
Var
// Se��o de Declara��es das vari�veis 
  nome: caracter
   idade,dias,meses,horas: inteiro
  calculo:inteiro


Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
   escreva(" Primeiro digite o seu nome: ")
   leia(nome)
   escreva("agora digite a sua idade: ")
   leia(idade)


   dias:=idade*365
   meses:=idade*12
   horas:=dias*24

    calculo:=idade*365
    escreval(" sua idade em dias �: ",calculo)
    calculo:= idade*12
    escreval(" sua idade em meses �: ",calculo)
    calculo:= dias*24
    escreval(" sua idade em horas �: ",calculo)
    

Fimalgoritmo