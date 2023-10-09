-- Quantidade de funcionários por departamento
SELECT 
    Department AS 'departamento',
    COUNT(EmployeeID) AS 'qtd_funcionarios'
FROM 
    [DUNDER_MIFFLIN].[dbo].[employee]
GROUP BY
    Department
ORDER BY
    COUNT(EmployeeID) DESC