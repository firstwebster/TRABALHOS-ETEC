Algoritmo "bissexto"
// Disciplina  :  [Linguagem e L�gica de Programa��o]
// Professor   : Cristiane
// Descri��o   : Verificar se o ano digitado � bisexto ou n�o
// Autor(a)    : Webster Roberto Siqueira Santos
// Data atual  : 09/09/2022

Var
ano : inteiro

Inicio
escreva("Digite o ano para consulta:")
leia(ano)

se (ano%4=0) e (ano%100<>0) entao
   escreva("Ano ", ano, " � bissexto.")
senao
   escreva("Ano ", ano, " n�o � bissexto.")
fimse

Fimalgoritmo