Algoritmo "divisivel"
// Disciplina  :  [Linguagem e L�gica de Programa��o]
// Professor   : Cristiane
// Descri��o   : Verificar se o n�mero digitado � divis�vel pelo outro
// Autor(a)    : Webster Roberto Siqueira Santos
// Data atual  : 09/09/2022

Var
x, y :inteiro


Inicio
escreva("Digite o primeiro n�mero:")
leia(y)
escreva("Digite o segundo n�mero:")
leia(x)

se y % x = 0 entao
   escreva("O n�mero,", y, " � divis�vel pelo n�mero ", x)
senao
   escreva("O n�mero,", y, " n�o � divis�vel pelo n�mero ", x,".")
fimse

Fimalgoritmo