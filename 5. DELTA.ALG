Algoritmo "Delta"
// Disciplina  :  [Linguagem e Lógica de Programação]
// Professor   : Cristiane
// Descrição   : Verificar o Delta
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
   escreva("Não existe raíz real.")
senao
   se delta = 0 entao
      r1 := (-b+raizq(delta))/(2*a)
      escreva("Raíz é:", r1)
   senao
      se delta > 0 entao
      r1 := (-b+raizq(delta))/(2*a)
      r2 := (-b-raizq(delta))/(2*a)
      escreva("As raízes são r1:", r1, " e r2:", r2)
      fimse
   fimse
fimse


Fimalgoritmo