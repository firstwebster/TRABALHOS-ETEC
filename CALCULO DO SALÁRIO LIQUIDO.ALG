Algoritmo "CALCULO DO SALÁRIO LIQUIDO"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : CRISTIANE
// Descrição   : função: Calcular de forma automática o salário liquido
// Autor(a)    : WEBSTER
// Data atual  : 23/09/2022
Var
// Seção de Declarações das variáveis 
 nome,aliq:caractere
hora,vhora,depend,salariobr,salariolq,inss,irrf,abat,baseirrf:real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
  escreva("Digite o nome do funcionário: ")
leia(nome)
escreva("digite a quantidade de horas trabalhada: ")
leia(hora)
Escreva("Digite o valor da hora trabalhada: ")
leia(vhora)
escreva("Digite a quantidade de dependente: ")
leia(depend)

salariobr:=hora*vhora
se(salariobr<=1212.00)entao
inss:=salariobr*7.5/100
salariolq:=salariobr-inss
aliq:="7.5%"
senao
   se(salariobr>1212.01)e(salariobr<=2427.35)entao
   inss:=(salariobr*9/100)-18.18
   salariolq:=salariobr-inss
   aliq:="9%"
   senao
      se(salariobr>2427.36)e(salariobr<=3641.03)entao
      inss:=(salariobr*12/100)-91
      salariolq:=salariobr-inss
      aliq:="12%"
      senao
         se(salariobr>3641.04)e(salariobr<=7087.22)entao
         inss:=(salariobr*14/100)-163.82
         salariolq:=salariobr-inss
         aliq:="14%"
            senao
            se(salariobr>7087.23)entao
            inss:=828.39
            salariolq:=salariobr-inss
            aliq:="Teto"
            fimse
         fimse
      fimse
   fimse
fimse
se(salariobr<=1212)entao
inss:=salariobr*7.5/100
salariolq:=salariobr-inss
escreval(nome," abaixo o seu holerite")
escreval("O salario bruto é de: R$",salariobr)
escreval( "O Salario Liquido é de: R$",salariolq)
Escreval("O valor do INSS é de: R$",inss)
escreval("A Aliquota de INSS é de: ",aliq)
Escreval("Isento de IRRF")
Escreval("O valor do desconto é de: R$",inss)
   senao
   se(salariolq<=1903.98)entao
   escreval(nome," abaixo o seu holerite")
   escreval("O salario bruto é de: R$",salariobr)
   escreval( "O Salario Liquido é de: R$",salariolq)
   Escreval("O valor do INSS é de: R$",inss)
   escreval("A Aliquota de INSS é de: ",aliq)
   Escreval("Isento de IRRF")
   Escreval("O valor do desconto é de: R$",inss)
      senao
      abat:=depend*189.59
      baseirrf:=salariolq-abat
      irrf:=(baseirrf*7.5/100)-142.80
      se(baseirrf>1903.99)e(baseirrf<2826.65)e(irrf>0)entao
      escreval(nome," abaixo o seu holerite")
      escreval("O salario bruto é de: R$",salariobr)
      escreval( "O Salario Liquido é de: R$",salariolq-irrf)
      Escreval("O valor do INSS é de: R$",inss)
      escreval("A Aliquota de INSS é de: ",aliq)
      Escreval("o valor do IRRF é de: R$",irrf)
      escreval("a Aliquota de IRRF é de 7,5%")
      Escreval("O valor do desconto é de: R$",inss+irrf)
         senao
         abat:=depend*189.59
         baseirrf:=salariolq-abat
         irrf:=(baseirrf*15/100)-354.80
         se(baseirrf>2826.66)e(baseirrf<3751.05)e(irrf>0)entao
         escreval(nome," abaixo o seu holerite")
         escreval("O salario bruto é de: R$",salariobr)
         escreval( "O Salario Liquido é de: R$",salariolq-irrf)
         Escreval("O valor do INSS é de: R$",inss)
         escreval("A Aliquota de INSS é de: ",aliq)
         Escreval("o valor do IRRF é de: R$",irrf)
         escreval("a Aliquota de IRRF é de 15%")
         Escreval("O valor do desconto é de: R$",inss+irrf)
            senao
            abat:=depend*189.59
            baseirrf:=salariolq-abat
            irrf:=(baseirrf*22.5/100)-636.13
            se(baseirrf>3751.06)e(baseirrf<4664.68)e(irrf>0)entao
            escreval(nome," abaixo o seu holerite")
            escreval("O salario bruto é de: R$",salariobr)
            escreval( "O Salario Liquido é de: R$",salariolq-irrf)
            Escreval("O valor do INSS é de: R$",inss)
            escreval("A Aliquota de INSS é de: ",aliq)
            Escreval("o valor do IRRF é de: R$",irrf)
            escreval("a Aliquota de IRRF é de 22,5%")
            Escreval("O valor do desconto é de: R$",inss+irrf)
               senao
               abat:=depend*189.59
               baseirrf:=salariolq-abat
               irrf:=(baseirrf*27.5/100)-869.36
               se(baseirrf>4664.68)e(irrf>0)entao
               escreval(nome," abaixo o seu holerite")
               escreval("O salario bruto é de: R$",salariobr)
               escreval( "O Salario Liquido é de: R$",salariolq-irrf)
               Escreval("O valor do INSS é de: R$",inss)
               escreval("A Aliquota de INSS é de: ",aliq)
               Escreval("o valor do IRRF é de: R$",irrf)
               escreval("a Aliquota de IRRF é de 27,5%")
               Escreval("O valor do desconto é de: R$",inss+irrf)
                  senao
                  escreval(nome," abaixo o seu holerite")
                  escreval("O salario bruto é de: R$",salariobr)
                  escreval( "O Salario Liquido é de: R$",salariolq)
                  Escreval("O valor do INSS é de: R$",inss)
                  escreval("A Aliquota de INSS é de: ",aliq)
                  Escreval("o valor do IRRF é de: R$ 0,00")
                  escreval("a Aliquota de IRRF é de isento")
                  Escreval("O valor do desconto é de: R$",inss)
                  fimse
               fimse
            fimse
         fimse
      fimse


   fimse
fimalgoritmo
