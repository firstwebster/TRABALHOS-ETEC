Algoritmo "INVENTARIO DE VINHO"
// 
//  
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 11/11/2022
Var
// Se��o de Declara��es das vari�veis 
 t, r, b, tot : inteiro
tpor, rpor, bpor : real
resp : caractere


Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
 t <- 0
r <- 0
b <- 0

repita
escreval("Digite T para Tinto, B para Branco e R para Ros�, para finalizar digite F.")
leia(resp)
         se resp="T" entao
            t <- t +1
         senao
              se resp="B" entao
              b <- b +1
              senao
                   se resp="R" entao
                   r <- r +1
                   senao
                        se resp = "F" entao
                        escreval("Contagem finalizada")
                        senao
                        escreval("Op��o inv�lida.")
                        fimse
                   fimse
              fimse
         fimse
at� resp = "F"

tot <- t+b+r

escreval("O total de Tinto � ", t, ", que corresponde � ", ((t/tot)*100), "%.")
escreval("O total de Branco � ", b, ", que corresponde � ", ((b/tot)*100), "%.")
escreval("O total de Ros� � ", r, ", que corresponde � ", ((r/tot)*100), "%.")


Fimalgoritmo