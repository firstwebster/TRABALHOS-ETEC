Algoritmo "Celsius em Farenheit"
//  
//  
// Descri��o   :
// Autor(a)    :
// Data atual  : 23/05/2023
Var
// Se��o de Declara��es das vari�veis 
  C, F: real
  resp: caractere

Inicio

repita
     escreva ("Digite a temperatura em Celsius: ") //Primeiro pede a info
     leia (C)
     
     F <- 9.0 * C / 5.0 + 32.0  // Faz o c�lculo em seguida
     
     escreval("Equivalente em Farenheit: ", F: 3:1) // transforma e apresenta o valor
     // em seguida pergunta se a pessoa quer que repita o processo
     escreva("Deseja repetir? (s/n)")
     leia(resp)
     
     ate resp <> "s" // enquanto for s o processo de convers�o � repetido.

    // � a melhor op��o quando se precisa repetir ao menos uma vez o c�lculo.


Fimalgoritmo