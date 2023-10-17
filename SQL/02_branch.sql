-- Quantidade de funcionários por filial da empresa
DECLARE @total_funcionarios INT = (SELECT COUNT(*) FROM [PORTIFOLIO].[dunder_mifflin].[employee])
SELECT @total_funcionarios

SELECT 
    Branch AS 'filial',
    COUNT(EmployeeID) AS 'qtd_funcionarios',
    FORMAT((COUNT(EmployeeID) * 100 / @total_funcionarios), 'N2') AS perc_total
FROM 
    [PORTIFOLIO].[dunder_mifflin].[employee]
GROUP BY
    Branch
ORDER BY
    COUNT(EmployeeID) DESC