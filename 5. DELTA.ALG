Algoritmo "Delta"
// Disciplina  :  [Linguagem e L�gica de Programa��o]
// Professor   : Cristiane
// Descri��o   : Verificar o Delta
// Autor(a)    : Webster Roberto Siqueira Santos
// Data atual  : 09/09/2022

Var
a, b, c, r1, r2, delta : real

Inicio
escreva("Qual o valor de a?")
leia(a)
escreva("Qual o valor de b?")
leia(b)
escreva("Qual o valor de c?")
leia(c)

delta := (b^2)-(4*a*c)

se delta<0 entao
   escreva("N�o existe ra�z real.")
senao
   se delta = 0 entao
      r1 := (-b+raizq(delta))/(2*a)
      escreva("Ra�z �:", r1)
   senao
      se delta > 0 entao
      r1 := (-b+raizq(delta))/(2*a)
      r2 := (-b-raizq(delta))/(2*a)
      escreva("As ra�zes s�o r1:", r1, " e r2:", r2)
      fimse
   fimse
fimse


Fimalgoritmo