DECLARE @total_funcionarios FLOAT = (SELECT COUNT(*) FROM [PORTIFOLIO].[dunder_mifflin].[employee])
SELECT 
    Branch AS filial, 
    COUNT(*) AS qtd_funcionarios,
    FORMAT((COUNT(*) * 100 / @total_funcionarios), 'N2') AS '%_do_total'
FROM [PORTIFOLIO].[dunder_mifflin].[employee]
GROUP BY Branch
ORDER BY COUNT(*) DESC
