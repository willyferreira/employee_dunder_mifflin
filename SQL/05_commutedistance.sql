-- Quantidade de funcionários por distancia do trabalho
DECLARE @total_funcionarios INT = (SELECT COUNT(*) FROM [PORTIFOLIO].[dunder_mifflin].[employee])

SELECT
    CommuteDistance AS distancia_trabalho,
    COUNT(*) AS qtd_funcionarios,
    FORMAT((COUNT(*) * 100) / @total_funcionarios, 'N2') AS Percent_Total
FROM 
    [PORTIFOLIO].[dunder_mifflin].[employee]
GROUP BY 
    CommuteDistance
ORDER BY COUNT(*) DESC