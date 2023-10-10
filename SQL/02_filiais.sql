-- Quantidade de funcionários por filial da empresa
SELECT 
    Branch AS 'filial',
    COUNT(EmployeeID) AS 'qtd_funcionarios'
FROM 
    [DUNDER_MIFFLIN].[dbo].[funcionarios]
GROUP BY
    Branch
ORDER BY
    COUNT(EmployeeID) DESC