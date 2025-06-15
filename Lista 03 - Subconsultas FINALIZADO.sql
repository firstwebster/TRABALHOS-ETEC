/* ********************  Subconsultas  ******************************************* */

use Empresa3M

/*1 – Mostre todos os dados dos pedidos dos clientes da Alemanha*/

SELECT NumPed, CodCli, CodFun, DataPed, DataEntrega, Frete
FROM Pedidos Ped
WHERE Ped.CodCli in
	(SELECT codcli FROM Clientes WHERE Pais = 'Alemanha')

/*2 – Exiba todos os produtos da categoria condimentos*/

SELECT P.*
FROM Produtos P
WHERE CodCategoria in
	(SELECT CodCategoria FROM Categorias WHERE Descr = 'condimentos')
	

/*3 – Mostre a descrição de todos os produtos que NÃO são fornecidos 
por fornecedores do EUA*/

SELECT P.Descr
FROM Produtos P
WHERE  CodFor not in
	(SELECT CodFor FROM Fornecedores WHERE Pais = 'EUA')

/*4 – Apresente a descrição de todos os produtos que NÃO fizeram parte 
dos pedidos de março de 1997*/



SELECT Descr 
FROM Produtos 
WHERE CodProd IN (SELECT CodProd 
FROM DetalhesPed 
WHERE NumPed IN (SELECT NumPed 
FROM Pedidos 
WHERE YEAR(Dataped) <> 1997 
AND MONTH(Dataped) <> 3 )) 



/*5 – Exiba o código, a descrição e o preço do produto mais barato*/

SELECT CodProd, Descr, Preco 
FROM Produtos 
WHERE Preco = (SELECT MIN(Preco)
FROM Produtos) 

/*6 – Exiba o nome e os salários dos funcionários que recebem o maior salário*/

SELECT Nome, Salario FROM Funcionarios WHERE Salario = (SELECT MAX(Salario)FROM Funcionarios) 

/*7 – Mostre o nome e os salários dos funcionários que recebem o menor e o 
maior salários em ordem de salário*/

SELECT Nome, Salario 
FROM Funcionarios 
WHERE Salario = (SELECT MAX(Salario)
FROM Funcionarios)
OR Salario = (SELECT MIN(Salario)
FROM Funcionarios)
ORDER BY Salario 

/*8 – Exiba o código, a descrição e o preço de todos os produtos que 
tenham preço superior ao preço médio*/

SELECT CodProd, Descr, Preco FROM Produtos WHERE Preco > (SELECT AVG(Preco)FROM Produtos) 

/*9 – Exiba nome, sobrenome, cargo e salário de todos os representantes de 
vendas cujos salários sejam inferiores aos de todos os gerentes e coordenadores*/

SELECT Nome, Sobrenome, Cargo, Salario FROM Funcionarios 
WHERE Cargo = 'Representante de Vendas' AND Salario < ALL (SELECT Salario FROM Funcionarios WHERE Cargo LIKE 'gerente%'OR Cargo LIKE 'coordenador%') 
/*10 – Apresente nome, sobrenome, cargo e salário de todos os coordenadores 
cujos salários sejam superiores aos de algum dos representantes de vendas*/

SELECT Nome, Sobrenome, Cargo, Salario FROM Funcionarios 
WHERE Cargo LIKE 'Coordenador%' AND Salario > ANY (SELECT Salario FROM Funcionarios WHERE Cargo = 'Representante de Vendas')
/*11 – Mostre o nome dos funcionários e todos os dados dos pedidos que realizaram, 
cujo valor do frete esteja acima da média dos valores dos fretes*/

SELECT F.Nome, P.* FROM Funcionarios F, Pedidos P 
WHERE F.CodFun = P.CodFun AND P.Frete > (SELECT AVG(Frete)FROM Pedidos)

/*12 – Exiba todos os dados dos produtos com preço menor que todos os 
produtos da categoria “confeitos”*/

SELECT * FROM Produtos WHERE Preco < ALL (SELECT Preco FROM Produtos WHERE CodCategoria IN (SELECT CodCategoria FROM Categorias WHERE Descr = 'Confeitos'))
