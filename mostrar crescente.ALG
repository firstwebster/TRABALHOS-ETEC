Algoritmo "semnome"
// 
//  
// Descri��o   : 1.	Leia 3 n�meros inteiros e exiba em ordem crescente.
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 11/11/2022
Var
// Se��o de Declara��es das vari�veis 

a, b, c: inteiro
Maior, Menor, Meio: inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

Escreval ("Digite tr�s numero naturias e positivos: ")
leia (a, b, c)

Se (a>=b) e (a>=c) ent�o
   Maior <- a
   Se (b>=c) ent�o
       Meio <- b
       Menor <- c
   Senao
       Se (c>=b) ent�o
           Meio <- c
           Menor <- b
       Fimse
   Fimse

Senao
   Se (b>=a) e (b>=c) ent�o
       Maior <- b
       Se (a>=c) ent�o
           Meio <- a
           Menor <- c
       Senao
           se (c>=a) ent�o
               Meio <- c
               Menor <- a
           Fimse
       Fimse

   Senao
       Se (c>=b) e (c>=a) ent�o
           maior <- c
           Se (b>=a) ent�o
               Meio <- b
               Menor <- a
           senao
               se (a>=b) ent�o
                   Meio <- a
                   Menor <- b
               Fimse
           Fimse
      Fimse
   Fimse
Fimse

Escreval (Menor, Meio, Maior)


Fimalgoritmo