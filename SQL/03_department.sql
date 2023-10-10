-- Quantidade de funcionários por departamento
SELECT 
    Department AS departamento,
    COUNT(*) AS qtd_funcionarios,
    FORMAT((COUNT(*) * 100) / (SELECT COUNT(*) FROM [DUNDER_MIFFLIN].[dbo].[funcionarios]), 'N2') AS Percent_Total
FROM 
    [DUNDER_MIFFLIN].[dbo].[funcionarios]
GROUP BY
    Department
ORDER BY
    COUNT(*) DESC