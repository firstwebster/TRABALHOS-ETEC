Algoritmo "semnome"
// 
//  
// Descrição   : 1.	Leia 3 números inteiros e exiba em ordem crescente.
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 11/11/2022
Var
// Seção de Declarações das variáveis 

a, b, c: inteiro
Maior, Menor, Meio: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

Escreval ("Digite três numero naturias e positivos: ")
leia (a, b, c)

Se (a>=b) e (a>=c) então
   Maior <- a
   Se (b>=c) então
       Meio <- b
       Menor <- c
   Senao
       Se (c>=b) então
           Meio <- c
           Menor <- b
       Fimse
   Fimse

Senao
   Se (b>=a) e (b>=c) então
       Maior <- b
       Se (a>=c) então
           Meio <- a
           Menor <- c
       Senao
           se (c>=a) então
               Meio <- c
               Menor <- a
           Fimse
       Fimse

   Senao
       Se (c>=b) e (c>=a) então
           maior <- c
           Se (b>=a) então
               Meio <- b
               Menor <- a
           senao
               se (a>=b) então
                   Meio <- a
                   Menor <- b
               Fimse
           Fimse
      Fimse
   Fimse
Fimse

Escreval (Menor, Meio, Maior)


Fimalgoritmo