Algoritmo "bissexto"
// Disciplina  :  [Linguagem e Lógica de Programação]
// Professor   : Cristiane
// Descrição   : Verificar se o ano digitado é bisexto ou não
// Autor(a)    : Webster Roberto Siqueira Santos
// Data atual  : 09/09/2022

Var
ano : inteiro

Inicio
escreva("Digite o ano para consulta:")
leia(ano)

se (ano%4=0) e (ano%100<>0) entao
   escreva("Ano ", ano, " é bissexto.")
senao
   escreva("Ano ", ano, " não é bissexto.")
fimse

Fimalgoritmo