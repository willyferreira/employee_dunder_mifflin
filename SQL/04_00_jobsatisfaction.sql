DECLARE @total_funcionarios FLOAT = (SELECT COUNT(*) FROM [PORTIFOLIO].[dunder_mifflin].[employee])

SELECT 
    JobSatisfaction AS satisfacao_trabalho,
    COUNT(*) AS qtd_funcionarios,
    FORMAT((COUNT(*) * 100 / @total_funcionarios), 'N2') AS '%_do_total'
FROM 
    [PORTIFOLIO].[dunder_mifflin].[employee]
GROUP BY
    JobSatisfaction
ORDER BY
    COUNT(*) DESC