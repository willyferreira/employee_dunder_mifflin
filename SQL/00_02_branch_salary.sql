---------------------------- Verificação do range de salários
-- SELECT
--     MIN(Salary) AS Salario_Min,
--     ROUND(AVG(Salary), 2) AS Salario_Med,
--     MAX(Salary) AS Salario_Max
-- FROM [PORTIFOLIO].[dbo].[employee]

-- FROM [PORTIFOLIO].[dunder_mifflin].[employee]

---------------------------- Identificação da quantidade de registros distintos
------------------------------para mensurar as faixas salariais
-- SELECT
--     DISTINCT Salary,
--     COUNT(*) AS qtd_funcionarios
-- FROM [PORTIFOLIO].[dbo].[employee]

-- -- FROM [PORTIFOLIO].[dunder_mifflin].[employee]

-- GROUP BY Salary
-- ORDER BY Salary
------------------------------------------------------------------------------
IF OBJECT_ID('tempDB..#dm_salary', 'U') IS NOT NULL DROP TABLE #dm_salary;
SELECT
    EmployeeID,
    Salary,
    CASE
        WHEN Salary < 50000 THEN 'Até 49.999'
        WHEN Salary >= 50000 AND Salary < 55000 THEN 'Entre 50.000 e 54.999'
        WHEN Salary >= 55000 AND Salary < 60000 THEN 'Entre 55.000 e 59.999'
        WHEN Salary >= 60000 AND Salary < 65000 THEN 'Entre 60.000 e 64.999'
        WHEN Salary >= 65000 AND Salary < 70000 THEN 'Entre 65.000 e 69.999'
        WHEN Salary >= 70000 AND Salary < 75000 THEN 'Entre 70.000 e 74.999'
        WHEN Salary >= 75000 AND Salary < 80000 THEN 'Entre 75.000 e 79.999'
        WHEN Salary >= 80000 THEN 'Igual ou acima de 80.000'
        ELSE 'Salário não registrado'
    END AS faixa_salarial
INTO #dm_salary
FROM [PORTIFOLIO].[dbo].[employee]
--FROM [PORTIFOLIO].[dunder_mifflin].[employee])

DECLARE @total_funcionarios FLOAT = (SELECT COUNT(*)
--FROM [PORTIFOLIO].[dunder_mifflin].[employee])
FROM [PORTIFOLIO].[dbo].[employee])

SELECT
    t.faixa_salarial,
    COUNT(e.EmployeeID) AS qtd_funcionarios,
    FORMAT(((COUNT(e.EmployeeID) / @total_funcionarios) * 100), 'N2') AS '%_do_total'
FROM #dm_salary AS t
    --LEFT JOIN [PORTIFOLIO].[dunder_mifflin].[employee] AS e ON e.EmployeeID = t.EmployeeID
    LEFT JOIN [PORTIFOLIO].[dbo].[employee] AS e ON e.EmployeeID = t.EmployeeID
GROUP BY t.faixa_salarial
ORDER BY COUNT(e.EmployeeID) DESC