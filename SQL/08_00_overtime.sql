DECLARE @total_funcionarios FLOAT = (SELECT COUNT(*) FROM [PORTIFOLIO].[dunder_mifflin].[employee])

SELECT
    IIF(OverTime IS NOT NULL, 'Sim', 'Não') AS hora_extra,
    COUNT(*) AS qtd_funcionarios,
    FORMAT(((COUNT(*) / @total_funcionarios) * 100), 'N2') AS '%_do_total'
FROM
    [PORTIFOLIO].[dunder_mifflin].[employee]
GROUP BY
    OverTime
ORDER BY
    COUNT(*) DESC