Algoritmo "Cheque"
// Disciplina  :  [Linguagem e Lógica de Programação] 
// Professor   : Cristiane
// Descrição   : Cheque
// Autor(a)    : Webster Roberto Siqueira Santos
// Data atual  : 09/09/2022
Var
cq1, cq2, cq3, saldo : real

Inicio
escreva("Qual o seu saldo atual?")
leia(saldo)
escreva("Qual o valor do primeiro cheque a descontar?")
leia(cq1)
escreva("Qual o valor do segundo cheque a descontar?")
leia(cq2)
escreva("Qual o valor do terceiro cheque a descontar?")
leia(cq3)

se saldo-cq1>=0 entao
   saldo := saldo-cq1
senao
   escreva("Saldo insuficiente para descontar o primeiro cheque.")
fimse
   
se saldo-cq2>=0 entao
   saldo := saldo-cq2
senao
   escreva("Não foi possível descontar o segundo cheque.")
fimse

se saldo-cq3>=0 entao
   saldo := saldo-cq3
senao
   escreva("Não foi possível descontar o terceiro cheque.")
fimse
escreval
escreva("O seu saldo final é de:", saldo)

Fimalgoritmo