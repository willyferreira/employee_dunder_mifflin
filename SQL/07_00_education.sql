DECLARE @total_funcionarios FLOAT = (SELECT COUNT(*) FROM [PORTIFOLIO].[dunder_mifflin].[employee])

SELECT
    Education,
    COUNT(*) AS qtd_funcionarios,
    FORMAT(((COUNT(*) / @total_funcionarios) * 100), 'N2') AS '%_do_total'
FROM
    [PORTIFOLIO].[dunder_mifflin].[employee]
GROUP BY
    Education
ORDER BY
    COUNT(*) DESC