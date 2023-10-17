-- Quantidade de funcionários por departamento
DECLARE @total_funcionarios INT = (SELECT COUNT(*) FROM [PORTIFOLIO].[dunder_mifflin].[employee])

SELECT 
    Department AS departamento,
    COUNT(*) AS qtd_funcionarios,
    FORMAT((COUNT(*) * 100) / @total_funcionarios, 'N2') AS Percent_Total
FROM 
    [PORTIFOLIO].[dunder_mifflin].[employee]
GROUP BY
    Department
ORDER BY
    COUNT(*) DESC