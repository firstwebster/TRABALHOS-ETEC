Algoritmo "Senha correta"
//  
//  
// Descrição   :
// Autor(a)    :
// Data atual  : 23/05/2023
Var
// Seção de Declarações das variáveis 
senha : inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   escreval("Digite a Senha: ")
   leia(senha)

   enquanto senha <> 2002 faca //enquanto a senha digitada não for 2002 o programa
       escreva("Senha Invalida! Tente Novamente: ")    //vai entrar no enquanto
       leia(senha)
   fimenquanto
   
   escreval("Acesso Permitido! ")  //quando a senha estiver correta o acesso é liberado
Fimalgoritmo