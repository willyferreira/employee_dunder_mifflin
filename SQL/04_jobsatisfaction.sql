-- Quantidade de funcionários por satisfacao com o trabalho
SELECT 
    JobSatisfaction AS satisfacao_trabalho,
    COUNT(*) AS qtd_funcionarios,
    FORMAT((COUNT(*) * 100) / (SELECT COUNT(*) FROM [DUNDER_MIFFLIN].[dbo].[funcionarios]), 'N2') AS Percent_Total
FROM 
    [DUNDER_MIFFLIN].[dbo].[funcionarios]
GROUP BY
    JobSatisfaction
ORDER BY
    JobSatisfaction