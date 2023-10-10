-- Quantidade de funcionários por distancia do trabalho
DECLARE @total_funcionarios INT = (SELECT COUNT(*) FROM [DUNDER_MIFFLIN].[dbo].[funcionarios])

SELECT
    CommuteDistance AS distancia_trabalho,
    COUNT(*) AS qtd_funcionarios,
    FORMAT((COUNT(*) * 100) / @total_funcionarios, 'N2') AS Percent_Total
FROM 
    [DUNDER_MIFFLIN].[dbo].[funcionarios]
GROUP BY 
    CommuteDistance
ORDER BY COUNT(*) DESC