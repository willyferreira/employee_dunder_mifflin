
SELECT 
    Branch AS 'filial',
    COUNT(EmployeeID) AS 'qtd_funcionarios'
FROM 
    [DUNDER_MIFFLIN].[dbo].[employee]
GROUP BY
    Branch
ORDER BY
    COUNT(EmployeeID) DESC
