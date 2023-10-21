-- Quantidade de funcionários por distancia do trabalho
DECLARE @total_funcionarios INT = (SELECT COUNT(*) FROM [PORTIFOLIO].[dunder_mifflin].[employee])
-- SELECT @total_funcionarios
-- SELECT
--     CommuteDistance AS distancia_trabalho,
--     COUNT(*) AS qtd_funcionarios,
--     FORMAT((COUNT(*) * 100) / @total_funcionarios, 'N2') AS Percent_Total
-- FROM 
--     [PORTIFOLIO].[dunder_mifflin].[employee]
-- GROUP BY 
--     CommuteDistance
-- ORDER BY COUNT(*) DESC

-- SELECT
--     CommuteDistance AS distancia_trabalho,
--     COUNT(*) AS qtd_funcionarios,
--     COUNT(*) * 100 / @total_funcionarios AS Percent_Total
-- FROM 
--     [PORTIFOLIO].[dunder_mifflin].[employee]
-- GROUP BY 
--     CommuteDistance
-- ORDER BY COUNT(*) DESC

SELECT CONVERT(DECIMAL(10,2), 11/2)



-- SELECT
--     CommuteDistance,
--     COUNT(*)
-- FROM 
--     [PORTIFOLIO].[dunder_mifflin].[employee]
-- GROUP BY CommuteDistance


SELECT CommuteDistance,
COUNT (*),
CONVERT(DECIMAL(10,2), (COUNT (*) * 100 / SUM( COUNT(*)) OVER()))
FROM PORTIFOLIO.dunder_mifflin.employee
GROUP BY CommuteDistance