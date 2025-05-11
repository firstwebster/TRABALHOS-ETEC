Algoritmo "MegaSena"
// Disciplina  :  [Linguagem e Lógica de Programação] 
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 18/11/2022
Var
  numAleatorio,num : vetor [1..6] de inteiro
  numEsc, K : inteiro
  sorteado,a,j,i : inteiro
  aprovado ,terminar : logico
  opcao : caractere
Inicio
repita
    terminar <- falso

    escreval("-------------------MEGA SENA-------------------")
    escrevaL("-----------------------------------------------")
    escreval("Faça sua aposta com 6 números de 1 a 60:")
    para numEsc de 1 ate 6 faca
      repita
        repita
          aprovado <- falso
          leia(num[numEsc])
          se (num[numEsc] < 1 ) ou (num[numEsc] > 60) entao
            aprovado <- verdadeiro
            escreval("Número inválido, por favor, digite outro número:")
          fimse
        ate nao aprovado
        aprovado <- falso
        para a de 1 ate 6 faca
          se (num[numEsc] = num[a]) e (numEsc <> a) entao
            aprovado <- verdadeiro
            escreval("Número repetido, por favor, digite outro número:")
            interrompa
          fimse
        fimpara
      ate nao aprovado
    fimpara
    limpatela


    para i de 1 ate 5 faca
      para j de i+1 ate 6 faca
        se num[ i ] > num[ j ] entao
          K <- num[ j ]
          num[ j ] <- num[ i ]
          num[ i ] <- K
        fimse
      fimpara
    fimpara


    escreval("-------------------MEGA SENA-------------------")
    escrevaL("-----------------------------------------------")
    escreval
    escreva("Os numeros escolhidos foram: ")
    para numEsc de 1 ate 6 faca
       escreva(num[numEsc])
    fimpara
    escreval
    escrevaL("-----------------------------------------------")


    para sorteado DE 1 ate 6 faca
      repita
        aprovado <- falso
        numAleatorio [sorteado] <- RANDI(60) + 1
        para j de 1 ate 6 faca
          se (numAleatorio[sorteado] = numAleatorio[j]) e (sorteado <> j) entao
            aprovado <- verdadeiro
            interrompa
          fimse
        fimpara
      ate nao aprovado
    fimpara


    escreval
    escreval
    escrevaL("-----------------------------------------------")
    escreva("Os numeros sorteados foram: ")
    para i de 1 ate 6 faca
      para j de i +1 ate 6 faca
        se numAleatorio[i] >  numAleatorio[j] entao
           K <- numAleatorio[j]
           numAleatorio[j] <- numAleatorio[i]
           numAleatorio[i] <- K
        fimse
      fimpara
      escreva(numAleatorio[i])
    fimpara
    escreval
    escrevaL("-----------------------------------------------")
    
    a <- 0
    para i de 1 ate 6 faca
      para j de 1 ate 6 faca
        se ( num[i] = numAleatorio[j]) entao
          a <- a + 1
          interrompa
        fimse
      fimpara
    fimpara


      se a = 4 entao
        escreval("Você Acertou Quatro Números!")
      senao
        se a = 5 entao
          escreval("Você Acerou Cinco Números!")
        senao
          se a = 6 entao
            escreval("Parabéns, você está milionário")
          senao
               escreval("Não há premiação!")
          fimse
        fimse
      fimse

      
    escreval("Quer Fazer Outra Aposta? S para continuar e N para finalizar.")
    leia(opcao)
    se (opcao) = "N" entao
      terminar <- verdadeiro
    fimse
  ate terminar
fimalgoritmo