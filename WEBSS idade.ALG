Algoritmo "webss"
// Disciplina  :  [Linguagem e Lógica de Programação] 
// Professor   : Cristiane
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : webster santos
// Data atual  : 05/08/2022
Var
// Seção de Declarações das variáveis 
  nome: caracter
   idade,dias,meses,horas: inteiro
  calculo:inteiro


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   escreva(" Primeiro digite o seu nome: ")
   leia(nome)
   escreva("agora digite a sua idade: ")
   leia(idade)


   dias:=idade*365
   meses:=idade*12
   horas:=dias*24

    calculo:=idade*365
    escreval(" sua idade em dias é: ",calculo)
    calculo:= idade*12
    escreval(" sua idade em meses é: ",calculo)
    calculo:= dias*24
    escreval(" sua idade em horas é: ",calculo)
    

Fimalgoritmo