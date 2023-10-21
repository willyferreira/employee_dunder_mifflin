
DECLARE @total_funcionarios FLOAT = (SELECT COUNT(*)
FROM [PORTIFOLIO].[dunder_mifflin].[employee])
-- Quantidade de funcionários por filial da empresa
SELECT
    --TOP 5
    Branch AS filial,
    COUNT(EmployeeID) AS qtd_funcionarios,
    FORMAT((COUNT(EmployeeID) * 100 / @total_funcionarios), 'N2') AS '%_do_total'
--FORMAT((COUNT(EmployeeID) * 100 / @total_funcionarios_not_null_branch), 'N2') AS '%_do_total_not_null'
FROM
    [PORTIFOLIO].[dunder_mifflin].[employee]
GROUP BY
    Branch
ORDER BY
    COUNT(EmployeeID) DESC