DECLARE @total_funcionarios INT = (SELECT COUNT(*) FROM [PORTIFOLIO].[dunder_mifflin].[employee])
-- Quantidade de funcionários por departamento

SELECT 
    Department AS departamento,
    COUNT(*) AS qtd_funcionarios,
    FORMAT((COUNT(*) * 100) / @total_funcionarios, 'N2') AS '%_do_total'
FROM 
    [PORTIFOLIO].[dunder_mifflin].[employee]
GROUP BY
    Department
ORDER BY
    COUNT(*) DESC