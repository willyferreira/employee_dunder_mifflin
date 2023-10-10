DECLARE @total_funcionarios INT = (SELECT COUNT(*) FROM [DUNDER_MIFFLIN].[dbo].[funcionarios])

SELECT
    MaritalStatus AS estado_civil,
    COUNT(*) AS qtd_funcionarios,
    FORMAT((COUNT(*) * 100 / @total_funcionarios), 'N2')
FROM
    [DUNDER_MIFFLIN].[dbo].[funcionarios]
GROUP BY
    MaritalStatus
ORDER BY
    COUNT(*) DESC