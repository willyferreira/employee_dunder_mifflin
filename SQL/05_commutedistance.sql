DECLARE @total_funcionarios FLOAT = (SELECT COUNT(*) FROM [PORTIFOLIO].[dunder_mifflin].[employee])

SELECT
    CommuteDistance,
    COUNT(*) AS qtd_funcionarios,
    FORMAT((COUNT(*) * 100 / @total_funcionarios), 'N2') AS '%_do_total'
FROM 
    [PORTIFOLIO].[dunder_mifflin].[employee]
GROUP BY
    CommuteDistance
ORDER BY
    COUNT(*) DESC