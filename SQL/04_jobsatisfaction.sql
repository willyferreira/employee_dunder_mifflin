DECLARE @total_funcionarios INT = (SELECT COUNT(*) FROM [PORTIFOLIO].[dunder_mifflin].[employee])

-- Quantidade de funcionários por satisfacao com o trabalho
SELECT 
    JobSatisfaction AS satisfacao_trabalho,
    COUNT(*) AS qtd_funcionarios,
    FORMAT((COUNT(*) * 100) / @total_funcionarios, 'N2') AS Percent_Total
FROM 
    [PORTIFOLIO].[dunder_mifflin].[employee]
GROUP BY
    JobSatisfaction
ORDER BY
    JobSatisfaction