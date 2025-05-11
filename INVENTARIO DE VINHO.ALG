Algoritmo "INVENTARIO DE VINHO"
// 
//  
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 11/11/2022
Var
// Seção de Declarações das variáveis 
 t, r, b, tot : inteiro
tpor, rpor, bpor : real
resp : caractere


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
 t <- 0
r <- 0
b <- 0

repita
escreval("Digite T para Tinto, B para Branco e R para Rosê, para finalizar digite F.")
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
                        escreval("Opção inválida.")
                        fimse
                   fimse
              fimse
         fimse
até resp = "F"

tot <- t+b+r

escreval("O total de Tinto é ", t, ", que corresponde à ", ((t/tot)*100), "%.")
escreval("O total de Branco é ", b, ", que corresponde à ", ((b/tot)*100), "%.")
escreval("O total de Rosê é ", r, ", que corresponde à ", ((r/tot)*100), "%.")


Fimalgoritmo