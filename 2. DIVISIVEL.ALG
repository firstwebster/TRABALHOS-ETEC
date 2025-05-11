Algoritmo "divisivel"
// Disciplina  :  [Linguagem e Lógica de Programação]
// Professor   : Cristiane
// Descrição   : Verificar se o número digitado é divisível pelo outro
// Autor(a)    : Webster Roberto Siqueira Santos
// Data atual  : 09/09/2022

Var
x, y :inteiro


Inicio
escreva("Digite o primeiro número:")
leia(y)
escreva("Digite o segundo número:")
leia(x)

se y % x = 0 entao
   escreva("O número,", y, " é divisível pelo número ", x)
senao
   escreva("O número,", y, " não é divisível pelo número ", x,".")
fimse

Fimalgoritmo