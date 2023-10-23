---------------------------- Verificação do range de tempo 
-- SELECT
--     MIN(Tenure) AS minimo,
--     AVG(Tenure) AS media,
--     MAX(Tenure) AS maximo
-- FROM
--     [PORTIFOLIO].[dunder_mifflin].[employee]
---------------------------- Identificação da quantidade de registros distintos
------------------------------para mensurar as faixas de tempo 
-- SELECT
--     DISTINCT Tenure,
--     COUNT(*) AS qtd_funcionarios
-- FROM
--     [PORTIFOLIO].[dunder_mifflin].[employee]
-- GROUP BY
--     Tenure
-- ORDER BY
--     Tenure

-- Criação de tabela temporária com as faixas da variável Tenure
IF OBJECT_ID('tempDB..#dm_tenure', 'U') IS NOT NULL DROP TABLE #dm_tenure;
SELECT
    EmployeeID,
    Tenure,
    CASE
        WHEN Tenure < 1 THEN 'Menos de 1 ano'
        WHEN Tenure >= 1 AND Tenure <= 2 THEN 'Entre 1 e 2 anos'
        WHEN Tenure >= 3 AND Tenure <= 5 THEN 'Entre 3 e 5 anos'
        WHEN Tenure >= 6 AND Tenure <= 10 THEN 'Entre 6 e 10 anos'
        WHEN Tenure >= 11 AND Tenure <= 15 THEN 'Entre 11 e 15 anos'
        WHEN Tenure > 15 THEN 'Mais de 15 anos'
        ELSE 'Não identificado'
    END AS tempo_funcionario_faixa
INTO #dm_tenure
FROM [PORTIFOLIO].[dunder_mifflin].[employee]
ORDER BY EmployeeID

DECLARE @total_funcionarios FLOAT = (SELECT COUNT(*)
FROM [PORTIFOLIO].[dunder_mifflin].[employee])


SELECT
    t.tempo_funcionario_faixa,
    COUNT(e.EmployeeID) AS qtd_funcionarios,
    FORMAT(((COUNT(e.EmployeeID) / @total_funcionarios) * 100), 'N2') AS '%_do_total'
FROM #dm_tenure AS t
    LEFT JOIN [PORTIFOLIO].[dunder_mifflin].[employee] AS e ON e.EmployeeID = t.EmployeeID
GROUP BY t.tempo_funcionario_faixa
ORDER BY COUNT(e.EmployeeID) DESC