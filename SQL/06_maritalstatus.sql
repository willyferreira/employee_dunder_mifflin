DECLARE @total_funcionarios INT = (SELECT COUNT(*) FROM [PORTIFOLIO].[dunder_mifflin].[employee])

SELECT
    MaritalStatus AS estado_civil,
    COUNT(*) AS qtd_funcionarios,
    FORMAT((COUNT(*) * 100 / @total_funcionarios), 'N2') AS Percent_Total
FROM
    [PORTIFOLIO].[dunder_mifflin].[employee]
GROUP BY
    MaritalStatus
ORDER BY
    COUNT(*) DESC